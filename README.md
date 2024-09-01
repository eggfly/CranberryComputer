# SoundComputer
A RPI based QWERTY multimedia computer.

```
wlr-randr --output "DPI-1" --scale 1.0
```


```
xrandr --output "DPI-1" --scale 1.0
```

```
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_cur_freq
```

```
$ pinctrl  get
 0: a2    -- | hi // ID_SDA/GPIO0 = PCLK
 1: a2    -- | hi // ID_SCL/GPIO1 = DE
 2: a2    -- | hi // GPIO2 = LCD_VSYNC
 3: a2    -- | hi // GPIO3 = LCD_HSYNC
 4: a2    -- | hi // GPIO4 = DPI_D0
 5: a2    -- | hi // GPIO5 = DPI_D1
 6: a2    -- | lo // GPIO6 = DPI_D2
 7: a2    -- | hi // GPIO7 = DPI_D3
 8: a2    -- | hi // GPIO8 = DPI_D4
 9: a2    -- | lo // GPIO9 = DPI_D5
10: ip    -- | lo // GPIO10 = input
11: ip    -- | lo // GPIO11 = input
12: a2    -- | lo // GPIO12 = DPI_D8
13: a2    -- | hi // GPIO13 = DPI_D9
14: a2    -- | hi // GPIO14 = DPI_D10
15: a2    -- | hi // GPIO15 = DPI_D11
16: a2    -- | hi // GPIO16 = DPI_D12
17: a2    -- | lo // GPIO17 = DPI_D13
18: op -- -- | hi // GPIO18 = output
19: ip    -- | lo // GPIO19 = input
20: a2    -- | lo // GPIO20 = DPI_D16
21: a2    -- | hi // GPIO21 = DPI_D17
22: a2    -- | lo // GPIO22 = DPI_D18
23: a2    -- | lo // GPIO23 = DPI_D19
24: a2    -- | lo // GPIO24 = DPI_D20
25: a2    -- | lo // GPIO25 = DPI_D21
26: ip    -- | lo // GPIO26 = input
27: ip    -- | lo // GPIO27 = input
28: ip    -- | hi // HDMI_HPD_N/GPIO28 = input
29: op -- -- | lo // STATUS_LED_N/GPIO29 = output
30: a3    -- | lo // CTS0/GPIO30 = CTS0
31: a3    -- | lo // RTS0/GPIO31 = RTS0
32: a3    -- | hi // TXD0/GPIO32 = TXD0
33: a3    -- | hi // RXD0/GPIO33 = RXD0
34: a3    -- | lo // SD1_CLK/GPIO34 = SD1_CLK
35: a3    -- | hi // SD1_CMD/GPIO35 = SD1_CMD
36: a3    -- | hi // SD1_DATA0/GPIO36 = SD1_DAT0
37: a3    -- | hi // SD1_DATA1/GPIO37 = SD1_DAT1
38: a3    -- | hi // SD1_DATA2/GPIO38 = SD1_DAT2
39: a3    -- | hi // SD1_DATA3/GPIO39 = SD1_DAT3
40: op -- -- | lo // CAM_GPIO1/GPIO40 = output
41: op -- -- | hi // WL_ON/GPIO41 = output
42: op -- -- | hi // BT_ON/GPIO42 = output
43: a0    -- | hi // WIFI_CLK/GPIO43 = GPCLK2
44: ip    -- | hi // SDA0/GPIO44 = input
45: ip    -- | hi // SCL0/GPIO45 = input
46: ip    -- | hi // SMPS_SCL/GPIO46 = input
47: op -- -- | hi // SMPS_SDA/GPIO47 = output
48: a0    -- | lo // SD_CLK_R/GPIO48 = SD0_CLK
49: a0    -- | hi // SD_CMD_R/GPIO49 = SD0_CMD
50: a0    -- | hi // SD_DATA0_R/GPIO50 = SD0_DAT0
51: a0    -- | hi // SD_DATA1_R/GPIO51 = SD0_DAT1
52: a0    -- | hi // SD_DATA2_R/GPIO52 = SD0_DAT2
53: a0    -- | hi // SD_DATA3_R/GPIO53 = SD0_DAT3
```
```
$ i2cdetect -l
i2c-2	i2c       	bcm2835 (i2c@7e805000)          	I2C adapter
i2c-11	i2c       	i2c@0                           	I2C adapter
```
