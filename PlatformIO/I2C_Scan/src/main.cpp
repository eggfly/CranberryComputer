

#include "esp_err.h"

#include "esp_partition.h"
#include "esp_log.h"
#include <app.h>
#include <Arduino.h>

static const char *TAG = "main";

void setup_i2c();

void setup()
{
  setup_i2c();
}

void loop(void)
{
  delay(5000);
  Serial.println("\n\n");
}
