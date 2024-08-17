#include <Arduino.h>

#include <Arduino_GFX_Library.h>

#include "lcd_init_cmds.h"

#define AUTO_FLUSH false

// option 5:
// Uncomment for 3.5" display
Arduino_DataBus *bus = new Arduino_SWSPI(
    GFX_NOT_DEFINED /* DC */, 39 /* CS */,
    48 /* SCK */, 47 /* MOSI */, GFX_NOT_DEFINED /* MISO */);

Arduino_ESP32RGBPanel *rgbpanel = new Arduino_ESP32RGBPanel(
    18 /* DE */, 17 /* VSYNC */, 16 /* HSYNC */, 21 /* PCLK */,
    4 /* R0 */, 3 /* R1 */, 2 /* R2 */, 1 /* R3 */, 0 /* R4 */,
    10 /* G0 */, 9 /* G1 */, 8 /* G2 */, 7 /* G3 */, 6 /* G4 */, 5 /* G5 */,
    15 /* B0 */, 14 /* B1 */, 13 /* B2 */, 12 /* B3 */, 11 /* B4 */,
    1 /* hsync_polarity */, 20 /* hsync_front_porch */, 30 /* hsync_pulse_width */, 38 /* hsync_back_porch */,
    1 /* vsync_polarity */, 4 /* vsync_front_porch */, 3 /* vsync_pulse_width */, 15 /* vsync_back_porch */,
    10, 16000000);
    // Arduino_ESP32RGBPanel *rgbpanel = new Arduino_ESP32RGBPanel(  
    // 18 /* DE */, 17 /* VSYNC */, 16 /* HSYNC */, 21 /* PCLK */,  
    // 4 /* R0 */, 3 /* R1 */, 2 /* R2 */, 1 /* R3 */, 0 /* R4 */,  
    // 10 /* G0 */, 9 /* G1 */, 8 /* G2 */, 7 /* G3 */, 6 /* G4 */, 5 /* G5 */,  
    // 15 /* B0 */, 14 /* B1 */, 13 /* B2 */, 12 /* B3 */, 11 /* B4 */,  
    // 0 /* hsync_polarity */, 65 /* hsync_front_porch */, 30 /* hsync_pulse_width */, 65 /* hsync_back_porch */,  
    // 0 /* vsync_polarity */, 25 /* vsync_front_porch */, 10 /* vsync_pulse_width */, 25 /* vsync_back_porch */,  
    // 10, 26000000);  // 使用26 MHz时钟频率 
Arduino_RGB_Display *gfx = new Arduino_RGB_Display(
    640 /* width */, 480 /* height */, rgbpanel, 1 /* rotation */, AUTO_FLUSH /* auto_flush */,
    bus, 38 /* RST */, st7701_my_init_operations, sizeof(st7701_my_init_operations));
// or st7701_type1_init_operations
// put function declarations here:
int myFunction(int, int);

void setup()
{
  Serial.begin(115200);
  // put your setup code here, to run once:
  int result = myFunction(2, 3);

#ifdef GFX_EXTRA_PRE_INIT
  // GFX_EXTRA_PRE_INIT();
#endif

  // Init Display
  if (!gfx->begin())
  {
    Serial.println("gfx->begin() failed!");
  }
  gfx->fillScreen(BLACK);

#ifdef GFX_BL
  pinMode(GFX_BL, OUTPUT);
  digitalWrite(GFX_BL, HIGH);
#endif

  gfx->setCursor(10, 10);
  gfx->setTextColor(RED);
  gfx->println("Hello World!");

  delay(2000); // 2 seconds
  auto found = psramFound();
  Serial.printf("Hello World, psram_size=%d, psram_found=%d\n", ESP.getPsramSize(), found);
  Serial.println("Arduino_GFX Hello World example");
  gfx->fillScreen(WHITE);
  gfx->flush();
}

// put function definitions here:
int myFunction(int x, int y)
{
  return x + y;
}

void loop()
{
  gfx->setCursor(random(gfx->width()), random(gfx->height()));
  // gfx->setCursor(0, gfx->height() / 2);
  gfx->setTextColor(random(0xffff), random(0xffff));
  gfx->setTextSize(random(6) /* x scale */, random(6) /* y scale */, random(2) /* pixel_margin */);
  // gfx->setTextSize(16, 16, 2);
  gfx->println("Hello World!");
  gfx->flush();
  // Serial.println("Hello World!");
  // delay(1000); // 1 second
}
