;-------------------------------------------------------------------------------
.area FLASH (ABS, CSEG)
;-------------------------------------------------------------------------------
.org 0x008000
            int   0x00808A                         ;0x008000,    82 00 80 8A    
            int   0x0087EF                         ;0x008004,    82 00 87 EF    
            int   0x0087EF                         ;0x008008,    82 00 87 EF    
            int   0x0087EF                         ;0x00800C,    82 00 87 EF    
            int   0x0087EF                         ;0x008010,    82 00 87 EF    
            int   0x0087EF                         ;0x008014,    82 00 87 EF    
            int   0x0087EF                         ;0x008018,    82 00 87 EF    
            int   0x0087EF                         ;0x00801C,    82 00 87 EF    
            int   0x0087EF                         ;0x008020,    82 00 87 EF    
            int   0x0087EF                         ;0x008024,    82 00 87 EF    
            int   0x0087EF                         ;0x008028,    82 00 87 EF    
            int   0x0087EF                         ;0x00802C,    82 00 87 EF    
            int   0x0087EF                         ;0x008030,    82 00 87 EF    
            int   0x0087EF                         ;0x008034,    82 00 87 EF    
            int   0x0087EF                         ;0x008038,    82 00 87 EF    
            int   0x0080D5                         ;0x00803C,    82 00 80 D5    // TIM2_init()
            int   0x0087EF                         ;0x008040,    82 00 87 EF    
            int   0x0087EF                         ;0x008044,    82 00 87 EF    
            int   0x0087EF                         ;0x008048,    82 00 87 EF    
            int   0x0087EF                         ;0x00804C,    82 00 87 EF    
            int   0x0087EF                         ;0x008050,    82 00 87 EF    
            int   0x0087EF                         ;0x008054,    82 00 87 EF    
            int   0x0087EF                         ;0x008058,    82 00 87 EF    
            int   0x0087EF                         ;0x00805C,    82 00 87 EF    
            int   0x0087EF                         ;0x008060,    82 00 87 EF    
            int   0x0087EF                         ;0x008064,    82 00 87 EF    
            int   0x0087EF                         ;0x008068,    82 00 87 EF    
            int   0x0087EF                         ;0x00806C,    82 00 87 EF    
            int   0x0087EF                         ;0x008070,    82 00 87 EF    
            int   0x0087EF                         ;0x008074,    82 00 87 EF    
            int   0x0087EF                         ;0x008078,    82 00 87 EF    
            int   0x0087EF                         ;0x00807C,    82 00 87 EF    
            iret                                   ;0x008080,    80             
            push  A                                ;0x008081,    88             
            div   X, A                             ;0x008082,    62             
            neg   (0x00,SP)                        ;0x008083,    00 00          
            iret                                   ;0x008085,    80             
            push  CC                               ;0x008086,    8A             
            neg   (0x00,SP)                        ;0x008087,    00 00          
            neg   (0xAE,SP)                        ;0x008089,    00 AE          
            cpl   (0xFF,SP)                        ;0x00808B,    03 FF          
            ldw   SP, X                            ;0x00808D,    94             
            ldw   Y, 0x8080                        ;0x00808E, 90 CE 80 80       
            ldw   X, #0x8082                       ;0x008092,    AE 80 82       
            ld    A, (X)                           ;0x008095,    F6             
            jreq  .+32  ;(0x0080B8)                ;0x008096,    27 20          
            bcp   A, #0x60                         ;0x008098,    A5 60          
            jreq  .+23  ;(0x0080B3)                ;0x00809A,    27 17          
            ldw   0x02, X                          ;0x00809C,    BF 02          
            ldw   X, (0x03,X)                      ;0x00809E,    EE 03          
            ldw   0x05, X                          ;0x0080A0,    BF 05          
            ldw   X, 0x02                          ;0x0080A2,    BE 02          
            ldw   X, (0x01,X)                      ;0x0080A4,    EE 01          
            ld    A, (Y)                           ;0x0080A6, 90 F6             
            ld    (X), A                           ;0x0080A8,    F7             
            incw  X                                ;0x0080A9,    5C             
            incw  Y                                ;0x0080AA, 90 5C             
            cpw   Y, 0x05                          ;0x0080AC, 90 B3 05          
            jrne  .-11  ;(0x0080A6)                ;0x0080AF,    26 F5          
            ldw   X, 0x02                          ;0x0080B1,    BE 02          
            addw  X, #0x0005                       ;0x0080B3,    1C 00 05       
            jra   .-35  ;(0x008095)                ;0x0080B6,    20 DD          
            ldw   X, #0x0002                       ;0x0080B8,    AE 00 02       
            jra   .+2   ;(0x0080BF)                ;0x0080BB,    20 02          
            ld    (X), A                           ;0x0080BD,    F7             
            incw  X                                ;0x0080BE,    5C             
            cpw   X, #0x0008                       ;0x0080BF,    A3 00 08       
            jrne  .-7   ;(0x0080BD)                ;0x0080C2,    26 F9          
            ldw   X, #0x0100                       ;0x0080C4,    AE 01 00       
            jra   .+2   ;(0x0080CB)                ;0x0080C7,    20 02          
            ld    (X), A                           ;0x0080C9,    F7             
            incw  X                                ;0x0080CA,    5C             
            cpw   X, #0x0100                       ;0x0080CB,    A3 01 00       
            jrne  .-7   ;(0x0080C9)                ;0x0080CE,    26 F9          
            call  0x87A9                           ;0x0080D0,    CD 87 A9       
            jra   .-2   ;(0x0080D3)                ;0x0080D3,    20 FE          
            clr   0x5304                           ;0x0080D5, 72 5F 53 04       //  TIM2 status register 1: 0x00
            ldw   X, 0x00                          ;0x0080D9,    BE 00          
            addw  X, #0x0001                       ;0x0080DB,    1C 00 01       
            ldw   0x00, X                          ;0x0080DE,    BF 00          
            iret                                   ;0x0080E0,    80             // iret 中断短程返回
            mov   0x530C, #0x03                    ;0x0080E1,    35 03 53 0C    // Start of TIM2_init(), TIM2 counter high byte: 0x03
            mov   0x530D, #0x88                    ;0x0080E5,    35 88 53 0D    // TIM2 counter low byte: 0x88
            mov   0x530F, #0x03                    ;0x0080E9,    35 03 53 0F    // TIM2 auto-reload register high byte: 0x03
            mov   0x5310, #0x88                    ;0x0080ED,    35 88 53 10    // TIM2 auto-reload register low byte: 0x88
            clr   0x530E                           ;0x0080F1, 72 5F 53 0E       // TIM2 prescaler register: 0x00
            mov   0x5300, #0x01                    ;0x0080F5,    35 01 53 00    // TIM2 control register 1: 0x01
            mov   0x5306, #0x01                    ;0x0080F9,    35 01 53 06    // TIM2 event generation register high byte: 0x01
            mov   0x5303, #0x01                    ;0x0080FD,    35 01 53 03    // TIM2 interrupt enable register high byte: 0x01
            ret                                    ;0x008101,    81             // end of TIM2_init()
            push  A                                ;0x008102,    88             // Start of 
            ld    A, (0x01,SP)                     ;0x008103,    7B 01          
            dec   (0x01,SP)                        ;0x008105,    0A 01          
            tnz   A                                ;0x008107,    4D             
            jrne  .-7   ;(0x008103)                ;0x008108,    26 F9          
            pop   A                                ;0x00810A,    84             
            ret                                    ;0x00810B,    81             
            sub   SP, #0x04                        ;0x00810C,    52 04          // 软件延迟
            ldw   (0x01,SP), X                     ;0x00810E,    1F 01          
            jra   .+23  ;(0x008129)                ;0x008110,    20 17          
            ldw   X, #0x03E8                       ;0x008112,    AE 03 E8       // 等待大约由常量0x03E8（内循环）和外循环中设置的减量数确定的时间间隔的方法
            ldw   (0x03,SP), X                     ;0x008115,    1F 03          
            ldw   X, (0x03,SP)                     ;0x008117,    1E 03          
            subw  X, #0x0001                       ;0x008119,    1D 00 01       
            ldw   (0x03,SP), X                     ;0x00811C,    1F 03          
            ldw   X, (0x03,SP)                     ;0x00811E,    1E 03          
            jrne  .-11  ;(0x008117)                ;0x008120,    26 F5          
            ldw   X, (0x01,SP)                     ;0x008122,    1E 01          
            subw  X, #0x0001                       ;0x008124,    1D 00 01       
            ldw   (0x01,SP), X                     ;0x008127,    1F 01          
            ldw   X, (0x01,SP)                     ;0x008129,    1E 01          
            jrne  .-27  ;(0x008112)                ;0x00812B,    26 E5          
            add   SP, #0x04                        ;0x00812D,    5B 04          
            ret                                    ;0x00812F,    81             
            bset  0x5002, #1                       ;0x008130, 72 12 50 02       // set PA1 as output (SCL)
            bset  0x5003, #1                       ;0x008134, 72 12 50 03       // set PA1 pull-up/down?
            clr   0x5004                           ;0x008138, 72 5F 50 04       
            ld    A, 0x5011                        ;0x00813C,    C6 50 11       
            or    A, #0x30                         ;0x00813F,    AA 30          // 0b110000, 4 & 5 set (PD4 & PD5)
            ld    0x5011, A                        ;0x008141,    C7 50 11       
            ld    A, 0x5012                        ;0x008144,    C6 50 12       
            or    A, #0x30                         ;0x008147,    AA 30          // 0b110000, 4 & 5 set (PD4 & PD5)
            ld    0x5012, A                        ;0x008149,    C7 50 12       
            clr   0x5013                           ;0x00814C, 72 5F 50 13       
            bres  0x500C, #3                       ;0x008150, 72 17 50 0C       // set PC3 as input (VSYNC)
            bres  0x500D, #3                       ;0x008154, 72 17 50 0D       
            bres  0x500E, #3                       ;0x008158, 72 17 50 0E       
            bset  0x5011, #3                       ;0x00815C, 72 16 50 11       // set PD3?? as output??, but 0x5010 never used
            bset  0x5012, #3                       ;0x008160, 72 16 50 12       
            bres  0x5013, #3                       ;0x008164, 72 17 50 13       
            ret                                    ;0x008168,    81             
            clrw  X                                ;0x008169,    5F             // Start of CHECK_PC3_VSYNC_STATE()
            ldw   0x00, X                          ;0x00816A,    BF 00          
            ld    A, 0x500B                        ;0x00816C,    C6 50 0B       // PortC input values
            bcp   A, #0x08                         ;0x00816F,    A5 08          // PortC bit 3 set?
            jreq  .+7   ;(0x00817A)                ;0x008171,    27 07          
            ldw   X, 0x00                          ;0x008173,    BE 00          
            cpw   X, #0x0096                       ;0x008175,    A3 00 96       
            jrc   .-14  ;(0x00816C)                ;0x008178,    25 F2          
            ldw   X, 0x00                          ;0x00817A,    BE 00          
            cpw   X, #0x008C                       ;0x00817C,    A3 00 8C       
            jrnc  .+55  ;(0x0081B8)                ;0x00817F,    24 37          
            clrw  X                                ;0x008181,    5F             
            ldw   0x00, X                          ;0x008182,    BF 00          
            ld    A, 0x500B                        ;0x008184,    C6 50 0B       // PortC input values
            bcp   A, #0x08                         ;0x008187,    A5 08          // PortC bit 3 set?
            jrne  .+7   ;(0x008192)                ;0x008189,    26 07          // jrne 用于在结果不为 1 时进行跳转
            ldw   X, 0x00                          ;0x00818B,    BE 00          
            cpw   X, #0x0096                       ;0x00818D,    A3 00 96       
            jrc   .-14  ;(0x008184)                ;0x008190,    25 F2          
            ldw   X, 0x00                          ;0x008192,    BE 00          
            cpw   X, #0x008C                       ;0x008194,    A3 00 8C       
            jrnc  .+29  ;(0x0081B6)                ;0x008197,    24 1D          
            clrw  X                                ;0x008199,    5F             
            ldw   0x00, X                          ;0x00819A,    BF 00          
            ld    A, 0x500B                        ;0x00819C,    C6 50 0B       
            bcp   A, #0x08                         ;0x00819F,    A5 08          
            jreq  .+7   ;(0x0081AA)                ;0x0081A1,    27 07          
            ldw   X, 0x00                          ;0x0081A3,    BE 00          
            cpw   X, #0x0096                       ;0x0081A5,    A3 00 96       
            jrc   .-14  ;(0x00819C)                ;0x0081A8,    25 F2          
            ldw   X, 0x00                          ;0x0081AA,    BE 00          
            cpw   X, #0x008C                       ;0x0081AC,    A3 00 8C       
            jrnc  .+3   ;(0x0081B4)                ;0x0081AF,    24 03          
            ld    A, #0x01                         ;0x0081B1,    A6 01          
            ret                                    ;0x0081B3,    81             // End of CHECK_PC3_VSYNC_STATE()
            clr   A                                ;0x0081B4,    4F             
            ret                                    ;0x0081B5,    81             
            clr   A                                ;0x0081B6,    4F             
            ret                                    ;0x0081B7,    81             
            clr   A                                ;0x0081B8,    4F             
            ret                                    ;0x0081B9,    81             
            push  A                                ;0x0081BA,    88             // Start of SPI_SendData()
            push  A                                ;0x0081BB,    88             
            clr   (0x01,SP)                        ;0x0081BC,    0F 01          
            ld    A, (0x02,SP)                     ;0x0081BE,    7B 02          
            bcp   A, #0x80                         ;0x0081C0,    A5 80          
            jreq  .+6   ;(0x0081CA)                ;0x0081C2,    27 06          
            bset  0x500F, #4                       ;0x0081C4, 72 18 50 0F       
            jra   .+4   ;(0x0081CE)                ;0x0081C8,    20 04          
            bres  0x500F, #4                       ;0x0081CA, 72 19 50 0F       
            sll   (0x02,SP)                        ;0x0081CE,    08 02          
            bres  0x5000, #1                       ;0x0081D0, 72 13 50 00       // LCD_scl_low (PA1)
            ld    A, #0x64                         ;0x0081D4,    A6 64          // call delay(0x64) 300us
            call  0x8102                           ;0x0081D6,    CD 81 02       
            bset  0x5000, #1                       ;0x0081D9, 72 12 50 00       // LCD_scl_high (PA1)
            ld    A, #0x64                         ;0x0081DD,    A6 64          
            call  0x8102                           ;0x0081DF,    CD 81 02       
            inc   (0x01,SP)                        ;0x0081E2,    0C 01          
            ld    A, (0x01,SP)                     ;0x0081E4,    7B 01          
            cp    A, #0x08                         ;0x0081E6,    A1 08          
            jrc   .-44  ;(0x0081BE)                ;0x0081E8,    25 D4          
            popw  X                                ;0x0081EA,    85             
            ret                                    ;0x0081EB,    81             // End of SPI_SendData()
            pushw X                                ;0x0081EC,    89             // Start of SPI_WR_COMMAND()
            bres  0x500F, #5                       ;0x0081ED, 72 1B 50 0F       // LCD_cs_low (PD5)
            bres  0x500F, #4                       ;0x0081F1, 72 19 50 0F       // LCD_sda_low (PD4) for command(1)
            bres  0x5000, #1                       ;0x0081F5, 72 13 50 00       // LCD_scl_low (PA1)
            ld    A, #0x64                         ;0x0081F9,    A6 64          
            call  0x8102                           ;0x0081FB,    CD 81 02       
            bset  0x5000, #1                       ;0x0081FE, 72 12 50 00       
            ld    A, #0x64                         ;0x008202,    A6 64          
            call  0x8102                           ;0x008204,    CD 81 02       
            ld    A, (0x02,SP)                     ;0x008207,    7B 02          
            callr .-81  ;(0x0081BA)                ;0x008209,    AD AF          // call SPI_SendData
            bres  0x500F, #4                       ;0x00820B, 72 19 50 0F       // LCD_sda_low (PD4) for command(0)
            bset  0x500F, #5                       ;0x00820F, 72 1A 50 0F       // LCD_cs_high (PD5)
            popw  X                                ;0x008213,    85             
            ret                                    ;0x008214,    81             // End of SPI_WR_COMMAND()
            pushw X                                ;0x008215,    89             // Start of SPI_WR_DATA()
            bres  0x500F, #5                       ;0x008216, 72 1B 50 0F       // LCD_cs_low (PD5)
            bset  0x500F, #4                       ;0x00821A, 72 18 50 0F       // LCD_sda_high (PD4)
            bres  0x5000, #1                       ;0x00821E, 72 13 50 00       // LCD_scl_low (PA1)
            ld    A, #0x64                         ;0x008222,    A6 64          
            call  0x8102                           ;0x008224,    CD 81 02       
            bset  0x5000, #1                       ;0x008227, 72 12 50 00       
            ld    A, #0x64                         ;0x00822B,    A6 64          
            call  0x8102                           ;0x00822D,    CD 81 02       
            ld    A, (0x02,SP)                     ;0x008230,    7B 02          
            callr .-122 ;(0x0081BA)                ;0x008232,    AD 86          
            bres  0x500F, #4                       ;0x008234, 72 19 50 0F       // LCD_sda_low (PD4) for data(0)
            bset  0x500F, #5                       ;0x008238, 72 1A 50 0F       // LCD_cs_high (PD5)
            popw  X                                ;0x00823C,    85             
            ret                                    ;0x00823D,    81             // End of SPI_WR_DATA()
            bres  0x500F, #5                       ;0x00823E, 72 1B 50 0F       // Start of SEND_COMMANDS()
            ldw   X, #0x00FF                       ;0x008242,    AE 00 FF       
            callr .-91  ;(0x0081EC)                ;0x008245,    AD A5          // SPI_WR_COMMAND(0xFF)
            ldw   X, #0x0077                       ;0x008247,    AE 00 77       
            callr .-55  ;(0x008215)                ;0x00824A,    AD C9          // SPI_WR_DATA(0x77)
            ldw   X, #0x0001                       ;0x00824C,    AE 00 01       
            callr .-60  ;(0x008215)                ;0x00824F,    AD C4          
            clrw  X                                ;0x008251,    5F             
            callr .-63  ;(0x008215)                ;0x008252,    AD C1          
            clrw  X                                ;0x008254,    5F             
            callr .-66  ;(0x008215)                ;0x008255,    AD BE          
            ldw   X, #0x0013                       ;0x008257,    AE 00 13       
            callr .-71  ;(0x008215)                ;0x00825A,    AD B9          
            ldw   X, #0x00EF                       ;0x00825C,    AE 00 EF       
            callr .-117 ;(0x0081EC)                ;0x00825F,    AD 8B          
            ldw   X, #0x0008                       ;0x008261,    AE 00 08       
            callr .-81  ;(0x008215)                ;0x008264,    AD AF          
            ldw   X, #0x00FF                       ;0x008266,    AE 00 FF       
            callr .-127 ;(0x0081EC)                ;0x008269,    AD 81          
            ldw   X, #0x0077                       ;0x00826B,    AE 00 77       
            callr .-91  ;(0x008215)                ;0x00826E,    AD A5          
            ldw   X, #0x0001                       ;0x008270,    AE 00 01       
            callr .-96  ;(0x008215)                ;0x008273,    AD A0          
            clrw  X                                ;0x008275,    5F             
            callr .-99  ;(0x008215)                ;0x008276,    AD 9D          
            clrw  X                                ;0x008278,    5F             
            callr .-102 ;(0x008215)                ;0x008279,    AD 9A          
            ldw   X, #0x0010                       ;0x00827B,    AE 00 10       
            callr .-107 ;(0x008215)                ;0x00827E,    AD 95          
            ldw   X, #0x00C0                       ;0x008280,    AE 00 C0       
            call  0x81EC                           ;0x008283,    CD 81 EC       
            ldw   X, #0x004F                       ;0x008286,    AE 00 4F       
            callr .-118 ;(0x008215)                ;0x008289,    AD 8A          
            clrw  X                                ;0x00828B,    5F             
            callr .-121 ;(0x008215)                ;0x00828C,    AD 87          
            ldw   X, #0x00C1                       ;0x00828E,    AE 00 C1       
            call  0x81EC                           ;0x008291,    CD 81 EC       // SPI_WR_COMMAND(0xC1)
            ldw   X, #0x0010                       ;0x008294,    AE 00 10       
            call  0x8215                           ;0x008297,    CD 82 15       // SPI_WR_DATA(0x10)
            ldw   X, #0x0002                       ;0x00829A,    AE 00 02       
            call  0x8215                           ;0x00829D,    CD 82 15       // SPI_WR_DATA(0x02)
            ldw   X, #0x00C2                       ;0x0082A0,    AE 00 C2       
            call  0x81EC                           ;0x0082A3,    CD 81 EC       // SPI_WR_COMMAND(0xC2)
            ldw   X, #0x0007                       ;0x0082A6,    AE 00 07       
            call  0x8215                           ;0x0082A9,    CD 82 15       // SPI_WR_DATA(0x07)
            ldw   X, #0x0002                       ;0x0082AC,    AE 00 02       
            call  0x8215                           ;0x0082AF,    CD 82 15       // 省略...
            ldw   X, #0x00CC                       ;0x0082B2,    AE 00 CC       
            call  0x81EC                           ;0x0082B5,    CD 81 EC       
            ldw   X, #0x0010                       ;0x0082B8,    AE 00 10       
            call  0x8215                           ;0x0082BB,    CD 82 15       
            ldw   X, #0x003A                       ;0x0082BE,    AE 00 3A       
            call  0x81EC                           ;0x0082C1,    CD 81 EC       
            ldw   X, #0x0070                       ;0x0082C4,    AE 00 70       
            call  0x8215                           ;0x0082C7,    CD 82 15       
            ldw   X, #0x00B0                       ;0x0082CA,    AE 00 B0       
            call  0x81EC                           ;0x0082CD,    CD 81 EC       
            clrw  X                                ;0x0082D0,    5F             
            call  0x8215                           ;0x0082D1,    CD 82 15       
            ldw   X, #0x0010                       ;0x0082D4,    AE 00 10       
            call  0x8215                           ;0x0082D7,    CD 82 15       
            ldw   X, #0x0017                       ;0x0082DA,    AE 00 17       
            call  0x8215                           ;0x0082DD,    CD 82 15       
            ldw   X, #0x000D                       ;0x0082E0,    AE 00 0D       
            call  0x8215                           ;0x0082E3,    CD 82 15       
            ldw   X, #0x0011                       ;0x0082E6,    AE 00 11       
            call  0x8215                           ;0x0082E9,    CD 82 15       
            ldw   X, #0x0006                       ;0x0082EC,    AE 00 06       
            call  0x8215                           ;0x0082EF,    CD 82 15       
            ldw   X, #0x0005                       ;0x0082F2,    AE 00 05       
            call  0x8215                           ;0x0082F5,    CD 82 15       
            ldw   X, #0x0008                       ;0x0082F8,    AE 00 08       
            call  0x8215                           ;0x0082FB,    CD 82 15       
            ldw   X, #0x0007                       ;0x0082FE,    AE 00 07       
            call  0x8215                           ;0x008301,    CD 82 15       
            ldw   X, #0x001F                       ;0x008304,    AE 00 1F       
            call  0x8215                           ;0x008307,    CD 82 15       
            ldw   X, #0x0004                       ;0x00830A,    AE 00 04       
            call  0x8215                           ;0x00830D,    CD 82 15       
            ldw   X, #0x0011                       ;0x008310,    AE 00 11       
            call  0x8215                           ;0x008313,    CD 82 15       
            ldw   X, #0x000E                       ;0x008316,    AE 00 0E       
            call  0x8215                           ;0x008319,    CD 82 15       
            ldw   X, #0x0029                       ;0x00831C,    AE 00 29       
            call  0x8215                           ;0x00831F,    CD 82 15       
            ldw   X, #0x0030                       ;0x008322,    AE 00 30       
            call  0x8215                           ;0x008325,    CD 82 15       
            ldw   X, #0x001F                       ;0x008328,    AE 00 1F       
            call  0x8215                           ;0x00832B,    CD 82 15       
            ldw   X, #0x00B1                       ;0x00832E,    AE 00 B1       
            call  0x81EC                           ;0x008331,    CD 81 EC       
            clrw  X                                ;0x008334,    5F             
            call  0x8215                           ;0x008335,    CD 82 15       
            ldw   X, #0x000D                       ;0x008338,    AE 00 0D       
            call  0x8215                           ;0x00833B,    CD 82 15       
            ldw   X, #0x0014                       ;0x00833E,    AE 00 14       
            call  0x8215                           ;0x008341,    CD 82 15       
            ldw   X, #0x000E                       ;0x008344,    AE 00 0E       
            call  0x8215                           ;0x008347,    CD 82 15       
            ldw   X, #0x0011                       ;0x00834A,    AE 00 11       
            call  0x8215                           ;0x00834D,    CD 82 15       
            ldw   X, #0x0006                       ;0x008350,    AE 00 06       
            call  0x8215                           ;0x008353,    CD 82 15       
            ldw   X, #0x0004                       ;0x008356,    AE 00 04       
            call  0x8215                           ;0x008359,    CD 82 15       
            ldw   X, #0x0008                       ;0x00835C,    AE 00 08       
            call  0x8215                           ;0x00835F,    CD 82 15       
            ldw   X, #0x0008                       ;0x008362,    AE 00 08       
            call  0x8215                           ;0x008365,    CD 82 15       
            ldw   X, #0x0020                       ;0x008368,    AE 00 20       
            call  0x8215                           ;0x00836B,    CD 82 15       
            ldw   X, #0x0005                       ;0x00836E,    AE 00 05       
            call  0x8215                           ;0x008371,    CD 82 15       
            ldw   X, #0x0013                       ;0x008374,    AE 00 13       
            call  0x8215                           ;0x008377,    CD 82 15       
            ldw   X, #0x0013                       ;0x00837A,    AE 00 13       
            call  0x8215                           ;0x00837D,    CD 82 15       
            ldw   X, #0x0026                       ;0x008380,    AE 00 26       
            call  0x8215                           ;0x008383,    CD 82 15       
            ldw   X, #0x0030                       ;0x008386,    AE 00 30       
            call  0x8215                           ;0x008389,    CD 82 15       
            ldw   X, #0x001F                       ;0x00838C,    AE 00 1F       
            call  0x8215                           ;0x00838F,    CD 82 15       
            ldw   X, #0x00FF                       ;0x008392,    AE 00 FF       
            call  0x81EC                           ;0x008395,    CD 81 EC       
            ldw   X, #0x0077                       ;0x008398,    AE 00 77       
            call  0x8215                           ;0x00839B,    CD 82 15       
            ldw   X, #0x0001                       ;0x00839E,    AE 00 01       
            call  0x8215                           ;0x0083A1,    CD 82 15       
            clrw  X                                ;0x0083A4,    5F             
            call  0x8215                           ;0x0083A5,    CD 82 15       
            clrw  X                                ;0x0083A8,    5F             
            call  0x8215                           ;0x0083A9,    CD 82 15       
            ldw   X, #0x0011                       ;0x0083AC,    AE 00 11       
            call  0x8215                           ;0x0083AF,    CD 82 15       
            ldw   X, #0x00B0                       ;0x0083B2,    AE 00 B0       
            call  0x81EC                           ;0x0083B5,    CD 81 EC       
            ldw   X, #0x0065                       ;0x0083B8,    AE 00 65       
            call  0x8215                           ;0x0083BB,    CD 82 15       
            ldw   X, #0x00B1                       ;0x0083BE,    AE 00 B1       
            call  0x81EC                           ;0x0083C1,    CD 81 EC       
            ldw   X, #0x0082                       ;0x0083C4,    AE 00 82       
            call  0x8215                           ;0x0083C7,    CD 82 15       
            ldw   X, #0x00B2                       ;0x0083CA,    AE 00 B2       
            call  0x81EC                           ;0x0083CD,    CD 81 EC       
            ldw   X, #0x0082                       ;0x0083D0,    AE 00 82       
            call  0x8215                           ;0x0083D3,    CD 82 15       
            ldw   X, #0x00B3                       ;0x0083D6,    AE 00 B3       
            call  0x81EC                           ;0x0083D9,    CD 81 EC       
            ldw   X, #0x0080                       ;0x0083DC,    AE 00 80       
            call  0x8215                           ;0x0083DF,    CD 82 15       
            ldw   X, #0x00B5                       ;0x0083E2,    AE 00 B5       
            call  0x81EC                           ;0x0083E5,    CD 81 EC       
            ldw   X, #0x0042                       ;0x0083E8,    AE 00 42       
            call  0x8215                           ;0x0083EB,    CD 82 15       
            ldw   X, #0x00B7                       ;0x0083EE,    AE 00 B7       
            call  0x81EC                           ;0x0083F1,    CD 81 EC       
            ldw   X, #0x0085                       ;0x0083F4,    AE 00 85       
            call  0x8215                           ;0x0083F7,    CD 82 15       
            ldw   X, #0x00B8                       ;0x0083FA,    AE 00 B8       
            call  0x81EC                           ;0x0083FD,    CD 81 EC       
            ldw   X, #0x0020                       ;0x008400,    AE 00 20       
            call  0x8215                           ;0x008403,    CD 82 15       
            ldw   X, #0x00C1                       ;0x008406,    AE 00 C1       
            call  0x81EC                           ;0x008409,    CD 81 EC       
            ldw   X, #0x0078                       ;0x00840C,    AE 00 78       
            call  0x8215                           ;0x00840F,    CD 82 15       
            ldw   X, #0x00C2                       ;0x008412,    AE 00 C2       
            call  0x81EC                           ;0x008415,    CD 81 EC       
            ldw   X, #0x0078                       ;0x008418,    AE 00 78       
            call  0x8215                           ;0x00841B,    CD 82 15       
            ldw   X, #0x00D0                       ;0x00841E,    AE 00 D0       
            call  0x81EC                           ;0x008421,    CD 81 EC       
            ldw   X, #0x0088                       ;0x008424,    AE 00 88       
            call  0x8215                           ;0x008427,    CD 82 15       
            ldw   X, #0x00EE                       ;0x00842A,    AE 00 EE       
            call  0x81EC                           ;0x00842D,    CD 81 EC       
            ldw   X, #0x0042                       ;0x008430,    AE 00 42       
            call  0x8215                           ;0x008433,    CD 82 15       
            ldw   X, #0x00E0                       ;0x008436,    AE 00 E0       
            call  0x81EC                           ;0x008439,    CD 81 EC       
            clrw  X                                ;0x00843C,    5F             
            call  0x8215                           ;0x00843D,    CD 82 15       
            clrw  X                                ;0x008440,    5F             
            call  0x8215                           ;0x008441,    CD 82 15       
            ldw   X, #0x0002                       ;0x008444,    AE 00 02       
            call  0x8215                           ;0x008447,    CD 82 15       
            ldw   X, #0x00E1                       ;0x00844A,    AE 00 E1       
            call  0x81EC                           ;0x00844D,    CD 81 EC       
            ldw   X, #0x0004                       ;0x008450,    AE 00 04       
            call  0x8215                           ;0x008453,    CD 82 15       
            ldw   X, #0x00A0                       ;0x008456,    AE 00 A0       
            call  0x8215                           ;0x008459,    CD 82 15       
            ldw   X, #0x0006                       ;0x00845C,    AE 00 06       
            call  0x8215                           ;0x00845F,    CD 82 15       
            ldw   X, #0x00A0                       ;0x008462,    AE 00 A0       
            call  0x8215                           ;0x008465,    CD 82 15       
            ldw   X, #0x0005                       ;0x008468,    AE 00 05       
            call  0x8215                           ;0x00846B,    CD 82 15       
            ldw   X, #0x00A0                       ;0x00846E,    AE 00 A0       
            call  0x8215                           ;0x008471,    CD 82 15       
            ldw   X, #0x0007                       ;0x008474,    AE 00 07       
            call  0x8215                           ;0x008477,    CD 82 15       
            ldw   X, #0x00A0                       ;0x00847A,    AE 00 A0       
            call  0x8215                           ;0x00847D,    CD 82 15       
            clrw  X                                ;0x008480,    5F             
            call  0x8215                           ;0x008481,    CD 82 15       
            ldw   X, #0x0044                       ;0x008484,    AE 00 44       
            call  0x8215                           ;0x008487,    CD 82 15       
            ldw   X, #0x0044                       ;0x00848A,    AE 00 44       
            call  0x8215                           ;0x00848D,    CD 82 15       
            ldw   X, #0x00E2                       ;0x008490,    AE 00 E2       
            call  0x81EC                           ;0x008493,    CD 81 EC       
            clrw  X                                ;0x008496,    5F             
            call  0x8215                           ;0x008497,    CD 82 15       
            clrw  X                                ;0x00849A,    5F             
            call  0x8215                           ;0x00849B,    CD 82 15       
            clrw  X                                ;0x00849E,    5F             
            call  0x8215                           ;0x00849F,    CD 82 15       
            clrw  X                                ;0x0084A2,    5F             
            call  0x8215                           ;0x0084A3,    CD 82 15       
            clrw  X                                ;0x0084A6,    5F             
            call  0x8215                           ;0x0084A7,    CD 82 15       
            clrw  X                                ;0x0084AA,    5F             
            call  0x8215                           ;0x0084AB,    CD 82 15       
            clrw  X                                ;0x0084AE,    5F             
            call  0x8215                           ;0x0084AF,    CD 82 15       
            clrw  X                                ;0x0084B2,    5F             
            call  0x8215                           ;0x0084B3,    CD 82 15       
            clrw  X                                ;0x0084B6,    5F             
            call  0x8215                           ;0x0084B7,    CD 82 15       
            clrw  X                                ;0x0084BA,    5F             
            call  0x8215                           ;0x0084BB,    CD 82 15       
            clrw  X                                ;0x0084BE,    5F             
            call  0x8215                           ;0x0084BF,    CD 82 15       
            clrw  X                                ;0x0084C2,    5F             
            call  0x8215                           ;0x0084C3,    CD 82 15       
            ldw   X, #0x00E3                       ;0x0084C6,    AE 00 E3       
            call  0x81EC                           ;0x0084C9,    CD 81 EC       
            clrw  X                                ;0x0084CC,    5F             
            call  0x8215                           ;0x0084CD,    CD 82 15       
            clrw  X                                ;0x0084D0,    5F             
            call  0x8215                           ;0x0084D1,    CD 82 15       
            ldw   X, #0x0022                       ;0x0084D4,    AE 00 22       
            call  0x8215                           ;0x0084D7,    CD 82 15       
            ldw   X, #0x0022                       ;0x0084DA,    AE 00 22       
            call  0x8215                           ;0x0084DD,    CD 82 15       
            ldw   X, #0x00E4                       ;0x0084E0,    AE 00 E4       
            call  0x81EC                           ;0x0084E3,    CD 81 EC       
            ldw   X, #0x0044                       ;0x0084E6,    AE 00 44       
            call  0x8215                           ;0x0084E9,    CD 82 15       
            ldw   X, #0x0044                       ;0x0084EC,    AE 00 44       
            call  0x8215                           ;0x0084EF,    CD 82 15       
            ldw   X, #0x00E5                       ;0x0084F2,    AE 00 E5       
            call  0x81EC                           ;0x0084F5,    CD 81 EC       
            ldw   X, #0x000C                       ;0x0084F8,    AE 00 0C       
            call  0x8215                           ;0x0084FB,    CD 82 15       
            ldw   X, #0x0090                       ;0x0084FE,    AE 00 90       
            call  0x8215                           ;0x008501,    CD 82 15       
            ldw   X, #0x00A0                       ;0x008504,    AE 00 A0       
            call  0x8215                           ;0x008507,    CD 82 15       
            ldw   X, #0x00A0                       ;0x00850A,    AE 00 A0       
            call  0x8215                           ;0x00850D,    CD 82 15       
            ldw   X, #0x000E                       ;0x008510,    AE 00 0E       
            call  0x8215                           ;0x008513,    CD 82 15       
            ldw   X, #0x0092                       ;0x008516,    AE 00 92       
            call  0x8215                           ;0x008519,    CD 82 15       
            ldw   X, #0x00A0                       ;0x00851C,    AE 00 A0       
            call  0x8215                           ;0x00851F,    CD 82 15       
            ldw   X, #0x00A0                       ;0x008522,    AE 00 A0       
            call  0x8215                           ;0x008525,    CD 82 15       
            ldw   X, #0x0008                       ;0x008528,    AE 00 08       
            call  0x8215                           ;0x00852B,    CD 82 15       
            ldw   X, #0x008C                       ;0x00852E,    AE 00 8C       
            call  0x8215                           ;0x008531,    CD 82 15       
            ldw   X, #0x00A0                       ;0x008534,    AE 00 A0       
            call  0x8215                           ;0x008537,    CD 82 15       
            ldw   X, #0x00A0                       ;0x00853A,    AE 00 A0       
            call  0x8215                           ;0x00853D,    CD 82 15       
            ldw   X, #0x000A                       ;0x008540,    AE 00 0A       
            call  0x8215                           ;0x008543,    CD 82 15       
            ldw   X, #0x008E                       ;0x008546,    AE 00 8E       
            call  0x8215                           ;0x008549,    CD 82 15       
            ldw   X, #0x00A0                       ;0x00854C,    AE 00 A0       
            call  0x8215                           ;0x00854F,    CD 82 15       
            ldw   X, #0x00A0                       ;0x008552,    AE 00 A0       
            call  0x8215                           ;0x008555,    CD 82 15       
            ldw   X, #0x00E6                       ;0x008558,    AE 00 E6       
            call  0x81EC                           ;0x00855B,    CD 81 EC       
            clrw  X                                ;0x00855E,    5F             
            call  0x8215                           ;0x00855F,    CD 82 15       
            clrw  X                                ;0x008562,    5F             
            call  0x8215                           ;0x008563,    CD 82 15       
            ldw   X, #0x0022                       ;0x008566,    AE 00 22       
            call  0x8215                           ;0x008569,    CD 82 15       
            ldw   X, #0x0022                       ;0x00856C,    AE 00 22       
            call  0x8215                           ;0x00856F,    CD 82 15       
            ldw   X, #0x00E7                       ;0x008572,    AE 00 E7       
            call  0x81EC                           ;0x008575,    CD 81 EC       
            ldw   X, #0x0044                       ;0x008578,    AE 00 44       
            call  0x8215                           ;0x00857B,    CD 82 15       
            ldw   X, #0x0044                       ;0x00857E,    AE 00 44       
            call  0x8215                           ;0x008581,    CD 82 15       
            ldw   X, #0x00E8                       ;0x008584,    AE 00 E8       
            call  0x81EC                           ;0x008587,    CD 81 EC       
            ldw   X, #0x000D                       ;0x00858A,    AE 00 0D       
            call  0x8215                           ;0x00858D,    CD 82 15       
            ldw   X, #0x0091                       ;0x008590,    AE 00 91       
            call  0x8215                           ;0x008593,    CD 82 15       
            ldw   X, #0x00A0                       ;0x008596,    AE 00 A0       
            call  0x8215                           ;0x008599,    CD 82 15       
            ldw   X, #0x00A0                       ;0x00859C,    AE 00 A0       
            call  0x8215                           ;0x00859F,    CD 82 15       
            ldw   X, #0x000F                       ;0x0085A2,    AE 00 0F       
            call  0x8215                           ;0x0085A5,    CD 82 15       
            ldw   X, #0x0093                       ;0x0085A8,    AE 00 93       
            call  0x8215                           ;0x0085AB,    CD 82 15       
            ldw   X, #0x00A0                       ;0x0085AE,    AE 00 A0       
            call  0x8215                           ;0x0085B1,    CD 82 15       
            ldw   X, #0x00A0                       ;0x0085B4,    AE 00 A0       
            call  0x8215                           ;0x0085B7,    CD 82 15       
            ldw   X, #0x0009                       ;0x0085BA,    AE 00 09       
            call  0x8215                           ;0x0085BD,    CD 82 15       
            ldw   X, #0x008D                       ;0x0085C0,    AE 00 8D       
            call  0x8215                           ;0x0085C3,    CD 82 15       
            ldw   X, #0x00A0                       ;0x0085C6,    AE 00 A0       
            call  0x8215                           ;0x0085C9,    CD 82 15       
            ldw   X, #0x00A0                       ;0x0085CC,    AE 00 A0       
            call  0x8215                           ;0x0085CF,    CD 82 15       
            ldw   X, #0x000B                       ;0x0085D2,    AE 00 0B       
            call  0x8215                           ;0x0085D5,    CD 82 15       
            ldw   X, #0x008F                       ;0x0085D8,    AE 00 8F       
            call  0x8215                           ;0x0085DB,    CD 82 15       
            ldw   X, #0x00A0                       ;0x0085DE,    AE 00 A0       
            call  0x8215                           ;0x0085E1,    CD 82 15       
            ldw   X, #0x00A0                       ;0x0085E4,    AE 00 A0       
            call  0x8215                           ;0x0085E7,    CD 82 15       
            ldw   X, #0x00EB                       ;0x0085EA,    AE 00 EB       
            call  0x81EC                           ;0x0085ED,    CD 81 EC       
            clrw  X                                ;0x0085F0,    5F             
            call  0x8215                           ;0x0085F1,    CD 82 15       
            clrw  X                                ;0x0085F4,    5F             
            call  0x8215                           ;0x0085F5,    CD 82 15       
            ldw   X, #0x00E4                       ;0x0085F8,    AE 00 E4       
            call  0x8215                           ;0x0085FB,    CD 82 15       
            ldw   X, #0x00E4                       ;0x0085FE,    AE 00 E4       
            call  0x8215                           ;0x008601,    CD 82 15       
            ldw   X, #0x0044                       ;0x008604,    AE 00 44       
            call  0x8215                           ;0x008607,    CD 82 15       
            clrw  X                                ;0x00860A,    5F             
            call  0x8215                           ;0x00860B,    CD 82 15       
            ldw   X, #0x0040                       ;0x00860E,    AE 00 40       
            call  0x8215                           ;0x008611,    CD 82 15       
            ldw   X, #0x00ED                       ;0x008614,    AE 00 ED       
            call  0x81EC                           ;0x008617,    CD 81 EC       
            ldw   X, #0x00FF                       ;0x00861A,    AE 00 FF       
            call  0x8215                           ;0x00861D,    CD 82 15       
            ldw   X, #0x00F5                       ;0x008620,    AE 00 F5       
            call  0x8215                           ;0x008623,    CD 82 15       
            ldw   X, #0x0047                       ;0x008626,    AE 00 47       
            call  0x8215                           ;0x008629,    CD 82 15       
            ldw   X, #0x006F                       ;0x00862C,    AE 00 6F       
            call  0x8215                           ;0x00862F,    CD 82 15       
            ldw   X, #0x000B                       ;0x008632,    AE 00 0B       
            call  0x8215                           ;0x008635,    CD 82 15       
            ldw   X, #0x00A1                       ;0x008638,    AE 00 A1       
            call  0x8215                           ;0x00863B,    CD 82 15       
            ldw   X, #0x00AB                       ;0x00863E,    AE 00 AB       
            call  0x8215                           ;0x008641,    CD 82 15       
            ldw   X, #0x00FF                       ;0x008644,    AE 00 FF       
            call  0x8215                           ;0x008647,    CD 82 15       
            ldw   X, #0x00FF                       ;0x00864A,    AE 00 FF       
            call  0x8215                           ;0x00864D,    CD 82 15       
            ldw   X, #0x00BA                       ;0x008650,    AE 00 BA       
            call  0x8215                           ;0x008653,    CD 82 15       
            ldw   X, #0x001A                       ;0x008656,    AE 00 1A       
            call  0x8215                           ;0x008659,    CD 82 15       
            ldw   X, #0x00B0                       ;0x00865C,    AE 00 B0       
            call  0x8215                           ;0x00865F,    CD 82 15       
            ldw   X, #0x00F6                       ;0x008662,    AE 00 F6       
            call  0x8215                           ;0x008665,    CD 82 15       
            ldw   X, #0x0074                       ;0x008668,    AE 00 74       
            call  0x8215                           ;0x00866B,    CD 82 15       
            ldw   X, #0x005F                       ;0x00866E,    AE 00 5F       
            call  0x8215                           ;0x008671,    CD 82 15       
            ldw   X, #0x00FF                       ;0x008674,    AE 00 FF       
            call  0x8215                           ;0x008677,    CD 82 15       
            ldw   X, #0x00EF                       ;0x00867A,    AE 00 EF       
            call  0x81EC                           ;0x00867D,    CD 81 EC       
            ldw   X, #0x0008                       ;0x008680,    AE 00 08       
            call  0x8215                           ;0x008683,    CD 82 15       
            ldw   X, #0x0008                       ;0x008686,    AE 00 08       
            call  0x8215                           ;0x008689,    CD 82 15       
            ldw   X, #0x0008                       ;0x00868C,    AE 00 08       
            call  0x8215                           ;0x00868F,    CD 82 15       
            ldw   X, #0x0040                       ;0x008692,    AE 00 40       
            call  0x8215                           ;0x008695,    CD 82 15       
            ldw   X, #0x003F                       ;0x008698,    AE 00 3F       
            call  0x8215                           ;0x00869B,    CD 82 15       
            ldw   X, #0x0064                       ;0x00869E,    AE 00 64       
            call  0x8215                           ;0x0086A1,    CD 82 15       
            ldw   X, #0x00FF                       ;0x0086A4,    AE 00 FF       
            call  0x81EC                           ;0x0086A7,    CD 81 EC       
            ldw   X, #0x0077                       ;0x0086AA,    AE 00 77       
            call  0x8215                           ;0x0086AD,    CD 82 15       
            ldw   X, #0x0001                       ;0x0086B0,    AE 00 01       
            call  0x8215                           ;0x0086B3,    CD 82 15       
            clrw  X                                ;0x0086B6,    5F             
            call  0x8215                           ;0x0086B7,    CD 82 15       
            clrw  X                                ;0x0086BA,    5F             
            call  0x8215                           ;0x0086BB,    CD 82 15       
            clrw  X                                ;0x0086BE,    5F             
            call  0x8215                           ;0x0086BF,    CD 82 15       
            ldw   X, #0x00FF                       ;0x0086C2,    AE 00 FF       
            call  0x81EC                           ;0x0086C5,    CD 81 EC       
            ldw   X, #0x0077                       ;0x0086C8,    AE 00 77       
            call  0x8215                           ;0x0086CB,    CD 82 15       
            ldw   X, #0x0001                       ;0x0086CE,    AE 00 01       
            call  0x8215                           ;0x0086D1,    CD 82 15       
            clrw  X                                ;0x0086D4,    5F             
            call  0x8215                           ;0x0086D5,    CD 82 15       
            clrw  X                                ;0x0086D8,    5F             
            call  0x8215                           ;0x0086D9,    CD 82 15       
            ldw   X, #0x0013                       ;0x0086DC,    AE 00 13       
            call  0x8215                           ;0x0086DF,    CD 82 15       
            ldw   X, #0x00E6                       ;0x0086E2,    AE 00 E6       
            call  0x81EC                           ;0x0086E5,    CD 81 EC       
            ldw   X, #0x0016                       ;0x0086E8,    AE 00 16       
            call  0x8215                           ;0x0086EB,    CD 82 15       
            ldw   X, #0x007C                       ;0x0086EE,    AE 00 7C       
            call  0x8215                           ;0x0086F1,    CD 82 15       
            ldw   X, #0x00E8                       ;0x0086F4,    AE 00 E8       
            call  0x81EC                           ;0x0086F7,    CD 81 EC       
            clrw  X                                ;0x0086FA,    5F             
            call  0x8215                           ;0x0086FB,    CD 82 15       
            ldw   X, #0x000E                       ;0x0086FE,    AE 00 0E       
            call  0x8215                           ;0x008701,    CD 82 15       
            ldw   X, #0x00FF                       ;0x008704,    AE 00 FF       
            call  0x81EC                           ;0x008707,    CD 81 EC       
            ldw   X, #0x0077                       ;0x00870A,    AE 00 77       
            call  0x8215                           ;0x00870D,    CD 82 15       
            ldw   X, #0x0001                       ;0x008710,    AE 00 01       
            call  0x8215                           ;0x008713,    CD 82 15       
            clrw  X                                ;0x008716,    5F             
            call  0x8215                           ;0x008717,    CD 82 15       
            clrw  X                                ;0x00871A,    5F             
            call  0x8215                           ;0x00871B,    CD 82 15       
            clrw  X                                ;0x00871E,    5F             
            call  0x8215                           ;0x00871F,    CD 82 15       
            ldw   X, #0x0011                       ;0x008722,    AE 00 11       
            call  0x81EC                           ;0x008725,    CD 81 EC       
            ldw   X, #0x0078                       ;0x008728,    AE 00 78       
            call  0x810C                           ;0x00872B,    CD 81 0C       // delay(778.94ms)
            ldw   X, #0x00FF                       ;0x00872E,    AE 00 FF       // 开始第二段指令
            call  0x81EC                           ;0x008731,    CD 81 EC       
            ldw   X, #0x0077                       ;0x008734,    AE 00 77       
            call  0x8215                           ;0x008737,    CD 82 15       
            ldw   X, #0x0001                       ;0x00873A,    AE 00 01       
            call  0x8215                           ;0x00873D,    CD 82 15       
            clrw  X                                ;0x008740,    5F             
            call  0x8215                           ;0x008741,    CD 82 15       
            clrw  X                                ;0x008744,    5F             
            call  0x8215                           ;0x008745,    CD 82 15       
            ldw   X, #0x0013                       ;0x008748,    AE 00 13       
            call  0x8215                           ;0x00874B,    CD 82 15       
            ldw   X, #0x00E8                       ;0x00874E,    AE 00 E8       
            call  0x81EC                           ;0x008751,    CD 81 EC       
            clrw  X                                ;0x008754,    5F             
            call  0x8215                           ;0x008755,    CD 82 15       
            ldw   X, #0x000C                       ;0x008758,    AE 00 0C       
            call  0x8215                           ;0x00875B,    CD 82 15       
            ldw   X, #0x0078                       ;0x00875E,    AE 00 78       
            call  0x810C                           ;0x008761,    CD 81 0C       // delay(778.94ms)
            ldw   X, #0x00E8                       ;0x008764,    AE 00 E8       // 开始第三段指令
            call  0x81EC                           ;0x008767,    CD 81 EC       
            clrw  X                                ;0x00876A,    5F             
            call  0x8215                           ;0x00876B,    CD 82 15       
            clrw  X                                ;0x00876E,    5F             
            call  0x8215                           ;0x00876F,    CD 82 15       
            ldw   X, #0x00FF                       ;0x008772,    AE 00 FF       
            call  0x81EC                           ;0x008775,    CD 81 EC       
            ldw   X, #0x0077                       ;0x008778,    AE 00 77       
            call  0x8215                           ;0x00877B,    CD 82 15       
            ldw   X, #0x0001                       ;0x00877E,    AE 00 01       
            call  0x8215                           ;0x008781,    CD 82 15       
            clrw  X                                ;0x008784,    5F             
            call  0x8215                           ;0x008785,    CD 82 15       
            clrw  X                                ;0x008788,    5F             
            call  0x8215                           ;0x008789,    CD 82 15       
            clrw  X                                ;0x00878C,    5F             
            call  0x8215                           ;0x00878D,    CD 82 15       
            ldw   X, #0x0029                       ;0x008790,    AE 00 29       
            call  0x81EC                           ;0x008793,    CD 81 EC       
            ldw   X, #0x0035                       ;0x008796,    AE 00 35       
            call  0x81EC                           ;0x008799,    CD 81 EC       
            ldw   X, #0x0010                       ;0x00879C,    AE 00 10       
            call  0x8215                           ;0x00879F,    CD 82 15       
            ldw   X, #0x00C8                       ;0x0087A2,    AE 00 C8       
            call  0x810C                           ;0x0087A5,    CD 81 0C       // delay() and return
            ret                                    ;0x0087A8,    81             // END OF ??
            push  A                                ;0x0087A9,    88             
            clr   (0x01,SP)                        ;0x0087AA,    0F 01          
            call  0x8130                           ;0x0087AC,    CD 81 30       // call GPIO init?
            call  0x823E                           ;0x0087AF,    CD 82 3E       
            sim                                    ;0x0087B2,    9B             // disable interrupts
            call  0x80E1                           ;0x0087B3,    CD 80 E1       // call timer2 init?
            rim                                    ;0x0087B6,    9A             // enable interrupts
            call  0x8169                           ;0x0087B7,    CD 81 69       // call check PC3 VSYNC?
            cp    A, #0x01                         ;0x0087BA,    A1 01          
            jrne  .+24  ;(0x0087D6)                ;0x0087BC,    26 18          // jrne 用于在结果不为 1 时进行跳转
            tnz   (0x01,SP)                        ;0x0087BE,    0D 01          // test non-zero instruction， 测试位于堆栈顶部偏移 0x01 处的字节是否为非零
            jrne  .+20  ;(0x0087D6)                ;0x0087C0,    26 14          // 如果 Z 标志被清除（即内容非零），则跳转到对应位置 0x0087D6
            bres  0x500F, #3                       ;0x0087C2, 72 17 50 0F       // PD3 LOW
            ldw   X, #0x01F4                       ;0x0087C6,    AE 01 F4       // set delay time
            call  0x810C                           ;0x0087C9,    CD 81 0C       // delay(3245ms)
            bset  0x500F, #3                       ;0x0087CC, 72 16 50 0F       // PD3 HIGH, enable backlight
            ld    A, #0x01                         ;0x0087D0,    A6 01          
            ld    (0x01,SP), A                     ;0x0087D2,    6B 01          
            jra   .-31  ;(0x0087B7)                ;0x0087D4,    20 E1          
            call  0x8169                           ;0x0087D6,    CD 81 69       // call check PC3 VSYNC?
            cp    A, #0x01                         ;0x0087D9,    A1 01          
            jrne  .+12  ;(0x0087E9)                ;0x0087DB,    26 0C          
            ld    A, (0x01,SP)                     ;0x0087DD,    7B 01          
            cp    A, #0x01                         ;0x0087DF,    A1 01          
            jrne  .+6   ;(0x0087E9)                ;0x0087E1,    26 06          
            bset  0x500F, #3                       ;0x0087E3, 72 16 50 0F       // PD3 HIGH
            jra   .-50  ;(0x0087B7)                ;0x0087E7,    20 CE          
            bres  0x500F, #3                       ;0x0087E9, 72 17 50 0F       // PD3 LOW
            jra   .-56  ;(0x0087B7)                ;0x0087ED,    20 C8          
            iret                                   ;0x0087EF,    80             
