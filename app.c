/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
#include "em_i2c.h"
#include <stdio.h>
#include <time.h>
#include "em_gpio.h"
#include "em_cmu.h"
#include "sl_i2cspm.h"
#include "sl_si70xx.h"

#include "sl_status.h"
#include "sl_stdio.h"

// Defines
#define I2C_FOLLOWER_ADDRESS              0xE2
#define I2C_TXBUFFER_SIZE                 10
#define I2C_RXBUFFER_SIZE                 10

I2C_Init_TypeDef i2cInit = I2C_INIT_DEFAULT;



void my_sleep(unsigned duration)
{
    time_t start = time(NULL);
    double end = duration;
    time_t now;
    do {
        now = time(NULL);
    } while (difftime(now, start) < end);
}


static sl_i2cspm_t *sl_i2cspm_sensor;

void app_init(void)
{
  I2CSPM_Init_TypeDef i2cInit = {
    .port = I2C0,
    .sclPort = gpioPortA,
    .sdaPort = gpioPortA,
    .sclPin = 8,
    .sdaPin = 7,
    .i2cRefFreq = 0,
    .i2cMaxFreq = I2C_FREQ_STANDARD_MAX,
    .i2cClhr = i2cClockHLRStandard
  };

  I2CSPM_Init(&i2cInit);

  sl_i2cspm_sensor = I2C0;
  sl_status_t status = sl_si70xx_init(sl_i2cspm_sensor, SI7021_ADDR);

  if (status != SL_STATUS_OK) {
    while (1);
  }
}

void app_process_action(void)
{
    int32_t temp_data;
    uint32_t rh_data;

    sl_status_t status = sl_si70xx_measure_rh_and_temp(sl_i2cspm_sensor, SI7021_ADDR, &rh_data, &temp_data);

    if (status == SL_STATUS_OK) {
        printf("Raw Temp: %d, Raw Humidity: %u\n", temp_data, rh_data);

        float temperature = temp_data / 1000.0;
        float humidity = rh_data / 1000.0;

        printf("Temperature: %.2f C, Humidity: %.2f %%\n", temperature, humidity);
    } else {
        printf("Error reading sensor data\n");
    }
}

