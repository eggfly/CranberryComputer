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
            int   0x0080D5                         ;0x00803C,    82 00 80 D5    
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
            clr   0x5304                           ;0x0080D5, 72 5F 53 04       
            ldw   X, 0x00                          ;0x0080D9,    BE 00          
            addw  X, #0x0001                       ;0x0080DB,    1C 00 01       
            ldw   0x00, X                          ;0x0080DE,    BF 00          
            iret                                   ;0x0080E0,    80             
            mov   0x530C, #0x03                    ;0x0080E1,    35 03 53 0C    
            mov   0x530D, #0x88                    ;0x0080E5,    35 88 53 0D    
            mov   0x530F, #0x03                    ;0x0080E9,    35 03 53 0F    
            mov   0x5310, #0x88                    ;0x0080ED,    35 88 53 10    
            clr   0x530E                           ;0x0080F1, 72 5F 53 0E       
            mov   0x5300, #0x01                    ;0x0080F5,    35 01 53 00    
            mov   0x5306, #0x01                    ;0x0080F9,    35 01 53 06    
            mov   0x5303, #0x01                    ;0x0080FD,    35 01 53 03    
            ret                                    ;0x008101,    81             
            push  A                                ;0x008102,    88             
            ld    A, (0x01,SP)                     ;0x008103,    7B 01          
            dec   (0x01,SP)                        ;0x008105,    0A 01          
            tnz   A                                ;0x008107,    4D             
            jrne  .-7   ;(0x008103)                ;0x008108,    26 F9          
            pop   A                                ;0x00810A,    84             
            ret                                    ;0x00810B,    81             
            sub   SP, #0x04                        ;0x00810C,    52 04          
            ldw   (0x01,SP), X                     ;0x00810E,    1F 01          
            jra   .+23  ;(0x008129)                ;0x008110,    20 17          
            ldw   X, #0x03E8                       ;0x008112,    AE 03 E8       
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
            bset  0x5002, #1                       ;0x008130, 72 12 50 02       
            bset  0x5003, #1                       ;0x008134, 72 12 50 03       
            clr   0x5004                           ;0x008138, 72 5F 50 04       
            ld    A, 0x5011                        ;0x00813C,    C6 50 11       
            or    A, #0x30                         ;0x00813F,    AA 30          
            ld    0x5011, A                        ;0x008141,    C7 50 11       
            ld    A, 0x5012                        ;0x008144,    C6 50 12       
            or    A, #0x30                         ;0x008147,    AA 30          
            ld    0x5012, A                        ;0x008149,    C7 50 12       
            clr   0x5013                           ;0x00814C, 72 5F 50 13       
            bres  0x500C, #3                       ;0x008150, 72 17 50 0C       
            bres  0x500D, #3                       ;0x008154, 72 17 50 0D       
            bres  0x500E, #3                       ;0x008158, 72 17 50 0E       
            bset  0x5011, #3                       ;0x00815C, 72 16 50 11       
            bset  0x5012, #3                       ;0x008160, 72 16 50 12       
            bres  0x5013, #3                       ;0x008164, 72 17 50 13       
            ret                                    ;0x008168,    81             
            clrw  X                                ;0x008169,    5F             
            ldw   0x00, X                          ;0x00816A,    BF 00          
            ld    A, 0x500B                        ;0x00816C,    C6 50 0B       
            bcp   A, #0x08                         ;0x00816F,    A5 08          
            jreq  .+7   ;(0x00817A)                ;0x008171,    27 07          
            ldw   X, 0x00                          ;0x008173,    BE 00          
            cpw   X, #0x0096                       ;0x008175,    A3 00 96       
            jrc   .-14  ;(0x00816C)                ;0x008178,    25 F2          
            ldw   X, 0x00                          ;0x00817A,    BE 00          
            cpw   X, #0x008C                       ;0x00817C,    A3 00 8C       
            jrnc  .+55  ;(0x0081B8)                ;0x00817F,    24 37          
            clrw  X                                ;0x008181,    5F             
            ldw   0x00, X                          ;0x008182,    BF 00          
            ld    A, 0x500B                        ;0x008184,    C6 50 0B       
            bcp   A, #0x08                         ;0x008187,    A5 08          
            jrne  .+7   ;(0x008192)                ;0x008189,    26 07          
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
            ret                                    ;0x0081B3,    81             
            clr   A                                ;0x0081B4,    4F             
            ret                                    ;0x0081B5,    81             
            clr   A                                ;0x0081B6,    4F             
            ret                                    ;0x0081B7,    81             
            clr   A                                ;0x0081B8,    4F             
            ret                                    ;0x0081B9,    81             
            push  A                                ;0x0081BA,    88             
            push  A                                ;0x0081BB,    88             
            clr   (0x01,SP)                        ;0x0081BC,    0F 01          
            ld    A, (0x02,SP)                     ;0x0081BE,    7B 02          
            bcp   A, #0x80                         ;0x0081C0,    A5 80          
            jreq  .+6   ;(0x0081CA)                ;0x0081C2,    27 06          
            bset  0x500F, #4                       ;0x0081C4, 72 18 50 0F       
            jra   .+4   ;(0x0081CE)                ;0x0081C8,    20 04          
            bres  0x500F, #4                       ;0x0081CA, 72 19 50 0F       
            sll   (0x02,SP)                        ;0x0081CE,    08 02          
            bres  0x5000, #1                       ;0x0081D0, 72 13 50 00       
            ld    A, #0x64                         ;0x0081D4,    A6 64          
            call  0x8102                           ;0x0081D6,    CD 81 02       
            bset  0x5000, #1                       ;0x0081D9, 72 12 50 00       
            ld    A, #0x64                         ;0x0081DD,    A6 64          
            call  0x8102                           ;0x0081DF,    CD 81 02       
            inc   (0x01,SP)                        ;0x0081E2,    0C 01          
            ld    A, (0x01,SP)                     ;0x0081E4,    7B 01          
            cp    A, #0x08                         ;0x0081E6,    A1 08          
            jrc   .-44  ;(0x0081BE)                ;0x0081E8,    25 D4          
            popw  X                                ;0x0081EA,    85             
            ret                                    ;0x0081EB,    81             
            pushw X                                ;0x0081EC,    89             
            bres  0x500F, #5                       ;0x0081ED, 72 1B 50 0F       
            bres  0x500F, #4                       ;0x0081F1, 72 19 50 0F       
            bres  0x5000, #1                       ;0x0081F5, 72 13 50 00       
            ld    A, #0x64                         ;0x0081F9,    A6 64          
            call  0x8102                           ;0x0081FB,    CD 81 02       
            bset  0x5000, #1                       ;0x0081FE, 72 12 50 00       
            ld    A, #0x64                         ;0x008202,    A6 64          
            call  0x8102                           ;0x008204,    CD 81 02       
            ld    A, (0x02,SP)                     ;0x008207,    7B 02          
            callr .-81  ;(0x0081BA)                ;0x008209,    AD AF          
            bres  0x500F, #4                       ;0x00820B, 72 19 50 0F       
            bset  0x500F, #5                       ;0x00820F, 72 1A 50 0F       
            popw  X                                ;0x008213,    85             
            ret                                    ;0x008214,    81             
            pushw X                                ;0x008215,    89             
            bres  0x500F, #5                       ;0x008216, 72 1B 50 0F       
            bset  0x500F, #4                       ;0x00821A, 72 18 50 0F       
            bres  0x5000, #1                       ;0x00821E, 72 13 50 00       
            ld    A, #0x64                         ;0x008222,    A6 64          
            call  0x8102                           ;0x008224,    CD 81 02       
            bset  0x5000, #1                       ;0x008227, 72 12 50 00       
            ld    A, #0x64                         ;0x00822B,    A6 64          
            call  0x8102                           ;0x00822D,    CD 81 02       
            ld    A, (0x02,SP)                     ;0x008230,    7B 02          
            callr .-122 ;(0x0081BA)                ;0x008232,    AD 86          
            bres  0x500F, #4                       ;0x008234, 72 19 50 0F       
            bset  0x500F, #5                       ;0x008238, 72 1A 50 0F       
            popw  X                                ;0x00823C,    85             
            ret                                    ;0x00823D,    81             
            bres  0x500F, #5                       ;0x00823E, 72 1B 50 0F       
            ldw   X, #0x00FF                       ;0x008242,    AE 00 FF       
            callr .-91  ;(0x0081EC)                ;0x008245,    AD A5          
            ldw   X, #0x0077                       ;0x008247,    AE 00 77       
            callr .-55  ;(0x008215)                ;0x00824A,    AD C9          
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
            call  0x81EC                           ;0x008291,    CD 81 EC       
            ldw   X, #0x0010                       ;0x008294,    AE 00 10       
            call  0x8215                           ;0x008297,    CD 82 15       
            ldw   X, #0x0002                       ;0x00829A,    AE 00 02       
            call  0x8215                           ;0x00829D,    CD 82 15       
            ldw   X, #0x00C2                       ;0x0082A0,    AE 00 C2       
            call  0x81EC                           ;0x0082A3,    CD 81 EC       
            ldw   X, #0x0007                       ;0x0082A6,    AE 00 07       
            call  0x8215                           ;0x0082A9,    CD 82 15       
            ldw   X, #0x0002                       ;0x0082AC,    AE 00 02       
            call  0x8215                           ;0x0082AF,    CD 82 15       
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
            call  0x810C                           ;0x00872B,    CD 81 0C       
            ldw   X, #0x00FF                       ;0x00872E,    AE 00 FF       
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
            call  0x810C                           ;0x008761,    CD 81 0C       
            ldw   X, #0x00E8                       ;0x008764,    AE 00 E8       
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
            call  0x810C                           ;0x0087A5,    CD 81 0C       
            ret                                    ;0x0087A8,    81             
            push  A                                ;0x0087A9,    88             
            clr   (0x01,SP)                        ;0x0087AA,    0F 01          
            call  0x8130                           ;0x0087AC,    CD 81 30       
            call  0x823E                           ;0x0087AF,    CD 82 3E       
            sim                                    ;0x0087B2,    9B             
            call  0x80E1                           ;0x0087B3,    CD 80 E1       
            rim                                    ;0x0087B6,    9A             
            call  0x8169                           ;0x0087B7,    CD 81 69       
            cp    A, #0x01                         ;0x0087BA,    A1 01          
            jrne  .+24  ;(0x0087D6)                ;0x0087BC,    26 18          
            tnz   (0x01,SP)                        ;0x0087BE,    0D 01          
            jrne  .+20  ;(0x0087D6)                ;0x0087C0,    26 14          
            bres  0x500F, #3                       ;0x0087C2, 72 17 50 0F       
            ldw   X, #0x01F4                       ;0x0087C6,    AE 01 F4       
            call  0x810C                           ;0x0087C9,    CD 81 0C       
            bset  0x500F, #3                       ;0x0087CC, 72 16 50 0F       
            ld    A, #0x01                         ;0x0087D0,    A6 01          
            ld    (0x01,SP), A                     ;0x0087D2,    6B 01          
            jra   .-31  ;(0x0087B7)                ;0x0087D4,    20 E1          
            call  0x8169                           ;0x0087D6,    CD 81 69       
            cp    A, #0x01                         ;0x0087D9,    A1 01          
            jrne  .+12  ;(0x0087E9)                ;0x0087DB,    26 0C          
            ld    A, (0x01,SP)                     ;0x0087DD,    7B 01          
            cp    A, #0x01                         ;0x0087DF,    A1 01          
            jrne  .+6   ;(0x0087E9)                ;0x0087E1,    26 06          
            bset  0x500F, #3                       ;0x0087E3, 72 16 50 0F       
            jra   .-50  ;(0x0087B7)                ;0x0087E7,    20 CE          
            bres  0x500F, #3                       ;0x0087E9, 72 17 50 0F       
            jra   .-56  ;(0x0087B7)                ;0x0087ED,    20 C8          
            iret                                   ;0x0087EF,    80             
            neg   (0x00,SP)                        ;0x0087F0,    00 00          
            neg   (0x00,SP)                        ;0x0087F2,    00 00          
            neg   (0x00,SP)                        ;0x0087F4,    00 00          
            neg   (0x00,SP)                        ;0x0087F6,    00 00          
            neg   (0x00,SP)                        ;0x0087F8,    00 00          
            neg   (0x00,SP)                        ;0x0087FA,    00 00          
            neg   (0x00,SP)                        ;0x0087FC,    00 00          
            neg   (0x00,SP)                        ;0x0087FE,    00 00          
            neg   (0x00,SP)                        ;0x008800,    00 00          
            neg   (0x00,SP)                        ;0x008802,    00 00          
            neg   (0x00,SP)                        ;0x008804,    00 00          
            neg   (0x00,SP)                        ;0x008806,    00 00          
            neg   (0x00,SP)                        ;0x008808,    00 00          
            neg   (0x00,SP)                        ;0x00880A,    00 00          
            neg   (0x00,SP)                        ;0x00880C,    00 00          
            neg   (0x00,SP)                        ;0x00880E,    00 00          
            neg   (0x00,SP)                        ;0x008810,    00 00          
            neg   (0x00,SP)                        ;0x008812,    00 00          
            neg   (0x00,SP)                        ;0x008814,    00 00          
            neg   (0x00,SP)                        ;0x008816,    00 00          
            neg   (0x00,SP)                        ;0x008818,    00 00          
            neg   (0x00,SP)                        ;0x00881A,    00 00          
            neg   (0x00,SP)                        ;0x00881C,    00 00          
            neg   (0x00,SP)                        ;0x00881E,    00 00          
            neg   (0x00,SP)                        ;0x008820,    00 00          
            neg   (0x00,SP)                        ;0x008822,    00 00          
            neg   (0x00,SP)                        ;0x008824,    00 00          
            neg   (0x00,SP)                        ;0x008826,    00 00          
            neg   (0x00,SP)                        ;0x008828,    00 00          
            neg   (0x00,SP)                        ;0x00882A,    00 00          
            neg   (0x00,SP)                        ;0x00882C,    00 00          
            neg   (0x00,SP)                        ;0x00882E,    00 00          
            neg   (0x00,SP)                        ;0x008830,    00 00          
            neg   (0x00,SP)                        ;0x008832,    00 00          
            neg   (0x00,SP)                        ;0x008834,    00 00          
            neg   (0x00,SP)                        ;0x008836,    00 00          
            neg   (0x00,SP)                        ;0x008838,    00 00          
            neg   (0x00,SP)                        ;0x00883A,    00 00          
            neg   (0x00,SP)                        ;0x00883C,    00 00          
            neg   (0x00,SP)                        ;0x00883E,    00 00          
            neg   (0x00,SP)                        ;0x008840,    00 00          
            neg   (0x00,SP)                        ;0x008842,    00 00          
            neg   (0x00,SP)                        ;0x008844,    00 00          
            neg   (0x00,SP)                        ;0x008846,    00 00          
            neg   (0x00,SP)                        ;0x008848,    00 00          
            neg   (0x00,SP)                        ;0x00884A,    00 00          
            neg   (0x00,SP)                        ;0x00884C,    00 00          
            neg   (0x00,SP)                        ;0x00884E,    00 00          
            neg   (0x00,SP)                        ;0x008850,    00 00          
            neg   (0x00,SP)                        ;0x008852,    00 00          
            neg   (0x00,SP)                        ;0x008854,    00 00          
            neg   (0x00,SP)                        ;0x008856,    00 00          
            neg   (0x00,SP)                        ;0x008858,    00 00          
            neg   (0x00,SP)                        ;0x00885A,    00 00          
            neg   (0x00,SP)                        ;0x00885C,    00 00          
            neg   (0x00,SP)                        ;0x00885E,    00 00          
            neg   (0x00,SP)                        ;0x008860,    00 00          
            neg   (0x00,SP)                        ;0x008862,    00 00          
            neg   (0x00,SP)                        ;0x008864,    00 00          
            neg   (0x00,SP)                        ;0x008866,    00 00          
            neg   (0x00,SP)                        ;0x008868,    00 00          
            neg   (0x00,SP)                        ;0x00886A,    00 00          
            neg   (0x00,SP)                        ;0x00886C,    00 00          
            neg   (0x00,SP)                        ;0x00886E,    00 00          
            neg   (0x00,SP)                        ;0x008870,    00 00          
            neg   (0x00,SP)                        ;0x008872,    00 00          
            neg   (0x00,SP)                        ;0x008874,    00 00          
            neg   (0x00,SP)                        ;0x008876,    00 00          
            neg   (0x00,SP)                        ;0x008878,    00 00          
            neg   (0x00,SP)                        ;0x00887A,    00 00          
            neg   (0x00,SP)                        ;0x00887C,    00 00          
            neg   (0x00,SP)                        ;0x00887E,    00 00          
            neg   (0x00,SP)                        ;0x008880,    00 00          
            neg   (0x00,SP)                        ;0x008882,    00 00          
            neg   (0x00,SP)                        ;0x008884,    00 00          
            neg   (0x00,SP)                        ;0x008886,    00 00          
            neg   (0x00,SP)                        ;0x008888,    00 00          
            neg   (0x00,SP)                        ;0x00888A,    00 00          
            neg   (0x00,SP)                        ;0x00888C,    00 00          
            neg   (0x00,SP)                        ;0x00888E,    00 00          
            neg   (0x00,SP)                        ;0x008890,    00 00          
            neg   (0x00,SP)                        ;0x008892,    00 00          
            neg   (0x00,SP)                        ;0x008894,    00 00          
            neg   (0x00,SP)                        ;0x008896,    00 00          
            neg   (0x00,SP)                        ;0x008898,    00 00          
            neg   (0x00,SP)                        ;0x00889A,    00 00          
            neg   (0x00,SP)                        ;0x00889C,    00 00          
            neg   (0x00,SP)                        ;0x00889E,    00 00          
            neg   (0x00,SP)                        ;0x0088A0,    00 00          
            neg   (0x00,SP)                        ;0x0088A2,    00 00          
            neg   (0x00,SP)                        ;0x0088A4,    00 00          
            neg   (0x00,SP)                        ;0x0088A6,    00 00          
            neg   (0x00,SP)                        ;0x0088A8,    00 00          
            neg   (0x00,SP)                        ;0x0088AA,    00 00          
            neg   (0x00,SP)                        ;0x0088AC,    00 00          
            neg   (0x00,SP)                        ;0x0088AE,    00 00          
            neg   (0x00,SP)                        ;0x0088B0,    00 00          
            neg   (0x00,SP)                        ;0x0088B2,    00 00          
            neg   (0x00,SP)                        ;0x0088B4,    00 00          
            neg   (0x00,SP)                        ;0x0088B6,    00 00          
            neg   (0x00,SP)                        ;0x0088B8,    00 00          
            neg   (0x00,SP)                        ;0x0088BA,    00 00          
            neg   (0x00,SP)                        ;0x0088BC,    00 00          
            neg   (0x00,SP)                        ;0x0088BE,    00 00          
            neg   (0x00,SP)                        ;0x0088C0,    00 00          
            neg   (0x00,SP)                        ;0x0088C2,    00 00          
            neg   (0x00,SP)                        ;0x0088C4,    00 00          
            neg   (0x00,SP)                        ;0x0088C6,    00 00          
            neg   (0x00,SP)                        ;0x0088C8,    00 00          
            neg   (0x00,SP)                        ;0x0088CA,    00 00          
            neg   (0x00,SP)                        ;0x0088CC,    00 00          
            neg   (0x00,SP)                        ;0x0088CE,    00 00          
            neg   (0x00,SP)                        ;0x0088D0,    00 00          
            neg   (0x00,SP)                        ;0x0088D2,    00 00          
            neg   (0x00,SP)                        ;0x0088D4,    00 00          
            neg   (0x00,SP)                        ;0x0088D6,    00 00          
            neg   (0x00,SP)                        ;0x0088D8,    00 00          
            neg   (0x00,SP)                        ;0x0088DA,    00 00          
            neg   (0x00,SP)                        ;0x0088DC,    00 00          
            neg   (0x00,SP)                        ;0x0088DE,    00 00          
            neg   (0x00,SP)                        ;0x0088E0,    00 00          
            neg   (0x00,SP)                        ;0x0088E2,    00 00          
            neg   (0x00,SP)                        ;0x0088E4,    00 00          
            neg   (0x00,SP)                        ;0x0088E6,    00 00          
            neg   (0x00,SP)                        ;0x0088E8,    00 00          
            neg   (0x00,SP)                        ;0x0088EA,    00 00          
            neg   (0x00,SP)                        ;0x0088EC,    00 00          
            neg   (0x00,SP)                        ;0x0088EE,    00 00          
            neg   (0x00,SP)                        ;0x0088F0,    00 00          
            neg   (0x00,SP)                        ;0x0088F2,    00 00          
            neg   (0x00,SP)                        ;0x0088F4,    00 00          
            neg   (0x00,SP)                        ;0x0088F6,    00 00          
            neg   (0x00,SP)                        ;0x0088F8,    00 00          
            neg   (0x00,SP)                        ;0x0088FA,    00 00          
            neg   (0x00,SP)                        ;0x0088FC,    00 00          
            neg   (0x00,SP)                        ;0x0088FE,    00 00          
            neg   (0x00,SP)                        ;0x008900,    00 00          
            neg   (0x00,SP)                        ;0x008902,    00 00          
            neg   (0x00,SP)                        ;0x008904,    00 00          
            neg   (0x00,SP)                        ;0x008906,    00 00          
            neg   (0x00,SP)                        ;0x008908,    00 00          
            neg   (0x00,SP)                        ;0x00890A,    00 00          
            neg   (0x00,SP)                        ;0x00890C,    00 00          
            neg   (0x00,SP)                        ;0x00890E,    00 00          
            neg   (0x00,SP)                        ;0x008910,    00 00          
            neg   (0x00,SP)                        ;0x008912,    00 00          
            neg   (0x00,SP)                        ;0x008914,    00 00          
            neg   (0x00,SP)                        ;0x008916,    00 00          
            neg   (0x00,SP)                        ;0x008918,    00 00          
            neg   (0x00,SP)                        ;0x00891A,    00 00          
            neg   (0x00,SP)                        ;0x00891C,    00 00          
            neg   (0x00,SP)                        ;0x00891E,    00 00          
            neg   (0x00,SP)                        ;0x008920,    00 00          
            neg   (0x00,SP)                        ;0x008922,    00 00          
            neg   (0x00,SP)                        ;0x008924,    00 00          
            neg   (0x00,SP)                        ;0x008926,    00 00          
            neg   (0x00,SP)                        ;0x008928,    00 00          
            neg   (0x00,SP)                        ;0x00892A,    00 00          
            neg   (0x00,SP)                        ;0x00892C,    00 00          
            neg   (0x00,SP)                        ;0x00892E,    00 00          
            neg   (0x00,SP)                        ;0x008930,    00 00          
            neg   (0x00,SP)                        ;0x008932,    00 00          
            neg   (0x00,SP)                        ;0x008934,    00 00          
            neg   (0x00,SP)                        ;0x008936,    00 00          
            neg   (0x00,SP)                        ;0x008938,    00 00          
            neg   (0x00,SP)                        ;0x00893A,    00 00          
            neg   (0x00,SP)                        ;0x00893C,    00 00          
            neg   (0x00,SP)                        ;0x00893E,    00 00          
            neg   (0x00,SP)                        ;0x008940,    00 00          
            neg   (0x00,SP)                        ;0x008942,    00 00          
            neg   (0x00,SP)                        ;0x008944,    00 00          
            neg   (0x00,SP)                        ;0x008946,    00 00          
            neg   (0x00,SP)                        ;0x008948,    00 00          
            neg   (0x00,SP)                        ;0x00894A,    00 00          
            neg   (0x00,SP)                        ;0x00894C,    00 00          
            neg   (0x00,SP)                        ;0x00894E,    00 00          
            neg   (0x00,SP)                        ;0x008950,    00 00          
            neg   (0x00,SP)                        ;0x008952,    00 00          
            neg   (0x00,SP)                        ;0x008954,    00 00          
            neg   (0x00,SP)                        ;0x008956,    00 00          
            neg   (0x00,SP)                        ;0x008958,    00 00          
            neg   (0x00,SP)                        ;0x00895A,    00 00          
            neg   (0x00,SP)                        ;0x00895C,    00 00          
            neg   (0x00,SP)                        ;0x00895E,    00 00          
            neg   (0x00,SP)                        ;0x008960,    00 00          
            neg   (0x00,SP)                        ;0x008962,    00 00          
            neg   (0x00,SP)                        ;0x008964,    00 00          
            neg   (0x00,SP)                        ;0x008966,    00 00          
            neg   (0x00,SP)                        ;0x008968,    00 00          
            neg   (0x00,SP)                        ;0x00896A,    00 00          
            neg   (0x00,SP)                        ;0x00896C,    00 00          
            neg   (0x00,SP)                        ;0x00896E,    00 00          
            neg   (0x00,SP)                        ;0x008970,    00 00          
            neg   (0x00,SP)                        ;0x008972,    00 00          
            neg   (0x00,SP)                        ;0x008974,    00 00          
            neg   (0x00,SP)                        ;0x008976,    00 00          
            neg   (0x00,SP)                        ;0x008978,    00 00          
            neg   (0x00,SP)                        ;0x00897A,    00 00          
            neg   (0x00,SP)                        ;0x00897C,    00 00          
            neg   (0x00,SP)                        ;0x00897E,    00 00          
            neg   (0x00,SP)                        ;0x008980,    00 00          
            neg   (0x00,SP)                        ;0x008982,    00 00          
            neg   (0x00,SP)                        ;0x008984,    00 00          
            neg   (0x00,SP)                        ;0x008986,    00 00          
            neg   (0x00,SP)                        ;0x008988,    00 00          
            neg   (0x00,SP)                        ;0x00898A,    00 00          
            neg   (0x00,SP)                        ;0x00898C,    00 00          
            neg   (0x00,SP)                        ;0x00898E,    00 00          
            neg   (0x00,SP)                        ;0x008990,    00 00          
            neg   (0x00,SP)                        ;0x008992,    00 00          
            neg   (0x00,SP)                        ;0x008994,    00 00          
            neg   (0x00,SP)                        ;0x008996,    00 00          
            neg   (0x00,SP)                        ;0x008998,    00 00          
            neg   (0x00,SP)                        ;0x00899A,    00 00          
            neg   (0x00,SP)                        ;0x00899C,    00 00          
            neg   (0x00,SP)                        ;0x00899E,    00 00          
            neg   (0x00,SP)                        ;0x0089A0,    00 00          
            neg   (0x00,SP)                        ;0x0089A2,    00 00          
            neg   (0x00,SP)                        ;0x0089A4,    00 00          
            neg   (0x00,SP)                        ;0x0089A6,    00 00          
            neg   (0x00,SP)                        ;0x0089A8,    00 00          
            neg   (0x00,SP)                        ;0x0089AA,    00 00          
            neg   (0x00,SP)                        ;0x0089AC,    00 00          
            neg   (0x00,SP)                        ;0x0089AE,    00 00          
            neg   (0x00,SP)                        ;0x0089B0,    00 00          
            neg   (0x00,SP)                        ;0x0089B2,    00 00          
            neg   (0x00,SP)                        ;0x0089B4,    00 00          
            neg   (0x00,SP)                        ;0x0089B6,    00 00          
            neg   (0x00,SP)                        ;0x0089B8,    00 00          
            neg   (0x00,SP)                        ;0x0089BA,    00 00          
            neg   (0x00,SP)                        ;0x0089BC,    00 00          
            neg   (0x00,SP)                        ;0x0089BE,    00 00          
            neg   (0x00,SP)                        ;0x0089C0,    00 00          
            neg   (0x00,SP)                        ;0x0089C2,    00 00          
            neg   (0x00,SP)                        ;0x0089C4,    00 00          
            neg   (0x00,SP)                        ;0x0089C6,    00 00          
            neg   (0x00,SP)                        ;0x0089C8,    00 00          
            neg   (0x00,SP)                        ;0x0089CA,    00 00          
            neg   (0x00,SP)                        ;0x0089CC,    00 00          
            neg   (0x00,SP)                        ;0x0089CE,    00 00          
            neg   (0x00,SP)                        ;0x0089D0,    00 00          
            neg   (0x00,SP)                        ;0x0089D2,    00 00          
            neg   (0x00,SP)                        ;0x0089D4,    00 00          
            neg   (0x00,SP)                        ;0x0089D6,    00 00          
            neg   (0x00,SP)                        ;0x0089D8,    00 00          
            neg   (0x00,SP)                        ;0x0089DA,    00 00          
            neg   (0x00,SP)                        ;0x0089DC,    00 00          
            neg   (0x00,SP)                        ;0x0089DE,    00 00          
            neg   (0x00,SP)                        ;0x0089E0,    00 00          
            neg   (0x00,SP)                        ;0x0089E2,    00 00          
            neg   (0x00,SP)                        ;0x0089E4,    00 00          
            neg   (0x00,SP)                        ;0x0089E6,    00 00          
            neg   (0x00,SP)                        ;0x0089E8,    00 00          
            neg   (0x00,SP)                        ;0x0089EA,    00 00          
            neg   (0x00,SP)                        ;0x0089EC,    00 00          
            neg   (0x00,SP)                        ;0x0089EE,    00 00          
            neg   (0x00,SP)                        ;0x0089F0,    00 00          
            neg   (0x00,SP)                        ;0x0089F2,    00 00          
            neg   (0x00,SP)                        ;0x0089F4,    00 00          
            neg   (0x00,SP)                        ;0x0089F6,    00 00          
            neg   (0x00,SP)                        ;0x0089F8,    00 00          
            neg   (0x00,SP)                        ;0x0089FA,    00 00          
            neg   (0x00,SP)                        ;0x0089FC,    00 00          
            neg   (0x00,SP)                        ;0x0089FE,    00 00          
            neg   (0x00,SP)                        ;0x008A00,    00 00          
            neg   (0x00,SP)                        ;0x008A02,    00 00          
            neg   (0x00,SP)                        ;0x008A04,    00 00          
            neg   (0x00,SP)                        ;0x008A06,    00 00          
            neg   (0x00,SP)                        ;0x008A08,    00 00          
            neg   (0x00,SP)                        ;0x008A0A,    00 00          
            neg   (0x00,SP)                        ;0x008A0C,    00 00          
            neg   (0x00,SP)                        ;0x008A0E,    00 00          
            neg   (0x00,SP)                        ;0x008A10,    00 00          
            neg   (0x00,SP)                        ;0x008A12,    00 00          
            neg   (0x00,SP)                        ;0x008A14,    00 00          
            neg   (0x00,SP)                        ;0x008A16,    00 00          
            neg   (0x00,SP)                        ;0x008A18,    00 00          
            neg   (0x00,SP)                        ;0x008A1A,    00 00          
            neg   (0x00,SP)                        ;0x008A1C,    00 00          
            neg   (0x00,SP)                        ;0x008A1E,    00 00          
            neg   (0x00,SP)                        ;0x008A20,    00 00          
            neg   (0x00,SP)                        ;0x008A22,    00 00          
            neg   (0x00,SP)                        ;0x008A24,    00 00          
            neg   (0x00,SP)                        ;0x008A26,    00 00          
            neg   (0x00,SP)                        ;0x008A28,    00 00          
            neg   (0x00,SP)                        ;0x008A2A,    00 00          
            neg   (0x00,SP)                        ;0x008A2C,    00 00          
            neg   (0x00,SP)                        ;0x008A2E,    00 00          
            neg   (0x00,SP)                        ;0x008A30,    00 00          
            neg   (0x00,SP)                        ;0x008A32,    00 00          
            neg   (0x00,SP)                        ;0x008A34,    00 00          
            neg   (0x00,SP)                        ;0x008A36,    00 00          
            neg   (0x00,SP)                        ;0x008A38,    00 00          
            neg   (0x00,SP)                        ;0x008A3A,    00 00          
            neg   (0x00,SP)                        ;0x008A3C,    00 00          
            neg   (0x00,SP)                        ;0x008A3E,    00 00          
            neg   (0x00,SP)                        ;0x008A40,    00 00          
            neg   (0x00,SP)                        ;0x008A42,    00 00          
            neg   (0x00,SP)                        ;0x008A44,    00 00          
            neg   (0x00,SP)                        ;0x008A46,    00 00          
            neg   (0x00,SP)                        ;0x008A48,    00 00          
            neg   (0x00,SP)                        ;0x008A4A,    00 00          
            neg   (0x00,SP)                        ;0x008A4C,    00 00          
            neg   (0x00,SP)                        ;0x008A4E,    00 00          
            neg   (0x00,SP)                        ;0x008A50,    00 00          
            neg   (0x00,SP)                        ;0x008A52,    00 00          
            neg   (0x00,SP)                        ;0x008A54,    00 00          
            neg   (0x00,SP)                        ;0x008A56,    00 00          
            neg   (0x00,SP)                        ;0x008A58,    00 00          
            neg   (0x00,SP)                        ;0x008A5A,    00 00          
            neg   (0x00,SP)                        ;0x008A5C,    00 00          
            neg   (0x00,SP)                        ;0x008A5E,    00 00          
            neg   (0x00,SP)                        ;0x008A60,    00 00          
            neg   (0x00,SP)                        ;0x008A62,    00 00          
            neg   (0x00,SP)                        ;0x008A64,    00 00          
            neg   (0x00,SP)                        ;0x008A66,    00 00          
            neg   (0x00,SP)                        ;0x008A68,    00 00          
            neg   (0x00,SP)                        ;0x008A6A,    00 00          
            neg   (0x00,SP)                        ;0x008A6C,    00 00          
            neg   (0x00,SP)                        ;0x008A6E,    00 00          
            neg   (0x00,SP)                        ;0x008A70,    00 00          
            neg   (0x00,SP)                        ;0x008A72,    00 00          
            neg   (0x00,SP)                        ;0x008A74,    00 00          
            neg   (0x00,SP)                        ;0x008A76,    00 00          
            neg   (0x00,SP)                        ;0x008A78,    00 00          
            neg   (0x00,SP)                        ;0x008A7A,    00 00          
            neg   (0x00,SP)                        ;0x008A7C,    00 00          
            neg   (0x00,SP)                        ;0x008A7E,    00 00          
            neg   (0x00,SP)                        ;0x008A80,    00 00          
            neg   (0x00,SP)                        ;0x008A82,    00 00          
            neg   (0x00,SP)                        ;0x008A84,    00 00          
            neg   (0x00,SP)                        ;0x008A86,    00 00          
            neg   (0x00,SP)                        ;0x008A88,    00 00          
            neg   (0x00,SP)                        ;0x008A8A,    00 00          
            neg   (0x00,SP)                        ;0x008A8C,    00 00          
            neg   (0x00,SP)                        ;0x008A8E,    00 00          
            neg   (0x00,SP)                        ;0x008A90,    00 00          
            neg   (0x00,SP)                        ;0x008A92,    00 00          
            neg   (0x00,SP)                        ;0x008A94,    00 00          
            neg   (0x00,SP)                        ;0x008A96,    00 00          
            neg   (0x00,SP)                        ;0x008A98,    00 00          
            neg   (0x00,SP)                        ;0x008A9A,    00 00          
            neg   (0x00,SP)                        ;0x008A9C,    00 00          
            neg   (0x00,SP)                        ;0x008A9E,    00 00          
            neg   (0x00,SP)                        ;0x008AA0,    00 00          
            neg   (0x00,SP)                        ;0x008AA2,    00 00          
            neg   (0x00,SP)                        ;0x008AA4,    00 00          
            neg   (0x00,SP)                        ;0x008AA6,    00 00          
            neg   (0x00,SP)                        ;0x008AA8,    00 00          
            neg   (0x00,SP)                        ;0x008AAA,    00 00          
            neg   (0x00,SP)                        ;0x008AAC,    00 00          
            neg   (0x00,SP)                        ;0x008AAE,    00 00          
            neg   (0x00,SP)                        ;0x008AB0,    00 00          
            neg   (0x00,SP)                        ;0x008AB2,    00 00          
            neg   (0x00,SP)                        ;0x008AB4,    00 00          
            neg   (0x00,SP)                        ;0x008AB6,    00 00          
            neg   (0x00,SP)                        ;0x008AB8,    00 00          
            neg   (0x00,SP)                        ;0x008ABA,    00 00          
            neg   (0x00,SP)                        ;0x008ABC,    00 00          
            neg   (0x00,SP)                        ;0x008ABE,    00 00          
            neg   (0x00,SP)                        ;0x008AC0,    00 00          
            neg   (0x00,SP)                        ;0x008AC2,    00 00          
            neg   (0x00,SP)                        ;0x008AC4,    00 00          
            neg   (0x00,SP)                        ;0x008AC6,    00 00          
            neg   (0x00,SP)                        ;0x008AC8,    00 00          
            neg   (0x00,SP)                        ;0x008ACA,    00 00          
            neg   (0x00,SP)                        ;0x008ACC,    00 00          
            neg   (0x00,SP)                        ;0x008ACE,    00 00          
            neg   (0x00,SP)                        ;0x008AD0,    00 00          
            neg   (0x00,SP)                        ;0x008AD2,    00 00          
            neg   (0x00,SP)                        ;0x008AD4,    00 00          
            neg   (0x00,SP)                        ;0x008AD6,    00 00          
            neg   (0x00,SP)                        ;0x008AD8,    00 00          
            neg   (0x00,SP)                        ;0x008ADA,    00 00          
            neg   (0x00,SP)                        ;0x008ADC,    00 00          
            neg   (0x00,SP)                        ;0x008ADE,    00 00          
            neg   (0x00,SP)                        ;0x008AE0,    00 00          
            neg   (0x00,SP)                        ;0x008AE2,    00 00          
            neg   (0x00,SP)                        ;0x008AE4,    00 00          
            neg   (0x00,SP)                        ;0x008AE6,    00 00          
            neg   (0x00,SP)                        ;0x008AE8,    00 00          
            neg   (0x00,SP)                        ;0x008AEA,    00 00          
            neg   (0x00,SP)                        ;0x008AEC,    00 00          
            neg   (0x00,SP)                        ;0x008AEE,    00 00          
            neg   (0x00,SP)                        ;0x008AF0,    00 00          
            neg   (0x00,SP)                        ;0x008AF2,    00 00          
            neg   (0x00,SP)                        ;0x008AF4,    00 00          
            neg   (0x00,SP)                        ;0x008AF6,    00 00          
            neg   (0x00,SP)                        ;0x008AF8,    00 00          
            neg   (0x00,SP)                        ;0x008AFA,    00 00          
            neg   (0x00,SP)                        ;0x008AFC,    00 00          
            neg   (0x00,SP)                        ;0x008AFE,    00 00          
            neg   (0x00,SP)                        ;0x008B00,    00 00          
            neg   (0x00,SP)                        ;0x008B02,    00 00          
            neg   (0x00,SP)                        ;0x008B04,    00 00          
            neg   (0x00,SP)                        ;0x008B06,    00 00          
            neg   (0x00,SP)                        ;0x008B08,    00 00          
            neg   (0x00,SP)                        ;0x008B0A,    00 00          
            neg   (0x00,SP)                        ;0x008B0C,    00 00          
            neg   (0x00,SP)                        ;0x008B0E,    00 00          
            neg   (0x00,SP)                        ;0x008B10,    00 00          
            neg   (0x00,SP)                        ;0x008B12,    00 00          
            neg   (0x00,SP)                        ;0x008B14,    00 00          
            neg   (0x00,SP)                        ;0x008B16,    00 00          
            neg   (0x00,SP)                        ;0x008B18,    00 00          
            neg   (0x00,SP)                        ;0x008B1A,    00 00          
            neg   (0x00,SP)                        ;0x008B1C,    00 00          
            neg   (0x00,SP)                        ;0x008B1E,    00 00          
            neg   (0x00,SP)                        ;0x008B20,    00 00          
            neg   (0x00,SP)                        ;0x008B22,    00 00          
            neg   (0x00,SP)                        ;0x008B24,    00 00          
            neg   (0x00,SP)                        ;0x008B26,    00 00          
            neg   (0x00,SP)                        ;0x008B28,    00 00          
            neg   (0x00,SP)                        ;0x008B2A,    00 00          
            neg   (0x00,SP)                        ;0x008B2C,    00 00          
            neg   (0x00,SP)                        ;0x008B2E,    00 00          
            neg   (0x00,SP)                        ;0x008B30,    00 00          
            neg   (0x00,SP)                        ;0x008B32,    00 00          
            neg   (0x00,SP)                        ;0x008B34,    00 00          
            neg   (0x00,SP)                        ;0x008B36,    00 00          
            neg   (0x00,SP)                        ;0x008B38,    00 00          
            neg   (0x00,SP)                        ;0x008B3A,    00 00          
            neg   (0x00,SP)                        ;0x008B3C,    00 00          
            neg   (0x00,SP)                        ;0x008B3E,    00 00          
            neg   (0x00,SP)                        ;0x008B40,    00 00          
            neg   (0x00,SP)                        ;0x008B42,    00 00          
            neg   (0x00,SP)                        ;0x008B44,    00 00          
            neg   (0x00,SP)                        ;0x008B46,    00 00          
            neg   (0x00,SP)                        ;0x008B48,    00 00          
            neg   (0x00,SP)                        ;0x008B4A,    00 00          
            neg   (0x00,SP)                        ;0x008B4C,    00 00          
            neg   (0x00,SP)                        ;0x008B4E,    00 00          
            neg   (0x00,SP)                        ;0x008B50,    00 00          
            neg   (0x00,SP)                        ;0x008B52,    00 00          
            neg   (0x00,SP)                        ;0x008B54,    00 00          
            neg   (0x00,SP)                        ;0x008B56,    00 00          
            neg   (0x00,SP)                        ;0x008B58,    00 00          
            neg   (0x00,SP)                        ;0x008B5A,    00 00          
            neg   (0x00,SP)                        ;0x008B5C,    00 00          
            neg   (0x00,SP)                        ;0x008B5E,    00 00          
            neg   (0x00,SP)                        ;0x008B60,    00 00          
            neg   (0x00,SP)                        ;0x008B62,    00 00          
            neg   (0x00,SP)                        ;0x008B64,    00 00          
            neg   (0x00,SP)                        ;0x008B66,    00 00          
            neg   (0x00,SP)                        ;0x008B68,    00 00          
            neg   (0x00,SP)                        ;0x008B6A,    00 00          
            neg   (0x00,SP)                        ;0x008B6C,    00 00          
            neg   (0x00,SP)                        ;0x008B6E,    00 00          
            neg   (0x00,SP)                        ;0x008B70,    00 00          
            neg   (0x00,SP)                        ;0x008B72,    00 00          
            neg   (0x00,SP)                        ;0x008B74,    00 00          
            neg   (0x00,SP)                        ;0x008B76,    00 00          
            neg   (0x00,SP)                        ;0x008B78,    00 00          
            neg   (0x00,SP)                        ;0x008B7A,    00 00          
            neg   (0x00,SP)                        ;0x008B7C,    00 00          
            neg   (0x00,SP)                        ;0x008B7E,    00 00          
            neg   (0x00,SP)                        ;0x008B80,    00 00          
            neg   (0x00,SP)                        ;0x008B82,    00 00          
            neg   (0x00,SP)                        ;0x008B84,    00 00          
            neg   (0x00,SP)                        ;0x008B86,    00 00          
            neg   (0x00,SP)                        ;0x008B88,    00 00          
            neg   (0x00,SP)                        ;0x008B8A,    00 00          
            neg   (0x00,SP)                        ;0x008B8C,    00 00          
            neg   (0x00,SP)                        ;0x008B8E,    00 00          
            neg   (0x00,SP)                        ;0x008B90,    00 00          
            neg   (0x00,SP)                        ;0x008B92,    00 00          
            neg   (0x00,SP)                        ;0x008B94,    00 00          
            neg   (0x00,SP)                        ;0x008B96,    00 00          
            neg   (0x00,SP)                        ;0x008B98,    00 00          
            neg   (0x00,SP)                        ;0x008B9A,    00 00          
            neg   (0x00,SP)                        ;0x008B9C,    00 00          
            neg   (0x00,SP)                        ;0x008B9E,    00 00          
            neg   (0x00,SP)                        ;0x008BA0,    00 00          
            neg   (0x00,SP)                        ;0x008BA2,    00 00          
            neg   (0x00,SP)                        ;0x008BA4,    00 00          
            neg   (0x00,SP)                        ;0x008BA6,    00 00          
            neg   (0x00,SP)                        ;0x008BA8,    00 00          
            neg   (0x00,SP)                        ;0x008BAA,    00 00          
            neg   (0x00,SP)                        ;0x008BAC,    00 00          
            neg   (0x00,SP)                        ;0x008BAE,    00 00          
            neg   (0x00,SP)                        ;0x008BB0,    00 00          
            neg   (0x00,SP)                        ;0x008BB2,    00 00          
            neg   (0x00,SP)                        ;0x008BB4,    00 00          
            neg   (0x00,SP)                        ;0x008BB6,    00 00          
            neg   (0x00,SP)                        ;0x008BB8,    00 00          
            neg   (0x00,SP)                        ;0x008BBA,    00 00          
            neg   (0x00,SP)                        ;0x008BBC,    00 00          
            neg   (0x00,SP)                        ;0x008BBE,    00 00          
            neg   (0x00,SP)                        ;0x008BC0,    00 00          
            neg   (0x00,SP)                        ;0x008BC2,    00 00          
            neg   (0x00,SP)                        ;0x008BC4,    00 00          
            neg   (0x00,SP)                        ;0x008BC6,    00 00          
            neg   (0x00,SP)                        ;0x008BC8,    00 00          
            neg   (0x00,SP)                        ;0x008BCA,    00 00          
            neg   (0x00,SP)                        ;0x008BCC,    00 00          
            neg   (0x00,SP)                        ;0x008BCE,    00 00          
            neg   (0x00,SP)                        ;0x008BD0,    00 00          
            neg   (0x00,SP)                        ;0x008BD2,    00 00          
            neg   (0x00,SP)                        ;0x008BD4,    00 00          
            neg   (0x00,SP)                        ;0x008BD6,    00 00          
            neg   (0x00,SP)                        ;0x008BD8,    00 00          
            neg   (0x00,SP)                        ;0x008BDA,    00 00          
            neg   (0x00,SP)                        ;0x008BDC,    00 00          
            neg   (0x00,SP)                        ;0x008BDE,    00 00          
            neg   (0x00,SP)                        ;0x008BE0,    00 00          
            neg   (0x00,SP)                        ;0x008BE2,    00 00          
            neg   (0x00,SP)                        ;0x008BE4,    00 00          
            neg   (0x00,SP)                        ;0x008BE6,    00 00          
            neg   (0x00,SP)                        ;0x008BE8,    00 00          
            neg   (0x00,SP)                        ;0x008BEA,    00 00          
            neg   (0x00,SP)                        ;0x008BEC,    00 00          
            neg   (0x00,SP)                        ;0x008BEE,    00 00          
            neg   (0x00,SP)                        ;0x008BF0,    00 00          
            neg   (0x00,SP)                        ;0x008BF2,    00 00          
            neg   (0x00,SP)                        ;0x008BF4,    00 00          
            neg   (0x00,SP)                        ;0x008BF6,    00 00          
            neg   (0x00,SP)                        ;0x008BF8,    00 00          
            neg   (0x00,SP)                        ;0x008BFA,    00 00          
            neg   (0x00,SP)                        ;0x008BFC,    00 00          
            neg   (0x00,SP)                        ;0x008BFE,    00 00          
            neg   (0x00,SP)                        ;0x008C00,    00 00          
            neg   (0x00,SP)                        ;0x008C02,    00 00          
            neg   (0x00,SP)                        ;0x008C04,    00 00          
            neg   (0x00,SP)                        ;0x008C06,    00 00          
            neg   (0x00,SP)                        ;0x008C08,    00 00          
            neg   (0x00,SP)                        ;0x008C0A,    00 00          
            neg   (0x00,SP)                        ;0x008C0C,    00 00          
            neg   (0x00,SP)                        ;0x008C0E,    00 00          
            neg   (0x00,SP)                        ;0x008C10,    00 00          
            neg   (0x00,SP)                        ;0x008C12,    00 00          
            neg   (0x00,SP)                        ;0x008C14,    00 00          
            neg   (0x00,SP)                        ;0x008C16,    00 00          
            neg   (0x00,SP)                        ;0x008C18,    00 00          
            neg   (0x00,SP)                        ;0x008C1A,    00 00          
            neg   (0x00,SP)                        ;0x008C1C,    00 00          
            neg   (0x00,SP)                        ;0x008C1E,    00 00          
            neg   (0x00,SP)                        ;0x008C20,    00 00          
            neg   (0x00,SP)                        ;0x008C22,    00 00          
            neg   (0x00,SP)                        ;0x008C24,    00 00          
            neg   (0x00,SP)                        ;0x008C26,    00 00          
            neg   (0x00,SP)                        ;0x008C28,    00 00          
            neg   (0x00,SP)                        ;0x008C2A,    00 00          
            neg   (0x00,SP)                        ;0x008C2C,    00 00          
            neg   (0x00,SP)                        ;0x008C2E,    00 00          
            neg   (0x00,SP)                        ;0x008C30,    00 00          
            neg   (0x00,SP)                        ;0x008C32,    00 00          
            neg   (0x00,SP)                        ;0x008C34,    00 00          
            neg   (0x00,SP)                        ;0x008C36,    00 00          
            neg   (0x00,SP)                        ;0x008C38,    00 00          
            neg   (0x00,SP)                        ;0x008C3A,    00 00          
            neg   (0x00,SP)                        ;0x008C3C,    00 00          
            neg   (0x00,SP)                        ;0x008C3E,    00 00          
            neg   (0x00,SP)                        ;0x008C40,    00 00          
            neg   (0x00,SP)                        ;0x008C42,    00 00          
            neg   (0x00,SP)                        ;0x008C44,    00 00          
            neg   (0x00,SP)                        ;0x008C46,    00 00          
            neg   (0x00,SP)                        ;0x008C48,    00 00          
            neg   (0x00,SP)                        ;0x008C4A,    00 00          
            neg   (0x00,SP)                        ;0x008C4C,    00 00          
            neg   (0x00,SP)                        ;0x008C4E,    00 00          
            neg   (0x00,SP)                        ;0x008C50,    00 00          
            neg   (0x00,SP)                        ;0x008C52,    00 00          
            neg   (0x00,SP)                        ;0x008C54,    00 00          
            neg   (0x00,SP)                        ;0x008C56,    00 00          
            neg   (0x00,SP)                        ;0x008C58,    00 00          
            neg   (0x00,SP)                        ;0x008C5A,    00 00          
            neg   (0x00,SP)                        ;0x008C5C,    00 00          
            neg   (0x00,SP)                        ;0x008C5E,    00 00          
            neg   (0x00,SP)                        ;0x008C60,    00 00          
            neg   (0x00,SP)                        ;0x008C62,    00 00          
            neg   (0x00,SP)                        ;0x008C64,    00 00          
            neg   (0x00,SP)                        ;0x008C66,    00 00          
            neg   (0x00,SP)                        ;0x008C68,    00 00          
            neg   (0x00,SP)                        ;0x008C6A,    00 00          
            neg   (0x00,SP)                        ;0x008C6C,    00 00          
            neg   (0x00,SP)                        ;0x008C6E,    00 00          
            neg   (0x00,SP)                        ;0x008C70,    00 00          
            neg   (0x00,SP)                        ;0x008C72,    00 00          
            neg   (0x00,SP)                        ;0x008C74,    00 00          
            neg   (0x00,SP)                        ;0x008C76,    00 00          
            neg   (0x00,SP)                        ;0x008C78,    00 00          
            neg   (0x00,SP)                        ;0x008C7A,    00 00          
            neg   (0x00,SP)                        ;0x008C7C,    00 00          
            neg   (0x00,SP)                        ;0x008C7E,    00 00          
            neg   (0x00,SP)                        ;0x008C80,    00 00          
            neg   (0x00,SP)                        ;0x008C82,    00 00          
            neg   (0x00,SP)                        ;0x008C84,    00 00          
            neg   (0x00,SP)                        ;0x008C86,    00 00          
            neg   (0x00,SP)                        ;0x008C88,    00 00          
            neg   (0x00,SP)                        ;0x008C8A,    00 00          
            neg   (0x00,SP)                        ;0x008C8C,    00 00          
            neg   (0x00,SP)                        ;0x008C8E,    00 00          
            neg   (0x00,SP)                        ;0x008C90,    00 00          
            neg   (0x00,SP)                        ;0x008C92,    00 00          
            neg   (0x00,SP)                        ;0x008C94,    00 00          
            neg   (0x00,SP)                        ;0x008C96,    00 00          
            neg   (0x00,SP)                        ;0x008C98,    00 00          
            neg   (0x00,SP)                        ;0x008C9A,    00 00          
            neg   (0x00,SP)                        ;0x008C9C,    00 00          
            neg   (0x00,SP)                        ;0x008C9E,    00 00          
            neg   (0x00,SP)                        ;0x008CA0,    00 00          
            neg   (0x00,SP)                        ;0x008CA2,    00 00          
            neg   (0x00,SP)                        ;0x008CA4,    00 00          
            neg   (0x00,SP)                        ;0x008CA6,    00 00          
            neg   (0x00,SP)                        ;0x008CA8,    00 00          
            neg   (0x00,SP)                        ;0x008CAA,    00 00          
            neg   (0x00,SP)                        ;0x008CAC,    00 00          
            neg   (0x00,SP)                        ;0x008CAE,    00 00          
            neg   (0x00,SP)                        ;0x008CB0,    00 00          
            neg   (0x00,SP)                        ;0x008CB2,    00 00          
            neg   (0x00,SP)                        ;0x008CB4,    00 00          
            neg   (0x00,SP)                        ;0x008CB6,    00 00          
            neg   (0x00,SP)                        ;0x008CB8,    00 00          
            neg   (0x00,SP)                        ;0x008CBA,    00 00          
            neg   (0x00,SP)                        ;0x008CBC,    00 00          
            neg   (0x00,SP)                        ;0x008CBE,    00 00          
            neg   (0x00,SP)                        ;0x008CC0,    00 00          
            neg   (0x00,SP)                        ;0x008CC2,    00 00          
            neg   (0x00,SP)                        ;0x008CC4,    00 00          
            neg   (0x00,SP)                        ;0x008CC6,    00 00          
            neg   (0x00,SP)                        ;0x008CC8,    00 00          
            neg   (0x00,SP)                        ;0x008CCA,    00 00          
            neg   (0x00,SP)                        ;0x008CCC,    00 00          
            neg   (0x00,SP)                        ;0x008CCE,    00 00          
            neg   (0x00,SP)                        ;0x008CD0,    00 00          
            neg   (0x00,SP)                        ;0x008CD2,    00 00          
            neg   (0x00,SP)                        ;0x008CD4,    00 00          
            neg   (0x00,SP)                        ;0x008CD6,    00 00          
            neg   (0x00,SP)                        ;0x008CD8,    00 00          
            neg   (0x00,SP)                        ;0x008CDA,    00 00          
            neg   (0x00,SP)                        ;0x008CDC,    00 00          
            neg   (0x00,SP)                        ;0x008CDE,    00 00          
            neg   (0x00,SP)                        ;0x008CE0,    00 00          
            neg   (0x00,SP)                        ;0x008CE2,    00 00          
            neg   (0x00,SP)                        ;0x008CE4,    00 00          
            neg   (0x00,SP)                        ;0x008CE6,    00 00          
            neg   (0x00,SP)                        ;0x008CE8,    00 00          
            neg   (0x00,SP)                        ;0x008CEA,    00 00          
            neg   (0x00,SP)                        ;0x008CEC,    00 00          
            neg   (0x00,SP)                        ;0x008CEE,    00 00          
            neg   (0x00,SP)                        ;0x008CF0,    00 00          
            neg   (0x00,SP)                        ;0x008CF2,    00 00          
            neg   (0x00,SP)                        ;0x008CF4,    00 00          
            neg   (0x00,SP)                        ;0x008CF6,    00 00          
            neg   (0x00,SP)                        ;0x008CF8,    00 00          
            neg   (0x00,SP)                        ;0x008CFA,    00 00          
            neg   (0x00,SP)                        ;0x008CFC,    00 00          
            neg   (0x00,SP)                        ;0x008CFE,    00 00          
            neg   (0x00,SP)                        ;0x008D00,    00 00          
            neg   (0x00,SP)                        ;0x008D02,    00 00          
            neg   (0x00,SP)                        ;0x008D04,    00 00          
            neg   (0x00,SP)                        ;0x008D06,    00 00          
            neg   (0x00,SP)                        ;0x008D08,    00 00          
            neg   (0x00,SP)                        ;0x008D0A,    00 00          
            neg   (0x00,SP)                        ;0x008D0C,    00 00          
            neg   (0x00,SP)                        ;0x008D0E,    00 00          
            neg   (0x00,SP)                        ;0x008D10,    00 00          
            neg   (0x00,SP)                        ;0x008D12,    00 00          
            neg   (0x00,SP)                        ;0x008D14,    00 00          
            neg   (0x00,SP)                        ;0x008D16,    00 00          
            neg   (0x00,SP)                        ;0x008D18,    00 00          
            neg   (0x00,SP)                        ;0x008D1A,    00 00          
            neg   (0x00,SP)                        ;0x008D1C,    00 00          
            neg   (0x00,SP)                        ;0x008D1E,    00 00          
            neg   (0x00,SP)                        ;0x008D20,    00 00          
            neg   (0x00,SP)                        ;0x008D22,    00 00          
            neg   (0x00,SP)                        ;0x008D24,    00 00          
            neg   (0x00,SP)                        ;0x008D26,    00 00          
            neg   (0x00,SP)                        ;0x008D28,    00 00          
            neg   (0x00,SP)                        ;0x008D2A,    00 00          
            neg   (0x00,SP)                        ;0x008D2C,    00 00          
            neg   (0x00,SP)                        ;0x008D2E,    00 00          
            neg   (0x00,SP)                        ;0x008D30,    00 00          
            neg   (0x00,SP)                        ;0x008D32,    00 00          
            neg   (0x00,SP)                        ;0x008D34,    00 00          
            neg   (0x00,SP)                        ;0x008D36,    00 00          
            neg   (0x00,SP)                        ;0x008D38,    00 00          
            neg   (0x00,SP)                        ;0x008D3A,    00 00          
            neg   (0x00,SP)                        ;0x008D3C,    00 00          
            neg   (0x00,SP)                        ;0x008D3E,    00 00          
            neg   (0x00,SP)                        ;0x008D40,    00 00          
            neg   (0x00,SP)                        ;0x008D42,    00 00          
            neg   (0x00,SP)                        ;0x008D44,    00 00          
            neg   (0x00,SP)                        ;0x008D46,    00 00          
            neg   (0x00,SP)                        ;0x008D48,    00 00          
            neg   (0x00,SP)                        ;0x008D4A,    00 00          
            neg   (0x00,SP)                        ;0x008D4C,    00 00          
            neg   (0x00,SP)                        ;0x008D4E,    00 00          
            neg   (0x00,SP)                        ;0x008D50,    00 00          
            neg   (0x00,SP)                        ;0x008D52,    00 00          
            neg   (0x00,SP)                        ;0x008D54,    00 00          
            neg   (0x00,SP)                        ;0x008D56,    00 00          
            neg   (0x00,SP)                        ;0x008D58,    00 00          
            neg   (0x00,SP)                        ;0x008D5A,    00 00          
            neg   (0x00,SP)                        ;0x008D5C,    00 00          
            neg   (0x00,SP)                        ;0x008D5E,    00 00          
            neg   (0x00,SP)                        ;0x008D60,    00 00          
            neg   (0x00,SP)                        ;0x008D62,    00 00          
            neg   (0x00,SP)                        ;0x008D64,    00 00          
            neg   (0x00,SP)                        ;0x008D66,    00 00          
            neg   (0x00,SP)                        ;0x008D68,    00 00          
            neg   (0x00,SP)                        ;0x008D6A,    00 00          
            neg   (0x00,SP)                        ;0x008D6C,    00 00          
            neg   (0x00,SP)                        ;0x008D6E,    00 00          
            neg   (0x00,SP)                        ;0x008D70,    00 00          
            neg   (0x00,SP)                        ;0x008D72,    00 00          
            neg   (0x00,SP)                        ;0x008D74,    00 00          
            neg   (0x00,SP)                        ;0x008D76,    00 00          
            neg   (0x00,SP)                        ;0x008D78,    00 00          
            neg   (0x00,SP)                        ;0x008D7A,    00 00          
            neg   (0x00,SP)                        ;0x008D7C,    00 00          
            neg   (0x00,SP)                        ;0x008D7E,    00 00          
            neg   (0x00,SP)                        ;0x008D80,    00 00          
            neg   (0x00,SP)                        ;0x008D82,    00 00          
            neg   (0x00,SP)                        ;0x008D84,    00 00          
            neg   (0x00,SP)                        ;0x008D86,    00 00          
            neg   (0x00,SP)                        ;0x008D88,    00 00          
            neg   (0x00,SP)                        ;0x008D8A,    00 00          
            neg   (0x00,SP)                        ;0x008D8C,    00 00          
            neg   (0x00,SP)                        ;0x008D8E,    00 00          
            neg   (0x00,SP)                        ;0x008D90,    00 00          
            neg   (0x00,SP)                        ;0x008D92,    00 00          
            neg   (0x00,SP)                        ;0x008D94,    00 00          
            neg   (0x00,SP)                        ;0x008D96,    00 00          
            neg   (0x00,SP)                        ;0x008D98,    00 00          
            neg   (0x00,SP)                        ;0x008D9A,    00 00          
            neg   (0x00,SP)                        ;0x008D9C,    00 00          
            neg   (0x00,SP)                        ;0x008D9E,    00 00          
            neg   (0x00,SP)                        ;0x008DA0,    00 00          
            neg   (0x00,SP)                        ;0x008DA2,    00 00          
            neg   (0x00,SP)                        ;0x008DA4,    00 00          
            neg   (0x00,SP)                        ;0x008DA6,    00 00          
            neg   (0x00,SP)                        ;0x008DA8,    00 00          
            neg   (0x00,SP)                        ;0x008DAA,    00 00          
            neg   (0x00,SP)                        ;0x008DAC,    00 00          
            neg   (0x00,SP)                        ;0x008DAE,    00 00          
            neg   (0x00,SP)                        ;0x008DB0,    00 00          
            neg   (0x00,SP)                        ;0x008DB2,    00 00          
            neg   (0x00,SP)                        ;0x008DB4,    00 00          
            neg   (0x00,SP)                        ;0x008DB6,    00 00          
            neg   (0x00,SP)                        ;0x008DB8,    00 00          
            neg   (0x00,SP)                        ;0x008DBA,    00 00          
            neg   (0x00,SP)                        ;0x008DBC,    00 00          
            neg   (0x00,SP)                        ;0x008DBE,    00 00          
            neg   (0x00,SP)                        ;0x008DC0,    00 00          
            neg   (0x00,SP)                        ;0x008DC2,    00 00          
            neg   (0x00,SP)                        ;0x008DC4,    00 00          
            neg   (0x00,SP)                        ;0x008DC6,    00 00          
            neg   (0x00,SP)                        ;0x008DC8,    00 00          
            neg   (0x00,SP)                        ;0x008DCA,    00 00          
            neg   (0x00,SP)                        ;0x008DCC,    00 00          
            neg   (0x00,SP)                        ;0x008DCE,    00 00          
            neg   (0x00,SP)                        ;0x008DD0,    00 00          
            neg   (0x00,SP)                        ;0x008DD2,    00 00          
            neg   (0x00,SP)                        ;0x008DD4,    00 00          
            neg   (0x00,SP)                        ;0x008DD6,    00 00          
            neg   (0x00,SP)                        ;0x008DD8,    00 00          
            neg   (0x00,SP)                        ;0x008DDA,    00 00          
            neg   (0x00,SP)                        ;0x008DDC,    00 00          
            neg   (0x00,SP)                        ;0x008DDE,    00 00          
            neg   (0x00,SP)                        ;0x008DE0,    00 00          
            neg   (0x00,SP)                        ;0x008DE2,    00 00          
            neg   (0x00,SP)                        ;0x008DE4,    00 00          
            neg   (0x00,SP)                        ;0x008DE6,    00 00          
            neg   (0x00,SP)                        ;0x008DE8,    00 00          
            neg   (0x00,SP)                        ;0x008DEA,    00 00          
            neg   (0x00,SP)                        ;0x008DEC,    00 00          
            neg   (0x00,SP)                        ;0x008DEE,    00 00          
            neg   (0x00,SP)                        ;0x008DF0,    00 00          
            neg   (0x00,SP)                        ;0x008DF2,    00 00          
            neg   (0x00,SP)                        ;0x008DF4,    00 00          
            neg   (0x00,SP)                        ;0x008DF6,    00 00          
            neg   (0x00,SP)                        ;0x008DF8,    00 00          
            neg   (0x00,SP)                        ;0x008DFA,    00 00          
            neg   (0x00,SP)                        ;0x008DFC,    00 00          
            neg   (0x00,SP)                        ;0x008DFE,    00 00          
            neg   (0x00,SP)                        ;0x008E00,    00 00          
            neg   (0x00,SP)                        ;0x008E02,    00 00          
            neg   (0x00,SP)                        ;0x008E04,    00 00          
            neg   (0x00,SP)                        ;0x008E06,    00 00          
            neg   (0x00,SP)                        ;0x008E08,    00 00          
            neg   (0x00,SP)                        ;0x008E0A,    00 00          
            neg   (0x00,SP)                        ;0x008E0C,    00 00          
            neg   (0x00,SP)                        ;0x008E0E,    00 00          
            neg   (0x00,SP)                        ;0x008E10,    00 00          
            neg   (0x00,SP)                        ;0x008E12,    00 00          
            neg   (0x00,SP)                        ;0x008E14,    00 00          
            neg   (0x00,SP)                        ;0x008E16,    00 00          
            neg   (0x00,SP)                        ;0x008E18,    00 00          
            neg   (0x00,SP)                        ;0x008E1A,    00 00          
            neg   (0x00,SP)                        ;0x008E1C,    00 00          
            neg   (0x00,SP)                        ;0x008E1E,    00 00          
            neg   (0x00,SP)                        ;0x008E20,    00 00          
            neg   (0x00,SP)                        ;0x008E22,    00 00          
            neg   (0x00,SP)                        ;0x008E24,    00 00          
            neg   (0x00,SP)                        ;0x008E26,    00 00          
            neg   (0x00,SP)                        ;0x008E28,    00 00          
            neg   (0x00,SP)                        ;0x008E2A,    00 00          
            neg   (0x00,SP)                        ;0x008E2C,    00 00          
            neg   (0x00,SP)                        ;0x008E2E,    00 00          
            neg   (0x00,SP)                        ;0x008E30,    00 00          
            neg   (0x00,SP)                        ;0x008E32,    00 00          
            neg   (0x00,SP)                        ;0x008E34,    00 00          
            neg   (0x00,SP)                        ;0x008E36,    00 00          
            neg   (0x00,SP)                        ;0x008E38,    00 00          
            neg   (0x00,SP)                        ;0x008E3A,    00 00          
            neg   (0x00,SP)                        ;0x008E3C,    00 00          
            neg   (0x00,SP)                        ;0x008E3E,    00 00          
            neg   (0x00,SP)                        ;0x008E40,    00 00          
            neg   (0x00,SP)                        ;0x008E42,    00 00          
            neg   (0x00,SP)                        ;0x008E44,    00 00          
            neg   (0x00,SP)                        ;0x008E46,    00 00          
            neg   (0x00,SP)                        ;0x008E48,    00 00          
            neg   (0x00,SP)                        ;0x008E4A,    00 00          
            neg   (0x00,SP)                        ;0x008E4C,    00 00          
            neg   (0x00,SP)                        ;0x008E4E,    00 00          
            neg   (0x00,SP)                        ;0x008E50,    00 00          
            neg   (0x00,SP)                        ;0x008E52,    00 00          
            neg   (0x00,SP)                        ;0x008E54,    00 00          
            neg   (0x00,SP)                        ;0x008E56,    00 00          
            neg   (0x00,SP)                        ;0x008E58,    00 00          
            neg   (0x00,SP)                        ;0x008E5A,    00 00          
            neg   (0x00,SP)                        ;0x008E5C,    00 00          
            neg   (0x00,SP)                        ;0x008E5E,    00 00          
            neg   (0x00,SP)                        ;0x008E60,    00 00          
            neg   (0x00,SP)                        ;0x008E62,    00 00          
            neg   (0x00,SP)                        ;0x008E64,    00 00          
            neg   (0x00,SP)                        ;0x008E66,    00 00          
            neg   (0x00,SP)                        ;0x008E68,    00 00          
            neg   (0x00,SP)                        ;0x008E6A,    00 00          
            neg   (0x00,SP)                        ;0x008E6C,    00 00          
            neg   (0x00,SP)                        ;0x008E6E,    00 00          
            neg   (0x00,SP)                        ;0x008E70,    00 00          
            neg   (0x00,SP)                        ;0x008E72,    00 00          
            neg   (0x00,SP)                        ;0x008E74,    00 00          
            neg   (0x00,SP)                        ;0x008E76,    00 00          
            neg   (0x00,SP)                        ;0x008E78,    00 00          
            neg   (0x00,SP)                        ;0x008E7A,    00 00          
            neg   (0x00,SP)                        ;0x008E7C,    00 00          
            neg   (0x00,SP)                        ;0x008E7E,    00 00          
            neg   (0x00,SP)                        ;0x008E80,    00 00          
            neg   (0x00,SP)                        ;0x008E82,    00 00          
            neg   (0x00,SP)                        ;0x008E84,    00 00          
            neg   (0x00,SP)                        ;0x008E86,    00 00          
            neg   (0x00,SP)                        ;0x008E88,    00 00          
            neg   (0x00,SP)                        ;0x008E8A,    00 00          
            neg   (0x00,SP)                        ;0x008E8C,    00 00          
            neg   (0x00,SP)                        ;0x008E8E,    00 00          
            neg   (0x00,SP)                        ;0x008E90,    00 00          
            neg   (0x00,SP)                        ;0x008E92,    00 00          
            neg   (0x00,SP)                        ;0x008E94,    00 00          
            neg   (0x00,SP)                        ;0x008E96,    00 00          
            neg   (0x00,SP)                        ;0x008E98,    00 00          
            neg   (0x00,SP)                        ;0x008E9A,    00 00          
            neg   (0x00,SP)                        ;0x008E9C,    00 00          
            neg   (0x00,SP)                        ;0x008E9E,    00 00          
            neg   (0x00,SP)                        ;0x008EA0,    00 00          
            neg   (0x00,SP)                        ;0x008EA2,    00 00          
            neg   (0x00,SP)                        ;0x008EA4,    00 00          
            neg   (0x00,SP)                        ;0x008EA6,    00 00          
            neg   (0x00,SP)                        ;0x008EA8,    00 00          
            neg   (0x00,SP)                        ;0x008EAA,    00 00          
            neg   (0x00,SP)                        ;0x008EAC,    00 00          
            neg   (0x00,SP)                        ;0x008EAE,    00 00          
            neg   (0x00,SP)                        ;0x008EB0,    00 00          
            neg   (0x00,SP)                        ;0x008EB2,    00 00          
            neg   (0x00,SP)                        ;0x008EB4,    00 00          
            neg   (0x00,SP)                        ;0x008EB6,    00 00          
            neg   (0x00,SP)                        ;0x008EB8,    00 00          
            neg   (0x00,SP)                        ;0x008EBA,    00 00          
            neg   (0x00,SP)                        ;0x008EBC,    00 00          
            neg   (0x00,SP)                        ;0x008EBE,    00 00          
            neg   (0x00,SP)                        ;0x008EC0,    00 00          
            neg   (0x00,SP)                        ;0x008EC2,    00 00          
            neg   (0x00,SP)                        ;0x008EC4,    00 00          
            neg   (0x00,SP)                        ;0x008EC6,    00 00          
            neg   (0x00,SP)                        ;0x008EC8,    00 00          
            neg   (0x00,SP)                        ;0x008ECA,    00 00          
            neg   (0x00,SP)                        ;0x008ECC,    00 00          
            neg   (0x00,SP)                        ;0x008ECE,    00 00          
            neg   (0x00,SP)                        ;0x008ED0,    00 00          
            neg   (0x00,SP)                        ;0x008ED2,    00 00          
            neg   (0x00,SP)                        ;0x008ED4,    00 00          
            neg   (0x00,SP)                        ;0x008ED6,    00 00          
            neg   (0x00,SP)                        ;0x008ED8,    00 00          
            neg   (0x00,SP)                        ;0x008EDA,    00 00          
            neg   (0x00,SP)                        ;0x008EDC,    00 00          
            neg   (0x00,SP)                        ;0x008EDE,    00 00          
            neg   (0x00,SP)                        ;0x008EE0,    00 00          
            neg   (0x00,SP)                        ;0x008EE2,    00 00          
            neg   (0x00,SP)                        ;0x008EE4,    00 00          
            neg   (0x00,SP)                        ;0x008EE6,    00 00          
            neg   (0x00,SP)                        ;0x008EE8,    00 00          
            neg   (0x00,SP)                        ;0x008EEA,    00 00          
            neg   (0x00,SP)                        ;0x008EEC,    00 00          
            neg   (0x00,SP)                        ;0x008EEE,    00 00          
            neg   (0x00,SP)                        ;0x008EF0,    00 00          
            neg   (0x00,SP)                        ;0x008EF2,    00 00          
            neg   (0x00,SP)                        ;0x008EF4,    00 00          
            neg   (0x00,SP)                        ;0x008EF6,    00 00          
            neg   (0x00,SP)                        ;0x008EF8,    00 00          
            neg   (0x00,SP)                        ;0x008EFA,    00 00          
            neg   (0x00,SP)                        ;0x008EFC,    00 00          
            neg   (0x00,SP)                        ;0x008EFE,    00 00          
            neg   (0x00,SP)                        ;0x008F00,    00 00          
            neg   (0x00,SP)                        ;0x008F02,    00 00          
            neg   (0x00,SP)                        ;0x008F04,    00 00          
            neg   (0x00,SP)                        ;0x008F06,    00 00          
            neg   (0x00,SP)                        ;0x008F08,    00 00          
            neg   (0x00,SP)                        ;0x008F0A,    00 00          
            neg   (0x00,SP)                        ;0x008F0C,    00 00          
            neg   (0x00,SP)                        ;0x008F0E,    00 00          
            neg   (0x00,SP)                        ;0x008F10,    00 00          
            neg   (0x00,SP)                        ;0x008F12,    00 00          
            neg   (0x00,SP)                        ;0x008F14,    00 00          
            neg   (0x00,SP)                        ;0x008F16,    00 00          
            neg   (0x00,SP)                        ;0x008F18,    00 00          
            neg   (0x00,SP)                        ;0x008F1A,    00 00          
            neg   (0x00,SP)                        ;0x008F1C,    00 00          
            neg   (0x00,SP)                        ;0x008F1E,    00 00          
            neg   (0x00,SP)                        ;0x008F20,    00 00          
            neg   (0x00,SP)                        ;0x008F22,    00 00          
            neg   (0x00,SP)                        ;0x008F24,    00 00          
            neg   (0x00,SP)                        ;0x008F26,    00 00          
            neg   (0x00,SP)                        ;0x008F28,    00 00          
            neg   (0x00,SP)                        ;0x008F2A,    00 00          
            neg   (0x00,SP)                        ;0x008F2C,    00 00          
            neg   (0x00,SP)                        ;0x008F2E,    00 00          
            neg   (0x00,SP)                        ;0x008F30,    00 00          
            neg   (0x00,SP)                        ;0x008F32,    00 00          
            neg   (0x00,SP)                        ;0x008F34,    00 00          
            neg   (0x00,SP)                        ;0x008F36,    00 00          
            neg   (0x00,SP)                        ;0x008F38,    00 00          
            neg   (0x00,SP)                        ;0x008F3A,    00 00          
            neg   (0x00,SP)                        ;0x008F3C,    00 00          
            neg   (0x00,SP)                        ;0x008F3E,    00 00          
            neg   (0x00,SP)                        ;0x008F40,    00 00          
            neg   (0x00,SP)                        ;0x008F42,    00 00          
            neg   (0x00,SP)                        ;0x008F44,    00 00          
            neg   (0x00,SP)                        ;0x008F46,    00 00          
            neg   (0x00,SP)                        ;0x008F48,    00 00          
            neg   (0x00,SP)                        ;0x008F4A,    00 00          
            neg   (0x00,SP)                        ;0x008F4C,    00 00          
            neg   (0x00,SP)                        ;0x008F4E,    00 00          
            neg   (0x00,SP)                        ;0x008F50,    00 00          
            neg   (0x00,SP)                        ;0x008F52,    00 00          
            neg   (0x00,SP)                        ;0x008F54,    00 00          
            neg   (0x00,SP)                        ;0x008F56,    00 00          
            neg   (0x00,SP)                        ;0x008F58,    00 00          
            neg   (0x00,SP)                        ;0x008F5A,    00 00          
            neg   (0x00,SP)                        ;0x008F5C,    00 00          
            neg   (0x00,SP)                        ;0x008F5E,    00 00          
            neg   (0x00,SP)                        ;0x008F60,    00 00          
            neg   (0x00,SP)                        ;0x008F62,    00 00          
            neg   (0x00,SP)                        ;0x008F64,    00 00          
            neg   (0x00,SP)                        ;0x008F66,    00 00          
            neg   (0x00,SP)                        ;0x008F68,    00 00          
            neg   (0x00,SP)                        ;0x008F6A,    00 00          
            neg   (0x00,SP)                        ;0x008F6C,    00 00          
            neg   (0x00,SP)                        ;0x008F6E,    00 00          
            neg   (0x00,SP)                        ;0x008F70,    00 00          
            neg   (0x00,SP)                        ;0x008F72,    00 00          
            neg   (0x00,SP)                        ;0x008F74,    00 00          
            neg   (0x00,SP)                        ;0x008F76,    00 00          
            neg   (0x00,SP)                        ;0x008F78,    00 00          
            neg   (0x00,SP)                        ;0x008F7A,    00 00          
            neg   (0x00,SP)                        ;0x008F7C,    00 00          
            neg   (0x00,SP)                        ;0x008F7E,    00 00          
            neg   (0x00,SP)                        ;0x008F80,    00 00          
            neg   (0x00,SP)                        ;0x008F82,    00 00          
            neg   (0x00,SP)                        ;0x008F84,    00 00          
            neg   (0x00,SP)                        ;0x008F86,    00 00          
            neg   (0x00,SP)                        ;0x008F88,    00 00          
            neg   (0x00,SP)                        ;0x008F8A,    00 00          
            neg   (0x00,SP)                        ;0x008F8C,    00 00          
            neg   (0x00,SP)                        ;0x008F8E,    00 00          
            neg   (0x00,SP)                        ;0x008F90,    00 00          
            neg   (0x00,SP)                        ;0x008F92,    00 00          
            neg   (0x00,SP)                        ;0x008F94,    00 00          
            neg   (0x00,SP)                        ;0x008F96,    00 00          
            neg   (0x00,SP)                        ;0x008F98,    00 00          
            neg   (0x00,SP)                        ;0x008F9A,    00 00          
            neg   (0x00,SP)                        ;0x008F9C,    00 00          
            neg   (0x00,SP)                        ;0x008F9E,    00 00          
            neg   (0x00,SP)                        ;0x008FA0,    00 00          
            neg   (0x00,SP)                        ;0x008FA2,    00 00          
            neg   (0x00,SP)                        ;0x008FA4,    00 00          
            neg   (0x00,SP)                        ;0x008FA6,    00 00          
            neg   (0x00,SP)                        ;0x008FA8,    00 00          
            neg   (0x00,SP)                        ;0x008FAA,    00 00          
            neg   (0x00,SP)                        ;0x008FAC,    00 00          
            neg   (0x00,SP)                        ;0x008FAE,    00 00          
            neg   (0x00,SP)                        ;0x008FB0,    00 00          
            neg   (0x00,SP)                        ;0x008FB2,    00 00          
            neg   (0x00,SP)                        ;0x008FB4,    00 00          
            neg   (0x00,SP)                        ;0x008FB6,    00 00          
            neg   (0x00,SP)                        ;0x008FB8,    00 00          
            neg   (0x00,SP)                        ;0x008FBA,    00 00          
            neg   (0x00,SP)                        ;0x008FBC,    00 00          
            neg   (0x00,SP)                        ;0x008FBE,    00 00          
            neg   (0x00,SP)                        ;0x008FC0,    00 00          
            neg   (0x00,SP)                        ;0x008FC2,    00 00          
            neg   (0x00,SP)                        ;0x008FC4,    00 00          
            neg   (0x00,SP)                        ;0x008FC6,    00 00          
            neg   (0x00,SP)                        ;0x008FC8,    00 00          
            neg   (0x00,SP)                        ;0x008FCA,    00 00          
            neg   (0x00,SP)                        ;0x008FCC,    00 00          
            neg   (0x00,SP)                        ;0x008FCE,    00 00          
            neg   (0x00,SP)                        ;0x008FD0,    00 00          
            neg   (0x00,SP)                        ;0x008FD2,    00 00          
            neg   (0x00,SP)                        ;0x008FD4,    00 00          
            neg   (0x00,SP)                        ;0x008FD6,    00 00          
            neg   (0x00,SP)                        ;0x008FD8,    00 00          
            neg   (0x00,SP)                        ;0x008FDA,    00 00          
            neg   (0x00,SP)                        ;0x008FDC,    00 00          
            neg   (0x00,SP)                        ;0x008FDE,    00 00          
            neg   (0x00,SP)                        ;0x008FE0,    00 00          
            neg   (0x00,SP)                        ;0x008FE2,    00 00          
            neg   (0x00,SP)                        ;0x008FE4,    00 00          
            neg   (0x00,SP)                        ;0x008FE6,    00 00          
            neg   (0x00,SP)                        ;0x008FE8,    00 00          
            neg   (0x00,SP)                        ;0x008FEA,    00 00          
            neg   (0x00,SP)                        ;0x008FEC,    00 00          
            neg   (0x00,SP)                        ;0x008FEE,    00 00          
            neg   (0x00,SP)                        ;0x008FF0,    00 00          
            neg   (0x00,SP)                        ;0x008FF2,    00 00          
            neg   (0x00,SP)                        ;0x008FF4,    00 00          
            neg   (0x00,SP)                        ;0x008FF6,    00 00          
            neg   (0x00,SP)                        ;0x008FF8,    00 00          
            neg   (0x00,SP)                        ;0x008FFA,    00 00          
            neg   (0x00,SP)                        ;0x008FFC,    00 00          
            neg   (0x00,SP)                        ;0x008FFE,    00 00          
            neg   (0x00,SP)                        ;0x009000,    00 00          
            neg   (0x00,SP)                        ;0x009002,    00 00          
            neg   (0x00,SP)                        ;0x009004,    00 00          
            neg   (0x00,SP)                        ;0x009006,    00 00          
            neg   (0x00,SP)                        ;0x009008,    00 00          
            neg   (0x00,SP)                        ;0x00900A,    00 00          
            neg   (0x00,SP)                        ;0x00900C,    00 00          
            neg   (0x00,SP)                        ;0x00900E,    00 00          
            neg   (0x00,SP)                        ;0x009010,    00 00          
            neg   (0x00,SP)                        ;0x009012,    00 00          
            neg   (0x00,SP)                        ;0x009014,    00 00          
            neg   (0x00,SP)                        ;0x009016,    00 00          
            neg   (0x00,SP)                        ;0x009018,    00 00          
            neg   (0x00,SP)                        ;0x00901A,    00 00          
            neg   (0x00,SP)                        ;0x00901C,    00 00          
            neg   (0x00,SP)                        ;0x00901E,    00 00          
            neg   (0x00,SP)                        ;0x009020,    00 00          
            neg   (0x00,SP)                        ;0x009022,    00 00          
            neg   (0x00,SP)                        ;0x009024,    00 00          
            neg   (0x00,SP)                        ;0x009026,    00 00          
            neg   (0x00,SP)                        ;0x009028,    00 00          
            neg   (0x00,SP)                        ;0x00902A,    00 00          
            neg   (0x00,SP)                        ;0x00902C,    00 00          
            neg   (0x00,SP)                        ;0x00902E,    00 00          
            neg   (0x00,SP)                        ;0x009030,    00 00          
            neg   (0x00,SP)                        ;0x009032,    00 00          
            neg   (0x00,SP)                        ;0x009034,    00 00          
            neg   (0x00,SP)                        ;0x009036,    00 00          
            neg   (0x00,SP)                        ;0x009038,    00 00          
            neg   (0x00,SP)                        ;0x00903A,    00 00          
            neg   (0x00,SP)                        ;0x00903C,    00 00          
            neg   (0x00,SP)                        ;0x00903E,    00 00          
            neg   (0x00,SP)                        ;0x009040,    00 00          
            neg   (0x00,SP)                        ;0x009042,    00 00          
            neg   (0x00,SP)                        ;0x009044,    00 00          
            neg   (0x00,SP)                        ;0x009046,    00 00          
            neg   (0x00,SP)                        ;0x009048,    00 00          
            neg   (0x00,SP)                        ;0x00904A,    00 00          
            neg   (0x00,SP)                        ;0x00904C,    00 00          
            neg   (0x00,SP)                        ;0x00904E,    00 00          
            neg   (0x00,SP)                        ;0x009050,    00 00          
            neg   (0x00,SP)                        ;0x009052,    00 00          
            neg   (0x00,SP)                        ;0x009054,    00 00          
            neg   (0x00,SP)                        ;0x009056,    00 00          
            neg   (0x00,SP)                        ;0x009058,    00 00          
            neg   (0x00,SP)                        ;0x00905A,    00 00          
            neg   (0x00,SP)                        ;0x00905C,    00 00          
            neg   (0x00,SP)                        ;0x00905E,    00 00          
            neg   (0x00,SP)                        ;0x009060,    00 00          
            neg   (0x00,SP)                        ;0x009062,    00 00          
            neg   (0x00,SP)                        ;0x009064,    00 00          
            neg   (0x00,SP)                        ;0x009066,    00 00          
            neg   (0x00,SP)                        ;0x009068,    00 00          
            neg   (0x00,SP)                        ;0x00906A,    00 00          
            neg   (0x00,SP)                        ;0x00906C,    00 00          
            neg   (0x00,SP)                        ;0x00906E,    00 00          
            neg   (0x00,SP)                        ;0x009070,    00 00          
            neg   (0x00,SP)                        ;0x009072,    00 00          
            neg   (0x00,SP)                        ;0x009074,    00 00          
            neg   (0x00,SP)                        ;0x009076,    00 00          
            neg   (0x00,SP)                        ;0x009078,    00 00          
            neg   (0x00,SP)                        ;0x00907A,    00 00          
            neg   (0x00,SP)                        ;0x00907C,    00 00          
            neg   (0x00,SP)                        ;0x00907E,    00 00          
            neg   (0x00,SP)                        ;0x009080,    00 00          
            neg   (0x00,SP)                        ;0x009082,    00 00          
            neg   (0x00,SP)                        ;0x009084,    00 00          
            neg   (0x00,SP)                        ;0x009086,    00 00          
            neg   (0x00,SP)                        ;0x009088,    00 00          
            neg   (0x00,SP)                        ;0x00908A,    00 00          
            neg   (0x00,SP)                        ;0x00908C,    00 00          
            neg   (0x00,SP)                        ;0x00908E,    00 00          
            neg   (0x00,SP)                        ;0x009090,    00 00          
            neg   (0x00,SP)                        ;0x009092,    00 00          
            neg   (0x00,SP)                        ;0x009094,    00 00          
            neg   (0x00,SP)                        ;0x009096,    00 00          
            neg   (0x00,SP)                        ;0x009098,    00 00          
            neg   (0x00,SP)                        ;0x00909A,    00 00          
            neg   (0x00,SP)                        ;0x00909C,    00 00          
            neg   (0x00,SP)                        ;0x00909E,    00 00          
            neg   (0x00,SP)                        ;0x0090A0,    00 00          
            neg   (0x00,SP)                        ;0x0090A2,    00 00          
            neg   (0x00,SP)                        ;0x0090A4,    00 00          
            neg   (0x00,SP)                        ;0x0090A6,    00 00          
            neg   (0x00,SP)                        ;0x0090A8,    00 00          
            neg   (0x00,SP)                        ;0x0090AA,    00 00          
            neg   (0x00,SP)                        ;0x0090AC,    00 00          
            neg   (0x00,SP)                        ;0x0090AE,    00 00          
            neg   (0x00,SP)                        ;0x0090B0,    00 00          
            neg   (0x00,SP)                        ;0x0090B2,    00 00          
            neg   (0x00,SP)                        ;0x0090B4,    00 00          
            neg   (0x00,SP)                        ;0x0090B6,    00 00          
            neg   (0x00,SP)                        ;0x0090B8,    00 00          
            neg   (0x00,SP)                        ;0x0090BA,    00 00          
            neg   (0x00,SP)                        ;0x0090BC,    00 00          
            neg   (0x00,SP)                        ;0x0090BE,    00 00          
            neg   (0x00,SP)                        ;0x0090C0,    00 00          
            neg   (0x00,SP)                        ;0x0090C2,    00 00          
            neg   (0x00,SP)                        ;0x0090C4,    00 00          
            neg   (0x00,SP)                        ;0x0090C6,    00 00          
            neg   (0x00,SP)                        ;0x0090C8,    00 00          
            neg   (0x00,SP)                        ;0x0090CA,    00 00          
            neg   (0x00,SP)                        ;0x0090CC,    00 00          
            neg   (0x00,SP)                        ;0x0090CE,    00 00          
            neg   (0x00,SP)                        ;0x0090D0,    00 00          
            neg   (0x00,SP)                        ;0x0090D2,    00 00          
            neg   (0x00,SP)                        ;0x0090D4,    00 00          
            neg   (0x00,SP)                        ;0x0090D6,    00 00          
            neg   (0x00,SP)                        ;0x0090D8,    00 00          
            neg   (0x00,SP)                        ;0x0090DA,    00 00          
            neg   (0x00,SP)                        ;0x0090DC,    00 00          
            neg   (0x00,SP)                        ;0x0090DE,    00 00          
            neg   (0x00,SP)                        ;0x0090E0,    00 00          
            neg   (0x00,SP)                        ;0x0090E2,    00 00          
            neg   (0x00,SP)                        ;0x0090E4,    00 00          
            neg   (0x00,SP)                        ;0x0090E6,    00 00          
            neg   (0x00,SP)                        ;0x0090E8,    00 00          
            neg   (0x00,SP)                        ;0x0090EA,    00 00          
            neg   (0x00,SP)                        ;0x0090EC,    00 00          
            neg   (0x00,SP)                        ;0x0090EE,    00 00          
            neg   (0x00,SP)                        ;0x0090F0,    00 00          
            neg   (0x00,SP)                        ;0x0090F2,    00 00          
            neg   (0x00,SP)                        ;0x0090F4,    00 00          
            neg   (0x00,SP)                        ;0x0090F6,    00 00          
            neg   (0x00,SP)                        ;0x0090F8,    00 00          
            neg   (0x00,SP)                        ;0x0090FA,    00 00          
            neg   (0x00,SP)                        ;0x0090FC,    00 00          
            neg   (0x00,SP)                        ;0x0090FE,    00 00          
            neg   (0x00,SP)                        ;0x009100,    00 00          
            neg   (0x00,SP)                        ;0x009102,    00 00          
            neg   (0x00,SP)                        ;0x009104,    00 00          
            neg   (0x00,SP)                        ;0x009106,    00 00          
            neg   (0x00,SP)                        ;0x009108,    00 00          
            neg   (0x00,SP)                        ;0x00910A,    00 00          
            neg   (0x00,SP)                        ;0x00910C,    00 00          
            neg   (0x00,SP)                        ;0x00910E,    00 00          
            neg   (0x00,SP)                        ;0x009110,    00 00          
            neg   (0x00,SP)                        ;0x009112,    00 00          
            neg   (0x00,SP)                        ;0x009114,    00 00          
            neg   (0x00,SP)                        ;0x009116,    00 00          
            neg   (0x00,SP)                        ;0x009118,    00 00          
            neg   (0x00,SP)                        ;0x00911A,    00 00          
            neg   (0x00,SP)                        ;0x00911C,    00 00          
            neg   (0x00,SP)                        ;0x00911E,    00 00          
            neg   (0x00,SP)                        ;0x009120,    00 00          
            neg   (0x00,SP)                        ;0x009122,    00 00          
            neg   (0x00,SP)                        ;0x009124,    00 00          
            neg   (0x00,SP)                        ;0x009126,    00 00          
            neg   (0x00,SP)                        ;0x009128,    00 00          
            neg   (0x00,SP)                        ;0x00912A,    00 00          
            neg   (0x00,SP)                        ;0x00912C,    00 00          
            neg   (0x00,SP)                        ;0x00912E,    00 00          
            neg   (0x00,SP)                        ;0x009130,    00 00          
            neg   (0x00,SP)                        ;0x009132,    00 00          
            neg   (0x00,SP)                        ;0x009134,    00 00          
            neg   (0x00,SP)                        ;0x009136,    00 00          
            neg   (0x00,SP)                        ;0x009138,    00 00          
            neg   (0x00,SP)                        ;0x00913A,    00 00          
            neg   (0x00,SP)                        ;0x00913C,    00 00          
            neg   (0x00,SP)                        ;0x00913E,    00 00          
            neg   (0x00,SP)                        ;0x009140,    00 00          
            neg   (0x00,SP)                        ;0x009142,    00 00          
            neg   (0x00,SP)                        ;0x009144,    00 00          
            neg   (0x00,SP)                        ;0x009146,    00 00          
            neg   (0x00,SP)                        ;0x009148,    00 00          
            neg   (0x00,SP)                        ;0x00914A,    00 00          
            neg   (0x00,SP)                        ;0x00914C,    00 00          
            neg   (0x00,SP)                        ;0x00914E,    00 00          
            neg   (0x00,SP)                        ;0x009150,    00 00          
            neg   (0x00,SP)                        ;0x009152,    00 00          
            neg   (0x00,SP)                        ;0x009154,    00 00          
            neg   (0x00,SP)                        ;0x009156,    00 00          
            neg   (0x00,SP)                        ;0x009158,    00 00          
            neg   (0x00,SP)                        ;0x00915A,    00 00          
            neg   (0x00,SP)                        ;0x00915C,    00 00          
            neg   (0x00,SP)                        ;0x00915E,    00 00          
            neg   (0x00,SP)                        ;0x009160,    00 00          
            neg   (0x00,SP)                        ;0x009162,    00 00          
            neg   (0x00,SP)                        ;0x009164,    00 00          
            neg   (0x00,SP)                        ;0x009166,    00 00          
            neg   (0x00,SP)                        ;0x009168,    00 00          
            neg   (0x00,SP)                        ;0x00916A,    00 00          
            neg   (0x00,SP)                        ;0x00916C,    00 00          
            neg   (0x00,SP)                        ;0x00916E,    00 00          
            neg   (0x00,SP)                        ;0x009170,    00 00          
            neg   (0x00,SP)                        ;0x009172,    00 00          
            neg   (0x00,SP)                        ;0x009174,    00 00          
            neg   (0x00,SP)                        ;0x009176,    00 00          
            neg   (0x00,SP)                        ;0x009178,    00 00          
            neg   (0x00,SP)                        ;0x00917A,    00 00          
            neg   (0x00,SP)                        ;0x00917C,    00 00          
            neg   (0x00,SP)                        ;0x00917E,    00 00          
            neg   (0x00,SP)                        ;0x009180,    00 00          
            neg   (0x00,SP)                        ;0x009182,    00 00          
            neg   (0x00,SP)                        ;0x009184,    00 00          
            neg   (0x00,SP)                        ;0x009186,    00 00          
            neg   (0x00,SP)                        ;0x009188,    00 00          
            neg   (0x00,SP)                        ;0x00918A,    00 00          
            neg   (0x00,SP)                        ;0x00918C,    00 00          
            neg   (0x00,SP)                        ;0x00918E,    00 00          
            neg   (0x00,SP)                        ;0x009190,    00 00          
            neg   (0x00,SP)                        ;0x009192,    00 00          
            neg   (0x00,SP)                        ;0x009194,    00 00          
            neg   (0x00,SP)                        ;0x009196,    00 00          
            neg   (0x00,SP)                        ;0x009198,    00 00          
            neg   (0x00,SP)                        ;0x00919A,    00 00          
            neg   (0x00,SP)                        ;0x00919C,    00 00          
            neg   (0x00,SP)                        ;0x00919E,    00 00          
            neg   (0x00,SP)                        ;0x0091A0,    00 00          
            neg   (0x00,SP)                        ;0x0091A2,    00 00          
            neg   (0x00,SP)                        ;0x0091A4,    00 00          
            neg   (0x00,SP)                        ;0x0091A6,    00 00          
            neg   (0x00,SP)                        ;0x0091A8,    00 00          
            neg   (0x00,SP)                        ;0x0091AA,    00 00          
            neg   (0x00,SP)                        ;0x0091AC,    00 00          
            neg   (0x00,SP)                        ;0x0091AE,    00 00          
            neg   (0x00,SP)                        ;0x0091B0,    00 00          
            neg   (0x00,SP)                        ;0x0091B2,    00 00          
            neg   (0x00,SP)                        ;0x0091B4,    00 00          
            neg   (0x00,SP)                        ;0x0091B6,    00 00          
            neg   (0x00,SP)                        ;0x0091B8,    00 00          
            neg   (0x00,SP)                        ;0x0091BA,    00 00          
            neg   (0x00,SP)                        ;0x0091BC,    00 00          
            neg   (0x00,SP)                        ;0x0091BE,    00 00          
            neg   (0x00,SP)                        ;0x0091C0,    00 00          
            neg   (0x00,SP)                        ;0x0091C2,    00 00          
            neg   (0x00,SP)                        ;0x0091C4,    00 00          
            neg   (0x00,SP)                        ;0x0091C6,    00 00          
            neg   (0x00,SP)                        ;0x0091C8,    00 00          
            neg   (0x00,SP)                        ;0x0091CA,    00 00          
            neg   (0x00,SP)                        ;0x0091CC,    00 00          
            neg   (0x00,SP)                        ;0x0091CE,    00 00          
            neg   (0x00,SP)                        ;0x0091D0,    00 00          
            neg   (0x00,SP)                        ;0x0091D2,    00 00          
            neg   (0x00,SP)                        ;0x0091D4,    00 00          
            neg   (0x00,SP)                        ;0x0091D6,    00 00          
            neg   (0x00,SP)                        ;0x0091D8,    00 00          
            neg   (0x00,SP)                        ;0x0091DA,    00 00          
            neg   (0x00,SP)                        ;0x0091DC,    00 00          
            neg   (0x00,SP)                        ;0x0091DE,    00 00          
            neg   (0x00,SP)                        ;0x0091E0,    00 00          
            neg   (0x00,SP)                        ;0x0091E2,    00 00          
            neg   (0x00,SP)                        ;0x0091E4,    00 00          
            neg   (0x00,SP)                        ;0x0091E6,    00 00          
            neg   (0x00,SP)                        ;0x0091E8,    00 00          
            neg   (0x00,SP)                        ;0x0091EA,    00 00          
            neg   (0x00,SP)                        ;0x0091EC,    00 00          
            neg   (0x00,SP)                        ;0x0091EE,    00 00          
            neg   (0x00,SP)                        ;0x0091F0,    00 00          
            neg   (0x00,SP)                        ;0x0091F2,    00 00          
            neg   (0x00,SP)                        ;0x0091F4,    00 00          
            neg   (0x00,SP)                        ;0x0091F6,    00 00          
            neg   (0x00,SP)                        ;0x0091F8,    00 00          
            neg   (0x00,SP)                        ;0x0091FA,    00 00          
            neg   (0x00,SP)                        ;0x0091FC,    00 00          
            neg   (0x00,SP)                        ;0x0091FE,    00 00          
            neg   (0x00,SP)                        ;0x009200,    00 00          
            neg   (0x00,SP)                        ;0x009202,    00 00          
            neg   (0x00,SP)                        ;0x009204,    00 00          
            neg   (0x00,SP)                        ;0x009206,    00 00          
            neg   (0x00,SP)                        ;0x009208,    00 00          
            neg   (0x00,SP)                        ;0x00920A,    00 00          
            neg   (0x00,SP)                        ;0x00920C,    00 00          
            neg   (0x00,SP)                        ;0x00920E,    00 00          
            neg   (0x00,SP)                        ;0x009210,    00 00          
            neg   (0x00,SP)                        ;0x009212,    00 00          
            neg   (0x00,SP)                        ;0x009214,    00 00          
            neg   (0x00,SP)                        ;0x009216,    00 00          
            neg   (0x00,SP)                        ;0x009218,    00 00          
            neg   (0x00,SP)                        ;0x00921A,    00 00          
            neg   (0x00,SP)                        ;0x00921C,    00 00          
            neg   (0x00,SP)                        ;0x00921E,    00 00          
            neg   (0x00,SP)                        ;0x009220,    00 00          
            neg   (0x00,SP)                        ;0x009222,    00 00          
            neg   (0x00,SP)                        ;0x009224,    00 00          
            neg   (0x00,SP)                        ;0x009226,    00 00          
            neg   (0x00,SP)                        ;0x009228,    00 00          
            neg   (0x00,SP)                        ;0x00922A,    00 00          
            neg   (0x00,SP)                        ;0x00922C,    00 00          
            neg   (0x00,SP)                        ;0x00922E,    00 00          
            neg   (0x00,SP)                        ;0x009230,    00 00          
            neg   (0x00,SP)                        ;0x009232,    00 00          
            neg   (0x00,SP)                        ;0x009234,    00 00          
            neg   (0x00,SP)                        ;0x009236,    00 00          
            neg   (0x00,SP)                        ;0x009238,    00 00          
            neg   (0x00,SP)                        ;0x00923A,    00 00          
            neg   (0x00,SP)                        ;0x00923C,    00 00          
            neg   (0x00,SP)                        ;0x00923E,    00 00          
            neg   (0x00,SP)                        ;0x009240,    00 00          
            neg   (0x00,SP)                        ;0x009242,    00 00          
            neg   (0x00,SP)                        ;0x009244,    00 00          
            neg   (0x00,SP)                        ;0x009246,    00 00          
            neg   (0x00,SP)                        ;0x009248,    00 00          
            neg   (0x00,SP)                        ;0x00924A,    00 00          
            neg   (0x00,SP)                        ;0x00924C,    00 00          
            neg   (0x00,SP)                        ;0x00924E,    00 00          
            neg   (0x00,SP)                        ;0x009250,    00 00          
            neg   (0x00,SP)                        ;0x009252,    00 00          
            neg   (0x00,SP)                        ;0x009254,    00 00          
            neg   (0x00,SP)                        ;0x009256,    00 00          
            neg   (0x00,SP)                        ;0x009258,    00 00          
            neg   (0x00,SP)                        ;0x00925A,    00 00          
            neg   (0x00,SP)                        ;0x00925C,    00 00          
            neg   (0x00,SP)                        ;0x00925E,    00 00          
            neg   (0x00,SP)                        ;0x009260,    00 00          
            neg   (0x00,SP)                        ;0x009262,    00 00          
            neg   (0x00,SP)                        ;0x009264,    00 00          
            neg   (0x00,SP)                        ;0x009266,    00 00          
            neg   (0x00,SP)                        ;0x009268,    00 00          
            neg   (0x00,SP)                        ;0x00926A,    00 00          
            neg   (0x00,SP)                        ;0x00926C,    00 00          
            neg   (0x00,SP)                        ;0x00926E,    00 00          
            neg   (0x00,SP)                        ;0x009270,    00 00          
            neg   (0x00,SP)                        ;0x009272,    00 00          
            neg   (0x00,SP)                        ;0x009274,    00 00          
            neg   (0x00,SP)                        ;0x009276,    00 00          
            neg   (0x00,SP)                        ;0x009278,    00 00          
            neg   (0x00,SP)                        ;0x00927A,    00 00          
            neg   (0x00,SP)                        ;0x00927C,    00 00          
            neg   (0x00,SP)                        ;0x00927E,    00 00          
            neg   (0x00,SP)                        ;0x009280,    00 00          
            neg   (0x00,SP)                        ;0x009282,    00 00          
            neg   (0x00,SP)                        ;0x009284,    00 00          
            neg   (0x00,SP)                        ;0x009286,    00 00          
            neg   (0x00,SP)                        ;0x009288,    00 00          
            neg   (0x00,SP)                        ;0x00928A,    00 00          
            neg   (0x00,SP)                        ;0x00928C,    00 00          
            neg   (0x00,SP)                        ;0x00928E,    00 00          
            neg   (0x00,SP)                        ;0x009290,    00 00          
            neg   (0x00,SP)                        ;0x009292,    00 00          
            neg   (0x00,SP)                        ;0x009294,    00 00          
            neg   (0x00,SP)                        ;0x009296,    00 00          
            neg   (0x00,SP)                        ;0x009298,    00 00          
            neg   (0x00,SP)                        ;0x00929A,    00 00          
            neg   (0x00,SP)                        ;0x00929C,    00 00          
            neg   (0x00,SP)                        ;0x00929E,    00 00          
            neg   (0x00,SP)                        ;0x0092A0,    00 00          
            neg   (0x00,SP)                        ;0x0092A2,    00 00          
            neg   (0x00,SP)                        ;0x0092A4,    00 00          
            neg   (0x00,SP)                        ;0x0092A6,    00 00          
            neg   (0x00,SP)                        ;0x0092A8,    00 00          
            neg   (0x00,SP)                        ;0x0092AA,    00 00          
            neg   (0x00,SP)                        ;0x0092AC,    00 00          
            neg   (0x00,SP)                        ;0x0092AE,    00 00          
            neg   (0x00,SP)                        ;0x0092B0,    00 00          
            neg   (0x00,SP)                        ;0x0092B2,    00 00          
            neg   (0x00,SP)                        ;0x0092B4,    00 00          
            neg   (0x00,SP)                        ;0x0092B6,    00 00          
            neg   (0x00,SP)                        ;0x0092B8,    00 00          
            neg   (0x00,SP)                        ;0x0092BA,    00 00          
            neg   (0x00,SP)                        ;0x0092BC,    00 00          
            neg   (0x00,SP)                        ;0x0092BE,    00 00          
            neg   (0x00,SP)                        ;0x0092C0,    00 00          
            neg   (0x00,SP)                        ;0x0092C2,    00 00          
            neg   (0x00,SP)                        ;0x0092C4,    00 00          
            neg   (0x00,SP)                        ;0x0092C6,    00 00          
            neg   (0x00,SP)                        ;0x0092C8,    00 00          
            neg   (0x00,SP)                        ;0x0092CA,    00 00          
            neg   (0x00,SP)                        ;0x0092CC,    00 00          
            neg   (0x00,SP)                        ;0x0092CE,    00 00          
            neg   (0x00,SP)                        ;0x0092D0,    00 00          
            neg   (0x00,SP)                        ;0x0092D2,    00 00          
            neg   (0x00,SP)                        ;0x0092D4,    00 00          
            neg   (0x00,SP)                        ;0x0092D6,    00 00          
            neg   (0x00,SP)                        ;0x0092D8,    00 00          
            neg   (0x00,SP)                        ;0x0092DA,    00 00          
            neg   (0x00,SP)                        ;0x0092DC,    00 00          
            neg   (0x00,SP)                        ;0x0092DE,    00 00          
            neg   (0x00,SP)                        ;0x0092E0,    00 00          
            neg   (0x00,SP)                        ;0x0092E2,    00 00          
            neg   (0x00,SP)                        ;0x0092E4,    00 00          
            neg   (0x00,SP)                        ;0x0092E6,    00 00          
            neg   (0x00,SP)                        ;0x0092E8,    00 00          
            neg   (0x00,SP)                        ;0x0092EA,    00 00          
            neg   (0x00,SP)                        ;0x0092EC,    00 00          
            neg   (0x00,SP)                        ;0x0092EE,    00 00          
            neg   (0x00,SP)                        ;0x0092F0,    00 00          
            neg   (0x00,SP)                        ;0x0092F2,    00 00          
            neg   (0x00,SP)                        ;0x0092F4,    00 00          
            neg   (0x00,SP)                        ;0x0092F6,    00 00          
            neg   (0x00,SP)                        ;0x0092F8,    00 00          
            neg   (0x00,SP)                        ;0x0092FA,    00 00          
            neg   (0x00,SP)                        ;0x0092FC,    00 00          
            neg   (0x00,SP)                        ;0x0092FE,    00 00          
            neg   (0x00,SP)                        ;0x009300,    00 00          
            neg   (0x00,SP)                        ;0x009302,    00 00          
            neg   (0x00,SP)                        ;0x009304,    00 00          
            neg   (0x00,SP)                        ;0x009306,    00 00          
            neg   (0x00,SP)                        ;0x009308,    00 00          
            neg   (0x00,SP)                        ;0x00930A,    00 00          
            neg   (0x00,SP)                        ;0x00930C,    00 00          
            neg   (0x00,SP)                        ;0x00930E,    00 00          
            neg   (0x00,SP)                        ;0x009310,    00 00          
            neg   (0x00,SP)                        ;0x009312,    00 00          
            neg   (0x00,SP)                        ;0x009314,    00 00          
            neg   (0x00,SP)                        ;0x009316,    00 00          
            neg   (0x00,SP)                        ;0x009318,    00 00          
            neg   (0x00,SP)                        ;0x00931A,    00 00          
            neg   (0x00,SP)                        ;0x00931C,    00 00          
            neg   (0x00,SP)                        ;0x00931E,    00 00          
            neg   (0x00,SP)                        ;0x009320,    00 00          
            neg   (0x00,SP)                        ;0x009322,    00 00          
            neg   (0x00,SP)                        ;0x009324,    00 00          
            neg   (0x00,SP)                        ;0x009326,    00 00          
            neg   (0x00,SP)                        ;0x009328,    00 00          
            neg   (0x00,SP)                        ;0x00932A,    00 00          
            neg   (0x00,SP)                        ;0x00932C,    00 00          
            neg   (0x00,SP)                        ;0x00932E,    00 00          
            neg   (0x00,SP)                        ;0x009330,    00 00          
            neg   (0x00,SP)                        ;0x009332,    00 00          
            neg   (0x00,SP)                        ;0x009334,    00 00          
            neg   (0x00,SP)                        ;0x009336,    00 00          
            neg   (0x00,SP)                        ;0x009338,    00 00          
            neg   (0x00,SP)                        ;0x00933A,    00 00          
            neg   (0x00,SP)                        ;0x00933C,    00 00          
            neg   (0x00,SP)                        ;0x00933E,    00 00          
            neg   (0x00,SP)                        ;0x009340,    00 00          
            neg   (0x00,SP)                        ;0x009342,    00 00          
            neg   (0x00,SP)                        ;0x009344,    00 00          
            neg   (0x00,SP)                        ;0x009346,    00 00          
            neg   (0x00,SP)                        ;0x009348,    00 00          
            neg   (0x00,SP)                        ;0x00934A,    00 00          
            neg   (0x00,SP)                        ;0x00934C,    00 00          
            neg   (0x00,SP)                        ;0x00934E,    00 00          
            neg   (0x00,SP)                        ;0x009350,    00 00          
            neg   (0x00,SP)                        ;0x009352,    00 00          
            neg   (0x00,SP)                        ;0x009354,    00 00          
            neg   (0x00,SP)                        ;0x009356,    00 00          
            neg   (0x00,SP)                        ;0x009358,    00 00          
            neg   (0x00,SP)                        ;0x00935A,    00 00          
            neg   (0x00,SP)                        ;0x00935C,    00 00          
            neg   (0x00,SP)                        ;0x00935E,    00 00          
            neg   (0x00,SP)                        ;0x009360,    00 00          
            neg   (0x00,SP)                        ;0x009362,    00 00          
            neg   (0x00,SP)                        ;0x009364,    00 00          
            neg   (0x00,SP)                        ;0x009366,    00 00          
            neg   (0x00,SP)                        ;0x009368,    00 00          
            neg   (0x00,SP)                        ;0x00936A,    00 00          
            neg   (0x00,SP)                        ;0x00936C,    00 00          
            neg   (0x00,SP)                        ;0x00936E,    00 00          
            neg   (0x00,SP)                        ;0x009370,    00 00          
            neg   (0x00,SP)                        ;0x009372,    00 00          
            neg   (0x00,SP)                        ;0x009374,    00 00          
            neg   (0x00,SP)                        ;0x009376,    00 00          
            neg   (0x00,SP)                        ;0x009378,    00 00          
            neg   (0x00,SP)                        ;0x00937A,    00 00          
            neg   (0x00,SP)                        ;0x00937C,    00 00          
            neg   (0x00,SP)                        ;0x00937E,    00 00          
            neg   (0x00,SP)                        ;0x009380,    00 00          
            neg   (0x00,SP)                        ;0x009382,    00 00          
            neg   (0x00,SP)                        ;0x009384,    00 00          
            neg   (0x00,SP)                        ;0x009386,    00 00          
            neg   (0x00,SP)                        ;0x009388,    00 00          
            neg   (0x00,SP)                        ;0x00938A,    00 00          
            neg   (0x00,SP)                        ;0x00938C,    00 00          
            neg   (0x00,SP)                        ;0x00938E,    00 00          
            neg   (0x00,SP)                        ;0x009390,    00 00          
            neg   (0x00,SP)                        ;0x009392,    00 00          
            neg   (0x00,SP)                        ;0x009394,    00 00          
            neg   (0x00,SP)                        ;0x009396,    00 00          
            neg   (0x00,SP)                        ;0x009398,    00 00          
            neg   (0x00,SP)                        ;0x00939A,    00 00          
            neg   (0x00,SP)                        ;0x00939C,    00 00          
            neg   (0x00,SP)                        ;0x00939E,    00 00          
            neg   (0x00,SP)                        ;0x0093A0,    00 00          
            neg   (0x00,SP)                        ;0x0093A2,    00 00          
            neg   (0x00,SP)                        ;0x0093A4,    00 00          
            neg   (0x00,SP)                        ;0x0093A6,    00 00          
            neg   (0x00,SP)                        ;0x0093A8,    00 00          
            neg   (0x00,SP)                        ;0x0093AA,    00 00          
            neg   (0x00,SP)                        ;0x0093AC,    00 00          
            neg   (0x00,SP)                        ;0x0093AE,    00 00          
            neg   (0x00,SP)                        ;0x0093B0,    00 00          
            neg   (0x00,SP)                        ;0x0093B2,    00 00          
            neg   (0x00,SP)                        ;0x0093B4,    00 00          
            neg   (0x00,SP)                        ;0x0093B6,    00 00          
            neg   (0x00,SP)                        ;0x0093B8,    00 00          
            neg   (0x00,SP)                        ;0x0093BA,    00 00          
            neg   (0x00,SP)                        ;0x0093BC,    00 00          
            neg   (0x00,SP)                        ;0x0093BE,    00 00          
            neg   (0x00,SP)                        ;0x0093C0,    00 00          
            neg   (0x00,SP)                        ;0x0093C2,    00 00          
            neg   (0x00,SP)                        ;0x0093C4,    00 00          
            neg   (0x00,SP)                        ;0x0093C6,    00 00          
            neg   (0x00,SP)                        ;0x0093C8,    00 00          
            neg   (0x00,SP)                        ;0x0093CA,    00 00          
            neg   (0x00,SP)                        ;0x0093CC,    00 00          
            neg   (0x00,SP)                        ;0x0093CE,    00 00          
            neg   (0x00,SP)                        ;0x0093D0,    00 00          
            neg   (0x00,SP)                        ;0x0093D2,    00 00          
            neg   (0x00,SP)                        ;0x0093D4,    00 00          
            neg   (0x00,SP)                        ;0x0093D6,    00 00          
            neg   (0x00,SP)                        ;0x0093D8,    00 00          
            neg   (0x00,SP)                        ;0x0093DA,    00 00          
            neg   (0x00,SP)                        ;0x0093DC,    00 00          
            neg   (0x00,SP)                        ;0x0093DE,    00 00          
            neg   (0x00,SP)                        ;0x0093E0,    00 00          
            neg   (0x00,SP)                        ;0x0093E2,    00 00          
            neg   (0x00,SP)                        ;0x0093E4,    00 00          
            neg   (0x00,SP)                        ;0x0093E6,    00 00          
            neg   (0x00,SP)                        ;0x0093E8,    00 00          
            neg   (0x00,SP)                        ;0x0093EA,    00 00          
            neg   (0x00,SP)                        ;0x0093EC,    00 00          
            neg   (0x00,SP)                        ;0x0093EE,    00 00          
            neg   (0x00,SP)                        ;0x0093F0,    00 00          
            neg   (0x00,SP)                        ;0x0093F2,    00 00          
            neg   (0x00,SP)                        ;0x0093F4,    00 00          
            neg   (0x00,SP)                        ;0x0093F6,    00 00          
            neg   (0x00,SP)                        ;0x0093F8,    00 00          
            neg   (0x00,SP)                        ;0x0093FA,    00 00          
            neg   (0x00,SP)                        ;0x0093FC,    00 00          
            neg   (0x00,SP)                        ;0x0093FE,    00 00          
            neg   (0x00,SP)                        ;0x009400,    00 00          
            neg   (0x00,SP)                        ;0x009402,    00 00          
            neg   (0x00,SP)                        ;0x009404,    00 00          
            neg   (0x00,SP)                        ;0x009406,    00 00          
            neg   (0x00,SP)                        ;0x009408,    00 00          
            neg   (0x00,SP)                        ;0x00940A,    00 00          
            neg   (0x00,SP)                        ;0x00940C,    00 00          
            neg   (0x00,SP)                        ;0x00940E,    00 00          
            neg   (0x00,SP)                        ;0x009410,    00 00          
            neg   (0x00,SP)                        ;0x009412,    00 00          
            neg   (0x00,SP)                        ;0x009414,    00 00          
            neg   (0x00,SP)                        ;0x009416,    00 00          
            neg   (0x00,SP)                        ;0x009418,    00 00          
            neg   (0x00,SP)                        ;0x00941A,    00 00          
            neg   (0x00,SP)                        ;0x00941C,    00 00          
            neg   (0x00,SP)                        ;0x00941E,    00 00          
            neg   (0x00,SP)                        ;0x009420,    00 00          
            neg   (0x00,SP)                        ;0x009422,    00 00          
            neg   (0x00,SP)                        ;0x009424,    00 00          
            neg   (0x00,SP)                        ;0x009426,    00 00          
            neg   (0x00,SP)                        ;0x009428,    00 00          
            neg   (0x00,SP)                        ;0x00942A,    00 00          
            neg   (0x00,SP)                        ;0x00942C,    00 00          
            neg   (0x00,SP)                        ;0x00942E,    00 00          
            neg   (0x00,SP)                        ;0x009430,    00 00          
            neg   (0x00,SP)                        ;0x009432,    00 00          
            neg   (0x00,SP)                        ;0x009434,    00 00          
            neg   (0x00,SP)                        ;0x009436,    00 00          
            neg   (0x00,SP)                        ;0x009438,    00 00          
            neg   (0x00,SP)                        ;0x00943A,    00 00          
            neg   (0x00,SP)                        ;0x00943C,    00 00          
            neg   (0x00,SP)                        ;0x00943E,    00 00          
            neg   (0x00,SP)                        ;0x009440,    00 00          
            neg   (0x00,SP)                        ;0x009442,    00 00          
            neg   (0x00,SP)                        ;0x009444,    00 00          
            neg   (0x00,SP)                        ;0x009446,    00 00          
            neg   (0x00,SP)                        ;0x009448,    00 00          
            neg   (0x00,SP)                        ;0x00944A,    00 00          
            neg   (0x00,SP)                        ;0x00944C,    00 00          
            neg   (0x00,SP)                        ;0x00944E,    00 00          
            neg   (0x00,SP)                        ;0x009450,    00 00          
            neg   (0x00,SP)                        ;0x009452,    00 00          
            neg   (0x00,SP)                        ;0x009454,    00 00          
            neg   (0x00,SP)                        ;0x009456,    00 00          
            neg   (0x00,SP)                        ;0x009458,    00 00          
            neg   (0x00,SP)                        ;0x00945A,    00 00          
            neg   (0x00,SP)                        ;0x00945C,    00 00          
            neg   (0x00,SP)                        ;0x00945E,    00 00          
            neg   (0x00,SP)                        ;0x009460,    00 00          
            neg   (0x00,SP)                        ;0x009462,    00 00          
            neg   (0x00,SP)                        ;0x009464,    00 00          
            neg   (0x00,SP)                        ;0x009466,    00 00          
            neg   (0x00,SP)                        ;0x009468,    00 00          
            neg   (0x00,SP)                        ;0x00946A,    00 00          
            neg   (0x00,SP)                        ;0x00946C,    00 00          
            neg   (0x00,SP)                        ;0x00946E,    00 00          
            neg   (0x00,SP)                        ;0x009470,    00 00          
            neg   (0x00,SP)                        ;0x009472,    00 00          
            neg   (0x00,SP)                        ;0x009474,    00 00          
            neg   (0x00,SP)                        ;0x009476,    00 00          
            neg   (0x00,SP)                        ;0x009478,    00 00          
            neg   (0x00,SP)                        ;0x00947A,    00 00          
            neg   (0x00,SP)                        ;0x00947C,    00 00          
            neg   (0x00,SP)                        ;0x00947E,    00 00          
            neg   (0x00,SP)                        ;0x009480,    00 00          
            neg   (0x00,SP)                        ;0x009482,    00 00          
            neg   (0x00,SP)                        ;0x009484,    00 00          
            neg   (0x00,SP)                        ;0x009486,    00 00          
            neg   (0x00,SP)                        ;0x009488,    00 00          
            neg   (0x00,SP)                        ;0x00948A,    00 00          
            neg   (0x00,SP)                        ;0x00948C,    00 00          
            neg   (0x00,SP)                        ;0x00948E,    00 00          
            neg   (0x00,SP)                        ;0x009490,    00 00          
            neg   (0x00,SP)                        ;0x009492,    00 00          
            neg   (0x00,SP)                        ;0x009494,    00 00          
            neg   (0x00,SP)                        ;0x009496,    00 00          
            neg   (0x00,SP)                        ;0x009498,    00 00          
            neg   (0x00,SP)                        ;0x00949A,    00 00          
            neg   (0x00,SP)                        ;0x00949C,    00 00          
            neg   (0x00,SP)                        ;0x00949E,    00 00          
            neg   (0x00,SP)                        ;0x0094A0,    00 00          
            neg   (0x00,SP)                        ;0x0094A2,    00 00          
            neg   (0x00,SP)                        ;0x0094A4,    00 00          
            neg   (0x00,SP)                        ;0x0094A6,    00 00          
            neg   (0x00,SP)                        ;0x0094A8,    00 00          
            neg   (0x00,SP)                        ;0x0094AA,    00 00          
            neg   (0x00,SP)                        ;0x0094AC,    00 00          
            neg   (0x00,SP)                        ;0x0094AE,    00 00          
            neg   (0x00,SP)                        ;0x0094B0,    00 00          
            neg   (0x00,SP)                        ;0x0094B2,    00 00          
            neg   (0x00,SP)                        ;0x0094B4,    00 00          
            neg   (0x00,SP)                        ;0x0094B6,    00 00          
            neg   (0x00,SP)                        ;0x0094B8,    00 00          
            neg   (0x00,SP)                        ;0x0094BA,    00 00          
            neg   (0x00,SP)                        ;0x0094BC,    00 00          
            neg   (0x00,SP)                        ;0x0094BE,    00 00          
            neg   (0x00,SP)                        ;0x0094C0,    00 00          
            neg   (0x00,SP)                        ;0x0094C2,    00 00          
            neg   (0x00,SP)                        ;0x0094C4,    00 00          
            neg   (0x00,SP)                        ;0x0094C6,    00 00          
            neg   (0x00,SP)                        ;0x0094C8,    00 00          
            neg   (0x00,SP)                        ;0x0094CA,    00 00          
            neg   (0x00,SP)                        ;0x0094CC,    00 00          
            neg   (0x00,SP)                        ;0x0094CE,    00 00          
            neg   (0x00,SP)                        ;0x0094D0,    00 00          
            neg   (0x00,SP)                        ;0x0094D2,    00 00          
            neg   (0x00,SP)                        ;0x0094D4,    00 00          
            neg   (0x00,SP)                        ;0x0094D6,    00 00          
            neg   (0x00,SP)                        ;0x0094D8,    00 00          
            neg   (0x00,SP)                        ;0x0094DA,    00 00          
            neg   (0x00,SP)                        ;0x0094DC,    00 00          
            neg   (0x00,SP)                        ;0x0094DE,    00 00          
            neg   (0x00,SP)                        ;0x0094E0,    00 00          
            neg   (0x00,SP)                        ;0x0094E2,    00 00          
            neg   (0x00,SP)                        ;0x0094E4,    00 00          
            neg   (0x00,SP)                        ;0x0094E6,    00 00          
            neg   (0x00,SP)                        ;0x0094E8,    00 00          
            neg   (0x00,SP)                        ;0x0094EA,    00 00          
            neg   (0x00,SP)                        ;0x0094EC,    00 00          
            neg   (0x00,SP)                        ;0x0094EE,    00 00          
            neg   (0x00,SP)                        ;0x0094F0,    00 00          
            neg   (0x00,SP)                        ;0x0094F2,    00 00          
            neg   (0x00,SP)                        ;0x0094F4,    00 00          
            neg   (0x00,SP)                        ;0x0094F6,    00 00          
            neg   (0x00,SP)                        ;0x0094F8,    00 00          
            neg   (0x00,SP)                        ;0x0094FA,    00 00          
            neg   (0x00,SP)                        ;0x0094FC,    00 00          
            neg   (0x00,SP)                        ;0x0094FE,    00 00          
            neg   (0x00,SP)                        ;0x009500,    00 00          
            neg   (0x00,SP)                        ;0x009502,    00 00          
            neg   (0x00,SP)                        ;0x009504,    00 00          
            neg   (0x00,SP)                        ;0x009506,    00 00          
            neg   (0x00,SP)                        ;0x009508,    00 00          
            neg   (0x00,SP)                        ;0x00950A,    00 00          
            neg   (0x00,SP)                        ;0x00950C,    00 00          
            neg   (0x00,SP)                        ;0x00950E,    00 00          
            neg   (0x00,SP)                        ;0x009510,    00 00          
            neg   (0x00,SP)                        ;0x009512,    00 00          
            neg   (0x00,SP)                        ;0x009514,    00 00          
            neg   (0x00,SP)                        ;0x009516,    00 00          
            neg   (0x00,SP)                        ;0x009518,    00 00          
            neg   (0x00,SP)                        ;0x00951A,    00 00          
            neg   (0x00,SP)                        ;0x00951C,    00 00          
            neg   (0x00,SP)                        ;0x00951E,    00 00          
            neg   (0x00,SP)                        ;0x009520,    00 00          
            neg   (0x00,SP)                        ;0x009522,    00 00          
            neg   (0x00,SP)                        ;0x009524,    00 00          
            neg   (0x00,SP)                        ;0x009526,    00 00          
            neg   (0x00,SP)                        ;0x009528,    00 00          
            neg   (0x00,SP)                        ;0x00952A,    00 00          
            neg   (0x00,SP)                        ;0x00952C,    00 00          
            neg   (0x00,SP)                        ;0x00952E,    00 00          
            neg   (0x00,SP)                        ;0x009530,    00 00          
            neg   (0x00,SP)                        ;0x009532,    00 00          
            neg   (0x00,SP)                        ;0x009534,    00 00          
            neg   (0x00,SP)                        ;0x009536,    00 00          
            neg   (0x00,SP)                        ;0x009538,    00 00          
            neg   (0x00,SP)                        ;0x00953A,    00 00          
            neg   (0x00,SP)                        ;0x00953C,    00 00          
            neg   (0x00,SP)                        ;0x00953E,    00 00          
            neg   (0x00,SP)                        ;0x009540,    00 00          
            neg   (0x00,SP)                        ;0x009542,    00 00          
            neg   (0x00,SP)                        ;0x009544,    00 00          
            neg   (0x00,SP)                        ;0x009546,    00 00          
            neg   (0x00,SP)                        ;0x009548,    00 00          
            neg   (0x00,SP)                        ;0x00954A,    00 00          
            neg   (0x00,SP)                        ;0x00954C,    00 00          
            neg   (0x00,SP)                        ;0x00954E,    00 00          
            neg   (0x00,SP)                        ;0x009550,    00 00          
            neg   (0x00,SP)                        ;0x009552,    00 00          
            neg   (0x00,SP)                        ;0x009554,    00 00          
            neg   (0x00,SP)                        ;0x009556,    00 00          
            neg   (0x00,SP)                        ;0x009558,    00 00          
            neg   (0x00,SP)                        ;0x00955A,    00 00          
            neg   (0x00,SP)                        ;0x00955C,    00 00          
            neg   (0x00,SP)                        ;0x00955E,    00 00          
            neg   (0x00,SP)                        ;0x009560,    00 00          
            neg   (0x00,SP)                        ;0x009562,    00 00          
            neg   (0x00,SP)                        ;0x009564,    00 00          
            neg   (0x00,SP)                        ;0x009566,    00 00          
            neg   (0x00,SP)                        ;0x009568,    00 00          
            neg   (0x00,SP)                        ;0x00956A,    00 00          
            neg   (0x00,SP)                        ;0x00956C,    00 00          
            neg   (0x00,SP)                        ;0x00956E,    00 00          
            neg   (0x00,SP)                        ;0x009570,    00 00          
            neg   (0x00,SP)                        ;0x009572,    00 00          
            neg   (0x00,SP)                        ;0x009574,    00 00          
            neg   (0x00,SP)                        ;0x009576,    00 00          
            neg   (0x00,SP)                        ;0x009578,    00 00          
            neg   (0x00,SP)                        ;0x00957A,    00 00          
            neg   (0x00,SP)                        ;0x00957C,    00 00          
            neg   (0x00,SP)                        ;0x00957E,    00 00          
            neg   (0x00,SP)                        ;0x009580,    00 00          
            neg   (0x00,SP)                        ;0x009582,    00 00          
            neg   (0x00,SP)                        ;0x009584,    00 00          
            neg   (0x00,SP)                        ;0x009586,    00 00          
            neg   (0x00,SP)                        ;0x009588,    00 00          
            neg   (0x00,SP)                        ;0x00958A,    00 00          
            neg   (0x00,SP)                        ;0x00958C,    00 00          
            neg   (0x00,SP)                        ;0x00958E,    00 00          
            neg   (0x00,SP)                        ;0x009590,    00 00          
            neg   (0x00,SP)                        ;0x009592,    00 00          
            neg   (0x00,SP)                        ;0x009594,    00 00          
            neg   (0x00,SP)                        ;0x009596,    00 00          
            neg   (0x00,SP)                        ;0x009598,    00 00          
            neg   (0x00,SP)                        ;0x00959A,    00 00          
            neg   (0x00,SP)                        ;0x00959C,    00 00          
            neg   (0x00,SP)                        ;0x00959E,    00 00          
            neg   (0x00,SP)                        ;0x0095A0,    00 00          
            neg   (0x00,SP)                        ;0x0095A2,    00 00          
            neg   (0x00,SP)                        ;0x0095A4,    00 00          
            neg   (0x00,SP)                        ;0x0095A6,    00 00          
            neg   (0x00,SP)                        ;0x0095A8,    00 00          
            neg   (0x00,SP)                        ;0x0095AA,    00 00          
            neg   (0x00,SP)                        ;0x0095AC,    00 00          
            neg   (0x00,SP)                        ;0x0095AE,    00 00          
            neg   (0x00,SP)                        ;0x0095B0,    00 00          
            neg   (0x00,SP)                        ;0x0095B2,    00 00          
            neg   (0x00,SP)                        ;0x0095B4,    00 00          
            neg   (0x00,SP)                        ;0x0095B6,    00 00          
            neg   (0x00,SP)                        ;0x0095B8,    00 00          
            neg   (0x00,SP)                        ;0x0095BA,    00 00          
            neg   (0x00,SP)                        ;0x0095BC,    00 00          
            neg   (0x00,SP)                        ;0x0095BE,    00 00          
            neg   (0x00,SP)                        ;0x0095C0,    00 00          
            neg   (0x00,SP)                        ;0x0095C2,    00 00          
            neg   (0x00,SP)                        ;0x0095C4,    00 00          
            neg   (0x00,SP)                        ;0x0095C6,    00 00          
            neg   (0x00,SP)                        ;0x0095C8,    00 00          
            neg   (0x00,SP)                        ;0x0095CA,    00 00          
            neg   (0x00,SP)                        ;0x0095CC,    00 00          
            neg   (0x00,SP)                        ;0x0095CE,    00 00          
            neg   (0x00,SP)                        ;0x0095D0,    00 00          
            neg   (0x00,SP)                        ;0x0095D2,    00 00          
            neg   (0x00,SP)                        ;0x0095D4,    00 00          
            neg   (0x00,SP)                        ;0x0095D6,    00 00          
            neg   (0x00,SP)                        ;0x0095D8,    00 00          
            neg   (0x00,SP)                        ;0x0095DA,    00 00          
            neg   (0x00,SP)                        ;0x0095DC,    00 00          
            neg   (0x00,SP)                        ;0x0095DE,    00 00          
            neg   (0x00,SP)                        ;0x0095E0,    00 00          
            neg   (0x00,SP)                        ;0x0095E2,    00 00          
            neg   (0x00,SP)                        ;0x0095E4,    00 00          
            neg   (0x00,SP)                        ;0x0095E6,    00 00          
            neg   (0x00,SP)                        ;0x0095E8,    00 00          
            neg   (0x00,SP)                        ;0x0095EA,    00 00          
            neg   (0x00,SP)                        ;0x0095EC,    00 00          
            neg   (0x00,SP)                        ;0x0095EE,    00 00          
            neg   (0x00,SP)                        ;0x0095F0,    00 00          
            neg   (0x00,SP)                        ;0x0095F2,    00 00          
            neg   (0x00,SP)                        ;0x0095F4,    00 00          
            neg   (0x00,SP)                        ;0x0095F6,    00 00          
            neg   (0x00,SP)                        ;0x0095F8,    00 00          
            neg   (0x00,SP)                        ;0x0095FA,    00 00          
            neg   (0x00,SP)                        ;0x0095FC,    00 00          
            neg   (0x00,SP)                        ;0x0095FE,    00 00          
            neg   (0x00,SP)                        ;0x009600,    00 00          
            neg   (0x00,SP)                        ;0x009602,    00 00          
            neg   (0x00,SP)                        ;0x009604,    00 00          
            neg   (0x00,SP)                        ;0x009606,    00 00          
            neg   (0x00,SP)                        ;0x009608,    00 00          
            neg   (0x00,SP)                        ;0x00960A,    00 00          
            neg   (0x00,SP)                        ;0x00960C,    00 00          
            neg   (0x00,SP)                        ;0x00960E,    00 00          
            neg   (0x00,SP)                        ;0x009610,    00 00          
            neg   (0x00,SP)                        ;0x009612,    00 00          
            neg   (0x00,SP)                        ;0x009614,    00 00          
            neg   (0x00,SP)                        ;0x009616,    00 00          
            neg   (0x00,SP)                        ;0x009618,    00 00          
            neg   (0x00,SP)                        ;0x00961A,    00 00          
            neg   (0x00,SP)                        ;0x00961C,    00 00          
            neg   (0x00,SP)                        ;0x00961E,    00 00          
            neg   (0x00,SP)                        ;0x009620,    00 00          
            neg   (0x00,SP)                        ;0x009622,    00 00          
            neg   (0x00,SP)                        ;0x009624,    00 00          
            neg   (0x00,SP)                        ;0x009626,    00 00          
            neg   (0x00,SP)                        ;0x009628,    00 00          
            neg   (0x00,SP)                        ;0x00962A,    00 00          
            neg   (0x00,SP)                        ;0x00962C,    00 00          
            neg   (0x00,SP)                        ;0x00962E,    00 00          
            neg   (0x00,SP)                        ;0x009630,    00 00          
            neg   (0x00,SP)                        ;0x009632,    00 00          
            neg   (0x00,SP)                        ;0x009634,    00 00          
            neg   (0x00,SP)                        ;0x009636,    00 00          
            neg   (0x00,SP)                        ;0x009638,    00 00          
            neg   (0x00,SP)                        ;0x00963A,    00 00          
            neg   (0x00,SP)                        ;0x00963C,    00 00          
            neg   (0x00,SP)                        ;0x00963E,    00 00          
            neg   (0x00,SP)                        ;0x009640,    00 00          
            neg   (0x00,SP)                        ;0x009642,    00 00          
            neg   (0x00,SP)                        ;0x009644,    00 00          
            neg   (0x00,SP)                        ;0x009646,    00 00          
            neg   (0x00,SP)                        ;0x009648,    00 00          
            neg   (0x00,SP)                        ;0x00964A,    00 00          
            neg   (0x00,SP)                        ;0x00964C,    00 00          
            neg   (0x00,SP)                        ;0x00964E,    00 00          
            neg   (0x00,SP)                        ;0x009650,    00 00          
            neg   (0x00,SP)                        ;0x009652,    00 00          
            neg   (0x00,SP)                        ;0x009654,    00 00          
            neg   (0x00,SP)                        ;0x009656,    00 00          
            neg   (0x00,SP)                        ;0x009658,    00 00          
            neg   (0x00,SP)                        ;0x00965A,    00 00          
            neg   (0x00,SP)                        ;0x00965C,    00 00          
            neg   (0x00,SP)                        ;0x00965E,    00 00          
            neg   (0x00,SP)                        ;0x009660,    00 00          
            neg   (0x00,SP)                        ;0x009662,    00 00          
            neg   (0x00,SP)                        ;0x009664,    00 00          
            neg   (0x00,SP)                        ;0x009666,    00 00          
            neg   (0x00,SP)                        ;0x009668,    00 00          
            neg   (0x00,SP)                        ;0x00966A,    00 00          
            neg   (0x00,SP)                        ;0x00966C,    00 00          
            neg   (0x00,SP)                        ;0x00966E,    00 00          
            neg   (0x00,SP)                        ;0x009670,    00 00          
            neg   (0x00,SP)                        ;0x009672,    00 00          
            neg   (0x00,SP)                        ;0x009674,    00 00          
            neg   (0x00,SP)                        ;0x009676,    00 00          
            neg   (0x00,SP)                        ;0x009678,    00 00          
            neg   (0x00,SP)                        ;0x00967A,    00 00          
            neg   (0x00,SP)                        ;0x00967C,    00 00          
            neg   (0x00,SP)                        ;0x00967E,    00 00          
            neg   (0x00,SP)                        ;0x009680,    00 00          
            neg   (0x00,SP)                        ;0x009682,    00 00          
            neg   (0x00,SP)                        ;0x009684,    00 00          
            neg   (0x00,SP)                        ;0x009686,    00 00          
            neg   (0x00,SP)                        ;0x009688,    00 00          
            neg   (0x00,SP)                        ;0x00968A,    00 00          
            neg   (0x00,SP)                        ;0x00968C,    00 00          
            neg   (0x00,SP)                        ;0x00968E,    00 00          
            neg   (0x00,SP)                        ;0x009690,    00 00          
            neg   (0x00,SP)                        ;0x009692,    00 00          
            neg   (0x00,SP)                        ;0x009694,    00 00          
            neg   (0x00,SP)                        ;0x009696,    00 00          
            neg   (0x00,SP)                        ;0x009698,    00 00          
            neg   (0x00,SP)                        ;0x00969A,    00 00          
            neg   (0x00,SP)                        ;0x00969C,    00 00          
            neg   (0x00,SP)                        ;0x00969E,    00 00          
            neg   (0x00,SP)                        ;0x0096A0,    00 00          
            neg   (0x00,SP)                        ;0x0096A2,    00 00          
            neg   (0x00,SP)                        ;0x0096A4,    00 00          
            neg   (0x00,SP)                        ;0x0096A6,    00 00          
            neg   (0x00,SP)                        ;0x0096A8,    00 00          
            neg   (0x00,SP)                        ;0x0096AA,    00 00          
            neg   (0x00,SP)                        ;0x0096AC,    00 00          
            neg   (0x00,SP)                        ;0x0096AE,    00 00          
            neg   (0x00,SP)                        ;0x0096B0,    00 00          
            neg   (0x00,SP)                        ;0x0096B2,    00 00          
            neg   (0x00,SP)                        ;0x0096B4,    00 00          
            neg   (0x00,SP)                        ;0x0096B6,    00 00          
            neg   (0x00,SP)                        ;0x0096B8,    00 00          
            neg   (0x00,SP)                        ;0x0096BA,    00 00          
            neg   (0x00,SP)                        ;0x0096BC,    00 00          
            neg   (0x00,SP)                        ;0x0096BE,    00 00          
            neg   (0x00,SP)                        ;0x0096C0,    00 00          
            neg   (0x00,SP)                        ;0x0096C2,    00 00          
            neg   (0x00,SP)                        ;0x0096C4,    00 00          
            neg   (0x00,SP)                        ;0x0096C6,    00 00          
            neg   (0x00,SP)                        ;0x0096C8,    00 00          
            neg   (0x00,SP)                        ;0x0096CA,    00 00          
            neg   (0x00,SP)                        ;0x0096CC,    00 00          
            neg   (0x00,SP)                        ;0x0096CE,    00 00          
            neg   (0x00,SP)                        ;0x0096D0,    00 00          
            neg   (0x00,SP)                        ;0x0096D2,    00 00          
            neg   (0x00,SP)                        ;0x0096D4,    00 00          
            neg   (0x00,SP)                        ;0x0096D6,    00 00          
            neg   (0x00,SP)                        ;0x0096D8,    00 00          
            neg   (0x00,SP)                        ;0x0096DA,    00 00          
            neg   (0x00,SP)                        ;0x0096DC,    00 00          
            neg   (0x00,SP)                        ;0x0096DE,    00 00          
            neg   (0x00,SP)                        ;0x0096E0,    00 00          
            neg   (0x00,SP)                        ;0x0096E2,    00 00          
            neg   (0x00,SP)                        ;0x0096E4,    00 00          
            neg   (0x00,SP)                        ;0x0096E6,    00 00          
            neg   (0x00,SP)                        ;0x0096E8,    00 00          
            neg   (0x00,SP)                        ;0x0096EA,    00 00          
            neg   (0x00,SP)                        ;0x0096EC,    00 00          
            neg   (0x00,SP)                        ;0x0096EE,    00 00          
            neg   (0x00,SP)                        ;0x0096F0,    00 00          
            neg   (0x00,SP)                        ;0x0096F2,    00 00          
            neg   (0x00,SP)                        ;0x0096F4,    00 00          
            neg   (0x00,SP)                        ;0x0096F6,    00 00          
            neg   (0x00,SP)                        ;0x0096F8,    00 00          
            neg   (0x00,SP)                        ;0x0096FA,    00 00          
            neg   (0x00,SP)                        ;0x0096FC,    00 00          
            neg   (0x00,SP)                        ;0x0096FE,    00 00          
            neg   (0x00,SP)                        ;0x009700,    00 00          
            neg   (0x00,SP)                        ;0x009702,    00 00          
            neg   (0x00,SP)                        ;0x009704,    00 00          
            neg   (0x00,SP)                        ;0x009706,    00 00          
            neg   (0x00,SP)                        ;0x009708,    00 00          
            neg   (0x00,SP)                        ;0x00970A,    00 00          
            neg   (0x00,SP)                        ;0x00970C,    00 00          
            neg   (0x00,SP)                        ;0x00970E,    00 00          
            neg   (0x00,SP)                        ;0x009710,    00 00          
            neg   (0x00,SP)                        ;0x009712,    00 00          
            neg   (0x00,SP)                        ;0x009714,    00 00          
            neg   (0x00,SP)                        ;0x009716,    00 00          
            neg   (0x00,SP)                        ;0x009718,    00 00          
            neg   (0x00,SP)                        ;0x00971A,    00 00          
            neg   (0x00,SP)                        ;0x00971C,    00 00          
            neg   (0x00,SP)                        ;0x00971E,    00 00          
            neg   (0x00,SP)                        ;0x009720,    00 00          
            neg   (0x00,SP)                        ;0x009722,    00 00          
            neg   (0x00,SP)                        ;0x009724,    00 00          
            neg   (0x00,SP)                        ;0x009726,    00 00          
            neg   (0x00,SP)                        ;0x009728,    00 00          
            neg   (0x00,SP)                        ;0x00972A,    00 00          
            neg   (0x00,SP)                        ;0x00972C,    00 00          
            neg   (0x00,SP)                        ;0x00972E,    00 00          
            neg   (0x00,SP)                        ;0x009730,    00 00          
            neg   (0x00,SP)                        ;0x009732,    00 00          
            neg   (0x00,SP)                        ;0x009734,    00 00          
            neg   (0x00,SP)                        ;0x009736,    00 00          
            neg   (0x00,SP)                        ;0x009738,    00 00          
            neg   (0x00,SP)                        ;0x00973A,    00 00          
            neg   (0x00,SP)                        ;0x00973C,    00 00          
            neg   (0x00,SP)                        ;0x00973E,    00 00          
            neg   (0x00,SP)                        ;0x009740,    00 00          
            neg   (0x00,SP)                        ;0x009742,    00 00          
            neg   (0x00,SP)                        ;0x009744,    00 00          
            neg   (0x00,SP)                        ;0x009746,    00 00          
            neg   (0x00,SP)                        ;0x009748,    00 00          
            neg   (0x00,SP)                        ;0x00974A,    00 00          
            neg   (0x00,SP)                        ;0x00974C,    00 00          
            neg   (0x00,SP)                        ;0x00974E,    00 00          
            neg   (0x00,SP)                        ;0x009750,    00 00          
            neg   (0x00,SP)                        ;0x009752,    00 00          
            neg   (0x00,SP)                        ;0x009754,    00 00          
            neg   (0x00,SP)                        ;0x009756,    00 00          
            neg   (0x00,SP)                        ;0x009758,    00 00          
            neg   (0x00,SP)                        ;0x00975A,    00 00          
            neg   (0x00,SP)                        ;0x00975C,    00 00          
            neg   (0x00,SP)                        ;0x00975E,    00 00          
            neg   (0x00,SP)                        ;0x009760,    00 00          
            neg   (0x00,SP)                        ;0x009762,    00 00          
            neg   (0x00,SP)                        ;0x009764,    00 00          
            neg   (0x00,SP)                        ;0x009766,    00 00          
            neg   (0x00,SP)                        ;0x009768,    00 00          
            neg   (0x00,SP)                        ;0x00976A,    00 00          
            neg   (0x00,SP)                        ;0x00976C,    00 00          
            neg   (0x00,SP)                        ;0x00976E,    00 00          
            neg   (0x00,SP)                        ;0x009770,    00 00          
            neg   (0x00,SP)                        ;0x009772,    00 00          
            neg   (0x00,SP)                        ;0x009774,    00 00          
            neg   (0x00,SP)                        ;0x009776,    00 00          
            neg   (0x00,SP)                        ;0x009778,    00 00          
            neg   (0x00,SP)                        ;0x00977A,    00 00          
            neg   (0x00,SP)                        ;0x00977C,    00 00          
            neg   (0x00,SP)                        ;0x00977E,    00 00          
            neg   (0x00,SP)                        ;0x009780,    00 00          
            neg   (0x00,SP)                        ;0x009782,    00 00          
            neg   (0x00,SP)                        ;0x009784,    00 00          
            neg   (0x00,SP)                        ;0x009786,    00 00          
            neg   (0x00,SP)                        ;0x009788,    00 00          
            neg   (0x00,SP)                        ;0x00978A,    00 00          
            neg   (0x00,SP)                        ;0x00978C,    00 00          
            neg   (0x00,SP)                        ;0x00978E,    00 00          
            neg   (0x00,SP)                        ;0x009790,    00 00          
            neg   (0x00,SP)                        ;0x009792,    00 00          
            neg   (0x00,SP)                        ;0x009794,    00 00          
            neg   (0x00,SP)                        ;0x009796,    00 00          
            neg   (0x00,SP)                        ;0x009798,    00 00          
            neg   (0x00,SP)                        ;0x00979A,    00 00          
            neg   (0x00,SP)                        ;0x00979C,    00 00          
            neg   (0x00,SP)                        ;0x00979E,    00 00          
            neg   (0x00,SP)                        ;0x0097A0,    00 00          
            neg   (0x00,SP)                        ;0x0097A2,    00 00          
            neg   (0x00,SP)                        ;0x0097A4,    00 00          
            neg   (0x00,SP)                        ;0x0097A6,    00 00          
            neg   (0x00,SP)                        ;0x0097A8,    00 00          
            neg   (0x00,SP)                        ;0x0097AA,    00 00          
            neg   (0x00,SP)                        ;0x0097AC,    00 00          
            neg   (0x00,SP)                        ;0x0097AE,    00 00          
            neg   (0x00,SP)                        ;0x0097B0,    00 00          
            neg   (0x00,SP)                        ;0x0097B2,    00 00          
            neg   (0x00,SP)                        ;0x0097B4,    00 00          
            neg   (0x00,SP)                        ;0x0097B6,    00 00          
            neg   (0x00,SP)                        ;0x0097B8,    00 00          
            neg   (0x00,SP)                        ;0x0097BA,    00 00          
            neg   (0x00,SP)                        ;0x0097BC,    00 00          
            neg   (0x00,SP)                        ;0x0097BE,    00 00          
            neg   (0x00,SP)                        ;0x0097C0,    00 00          
            neg   (0x00,SP)                        ;0x0097C2,    00 00          
            neg   (0x00,SP)                        ;0x0097C4,    00 00          
            neg   (0x00,SP)                        ;0x0097C6,    00 00          
            neg   (0x00,SP)                        ;0x0097C8,    00 00          
            neg   (0x00,SP)                        ;0x0097CA,    00 00          
            neg   (0x00,SP)                        ;0x0097CC,    00 00          
            neg   (0x00,SP)                        ;0x0097CE,    00 00          
            neg   (0x00,SP)                        ;0x0097D0,    00 00          
            neg   (0x00,SP)                        ;0x0097D2,    00 00          
            neg   (0x00,SP)                        ;0x0097D4,    00 00          
            neg   (0x00,SP)                        ;0x0097D6,    00 00          
            neg   (0x00,SP)                        ;0x0097D8,    00 00          
            neg   (0x00,SP)                        ;0x0097DA,    00 00          
            neg   (0x00,SP)                        ;0x0097DC,    00 00          
            neg   (0x00,SP)                        ;0x0097DE,    00 00          
            neg   (0x00,SP)                        ;0x0097E0,    00 00          
            neg   (0x00,SP)                        ;0x0097E2,    00 00          
            neg   (0x00,SP)                        ;0x0097E4,    00 00          
            neg   (0x00,SP)                        ;0x0097E6,    00 00          
            neg   (0x00,SP)                        ;0x0097E8,    00 00          
            neg   (0x00,SP)                        ;0x0097EA,    00 00          
            neg   (0x00,SP)                        ;0x0097EC,    00 00          
            neg   (0x00,SP)                        ;0x0097EE,    00 00          
            neg   (0x00,SP)                        ;0x0097F0,    00 00          
            neg   (0x00,SP)                        ;0x0097F2,    00 00          
            neg   (0x00,SP)                        ;0x0097F4,    00 00          
            neg   (0x00,SP)                        ;0x0097F6,    00 00          
            neg   (0x00,SP)                        ;0x0097F8,    00 00          
            neg   (0x00,SP)                        ;0x0097FA,    00 00          
            neg   (0x00,SP)                        ;0x0097FC,    00 00          
            neg   (0x00,SP)                        ;0x0097FE,    00 00          
            neg   (0x00,SP)                        ;0x009800,    00 00          
            neg   (0x00,SP)                        ;0x009802,    00 00          
            neg   (0x00,SP)                        ;0x009804,    00 00          
            neg   (0x00,SP)                        ;0x009806,    00 00          
            neg   (0x00,SP)                        ;0x009808,    00 00          
            neg   (0x00,SP)                        ;0x00980A,    00 00          
            neg   (0x00,SP)                        ;0x00980C,    00 00          
            neg   (0x00,SP)                        ;0x00980E,    00 00          
            neg   (0x00,SP)                        ;0x009810,    00 00          
            neg   (0x00,SP)                        ;0x009812,    00 00          
            neg   (0x00,SP)                        ;0x009814,    00 00          
            neg   (0x00,SP)                        ;0x009816,    00 00          
            neg   (0x00,SP)                        ;0x009818,    00 00          
            neg   (0x00,SP)                        ;0x00981A,    00 00          
            neg   (0x00,SP)                        ;0x00981C,    00 00          
            neg   (0x00,SP)                        ;0x00981E,    00 00          
            neg   (0x00,SP)                        ;0x009820,    00 00          
            neg   (0x00,SP)                        ;0x009822,    00 00          
            neg   (0x00,SP)                        ;0x009824,    00 00          
            neg   (0x00,SP)                        ;0x009826,    00 00          
            neg   (0x00,SP)                        ;0x009828,    00 00          
            neg   (0x00,SP)                        ;0x00982A,    00 00          
            neg   (0x00,SP)                        ;0x00982C,    00 00          
            neg   (0x00,SP)                        ;0x00982E,    00 00          
            neg   (0x00,SP)                        ;0x009830,    00 00          
            neg   (0x00,SP)                        ;0x009832,    00 00          
            neg   (0x00,SP)                        ;0x009834,    00 00          
            neg   (0x00,SP)                        ;0x009836,    00 00          
            neg   (0x00,SP)                        ;0x009838,    00 00          
            neg   (0x00,SP)                        ;0x00983A,    00 00          
            neg   (0x00,SP)                        ;0x00983C,    00 00          
            neg   (0x00,SP)                        ;0x00983E,    00 00          
            neg   (0x00,SP)                        ;0x009840,    00 00          
            neg   (0x00,SP)                        ;0x009842,    00 00          
            neg   (0x00,SP)                        ;0x009844,    00 00          
            neg   (0x00,SP)                        ;0x009846,    00 00          
            neg   (0x00,SP)                        ;0x009848,    00 00          
            neg   (0x00,SP)                        ;0x00984A,    00 00          
            neg   (0x00,SP)                        ;0x00984C,    00 00          
            neg   (0x00,SP)                        ;0x00984E,    00 00          
            neg   (0x00,SP)                        ;0x009850,    00 00          
            neg   (0x00,SP)                        ;0x009852,    00 00          
            neg   (0x00,SP)                        ;0x009854,    00 00          
            neg   (0x00,SP)                        ;0x009856,    00 00          
            neg   (0x00,SP)                        ;0x009858,    00 00          
            neg   (0x00,SP)                        ;0x00985A,    00 00          
            neg   (0x00,SP)                        ;0x00985C,    00 00          
            neg   (0x00,SP)                        ;0x00985E,    00 00          
            neg   (0x00,SP)                        ;0x009860,    00 00          
            neg   (0x00,SP)                        ;0x009862,    00 00          
            neg   (0x00,SP)                        ;0x009864,    00 00          
            neg   (0x00,SP)                        ;0x009866,    00 00          
            neg   (0x00,SP)                        ;0x009868,    00 00          
            neg   (0x00,SP)                        ;0x00986A,    00 00          
            neg   (0x00,SP)                        ;0x00986C,    00 00          
            neg   (0x00,SP)                        ;0x00986E,    00 00          
            neg   (0x00,SP)                        ;0x009870,    00 00          
            neg   (0x00,SP)                        ;0x009872,    00 00          
            neg   (0x00,SP)                        ;0x009874,    00 00          
            neg   (0x00,SP)                        ;0x009876,    00 00          
            neg   (0x00,SP)                        ;0x009878,    00 00          
            neg   (0x00,SP)                        ;0x00987A,    00 00          
            neg   (0x00,SP)                        ;0x00987C,    00 00          
            neg   (0x00,SP)                        ;0x00987E,    00 00          
            neg   (0x00,SP)                        ;0x009880,    00 00          
            neg   (0x00,SP)                        ;0x009882,    00 00          
            neg   (0x00,SP)                        ;0x009884,    00 00          
            neg   (0x00,SP)                        ;0x009886,    00 00          
            neg   (0x00,SP)                        ;0x009888,    00 00          
            neg   (0x00,SP)                        ;0x00988A,    00 00          
            neg   (0x00,SP)                        ;0x00988C,    00 00          
            neg   (0x00,SP)                        ;0x00988E,    00 00          
            neg   (0x00,SP)                        ;0x009890,    00 00          
            neg   (0x00,SP)                        ;0x009892,    00 00          
            neg   (0x00,SP)                        ;0x009894,    00 00          
            neg   (0x00,SP)                        ;0x009896,    00 00          
            neg   (0x00,SP)                        ;0x009898,    00 00          
            neg   (0x00,SP)                        ;0x00989A,    00 00          
            neg   (0x00,SP)                        ;0x00989C,    00 00          
            neg   (0x00,SP)                        ;0x00989E,    00 00          
            neg   (0x00,SP)                        ;0x0098A0,    00 00          
            neg   (0x00,SP)                        ;0x0098A2,    00 00          
            neg   (0x00,SP)                        ;0x0098A4,    00 00          
            neg   (0x00,SP)                        ;0x0098A6,    00 00          
            neg   (0x00,SP)                        ;0x0098A8,    00 00          
            neg   (0x00,SP)                        ;0x0098AA,    00 00          
            neg   (0x00,SP)                        ;0x0098AC,    00 00          
            neg   (0x00,SP)                        ;0x0098AE,    00 00          
            neg   (0x00,SP)                        ;0x0098B0,    00 00          
            neg   (0x00,SP)                        ;0x0098B2,    00 00          
            neg   (0x00,SP)                        ;0x0098B4,    00 00          
            neg   (0x00,SP)                        ;0x0098B6,    00 00          
            neg   (0x00,SP)                        ;0x0098B8,    00 00          
            neg   (0x00,SP)                        ;0x0098BA,    00 00          
            neg   (0x00,SP)                        ;0x0098BC,    00 00          
            neg   (0x00,SP)                        ;0x0098BE,    00 00          
            neg   (0x00,SP)                        ;0x0098C0,    00 00          
            neg   (0x00,SP)                        ;0x0098C2,    00 00          
            neg   (0x00,SP)                        ;0x0098C4,    00 00          
            neg   (0x00,SP)                        ;0x0098C6,    00 00          
            neg   (0x00,SP)                        ;0x0098C8,    00 00          
            neg   (0x00,SP)                        ;0x0098CA,    00 00          
            neg   (0x00,SP)                        ;0x0098CC,    00 00          
            neg   (0x00,SP)                        ;0x0098CE,    00 00          
            neg   (0x00,SP)                        ;0x0098D0,    00 00          
            neg   (0x00,SP)                        ;0x0098D2,    00 00          
            neg   (0x00,SP)                        ;0x0098D4,    00 00          
            neg   (0x00,SP)                        ;0x0098D6,    00 00          
            neg   (0x00,SP)                        ;0x0098D8,    00 00          
            neg   (0x00,SP)                        ;0x0098DA,    00 00          
            neg   (0x00,SP)                        ;0x0098DC,    00 00          
            neg   (0x00,SP)                        ;0x0098DE,    00 00          
            neg   (0x00,SP)                        ;0x0098E0,    00 00          
            neg   (0x00,SP)                        ;0x0098E2,    00 00          
            neg   (0x00,SP)                        ;0x0098E4,    00 00          
            neg   (0x00,SP)                        ;0x0098E6,    00 00          
            neg   (0x00,SP)                        ;0x0098E8,    00 00          
            neg   (0x00,SP)                        ;0x0098EA,    00 00          
            neg   (0x00,SP)                        ;0x0098EC,    00 00          
            neg   (0x00,SP)                        ;0x0098EE,    00 00          
            neg   (0x00,SP)                        ;0x0098F0,    00 00          
            neg   (0x00,SP)                        ;0x0098F2,    00 00          
            neg   (0x00,SP)                        ;0x0098F4,    00 00          
            neg   (0x00,SP)                        ;0x0098F6,    00 00          
            neg   (0x00,SP)                        ;0x0098F8,    00 00          
            neg   (0x00,SP)                        ;0x0098FA,    00 00          
            neg   (0x00,SP)                        ;0x0098FC,    00 00          
            neg   (0x00,SP)                        ;0x0098FE,    00 00          
            neg   (0x00,SP)                        ;0x009900,    00 00          
            neg   (0x00,SP)                        ;0x009902,    00 00          
            neg   (0x00,SP)                        ;0x009904,    00 00          
            neg   (0x00,SP)                        ;0x009906,    00 00          
            neg   (0x00,SP)                        ;0x009908,    00 00          
            neg   (0x00,SP)                        ;0x00990A,    00 00          
            neg   (0x00,SP)                        ;0x00990C,    00 00          
            neg   (0x00,SP)                        ;0x00990E,    00 00          
            neg   (0x00,SP)                        ;0x009910,    00 00          
            neg   (0x00,SP)                        ;0x009912,    00 00          
            neg   (0x00,SP)                        ;0x009914,    00 00          
            neg   (0x00,SP)                        ;0x009916,    00 00          
            neg   (0x00,SP)                        ;0x009918,    00 00          
            neg   (0x00,SP)                        ;0x00991A,    00 00          
            neg   (0x00,SP)                        ;0x00991C,    00 00          
            neg   (0x00,SP)                        ;0x00991E,    00 00          
            neg   (0x00,SP)                        ;0x009920,    00 00          
            neg   (0x00,SP)                        ;0x009922,    00 00          
            neg   (0x00,SP)                        ;0x009924,    00 00          
            neg   (0x00,SP)                        ;0x009926,    00 00          
            neg   (0x00,SP)                        ;0x009928,    00 00          
            neg   (0x00,SP)                        ;0x00992A,    00 00          
            neg   (0x00,SP)                        ;0x00992C,    00 00          
            neg   (0x00,SP)                        ;0x00992E,    00 00          
            neg   (0x00,SP)                        ;0x009930,    00 00          
            neg   (0x00,SP)                        ;0x009932,    00 00          
            neg   (0x00,SP)                        ;0x009934,    00 00          
            neg   (0x00,SP)                        ;0x009936,    00 00          
            neg   (0x00,SP)                        ;0x009938,    00 00          
            neg   (0x00,SP)                        ;0x00993A,    00 00          
            neg   (0x00,SP)                        ;0x00993C,    00 00          
            neg   (0x00,SP)                        ;0x00993E,    00 00          
            neg   (0x00,SP)                        ;0x009940,    00 00          
            neg   (0x00,SP)                        ;0x009942,    00 00          
            neg   (0x00,SP)                        ;0x009944,    00 00          
            neg   (0x00,SP)                        ;0x009946,    00 00          
            neg   (0x00,SP)                        ;0x009948,    00 00          
            neg   (0x00,SP)                        ;0x00994A,    00 00          
            neg   (0x00,SP)                        ;0x00994C,    00 00          
            neg   (0x00,SP)                        ;0x00994E,    00 00          
            neg   (0x00,SP)                        ;0x009950,    00 00          
            neg   (0x00,SP)                        ;0x009952,    00 00          
            neg   (0x00,SP)                        ;0x009954,    00 00          
            neg   (0x00,SP)                        ;0x009956,    00 00          
            neg   (0x00,SP)                        ;0x009958,    00 00          
            neg   (0x00,SP)                        ;0x00995A,    00 00          
            neg   (0x00,SP)                        ;0x00995C,    00 00          
            neg   (0x00,SP)                        ;0x00995E,    00 00          
            neg   (0x00,SP)                        ;0x009960,    00 00          
            neg   (0x00,SP)                        ;0x009962,    00 00          
            neg   (0x00,SP)                        ;0x009964,    00 00          
            neg   (0x00,SP)                        ;0x009966,    00 00          
            neg   (0x00,SP)                        ;0x009968,    00 00          
            neg   (0x00,SP)                        ;0x00996A,    00 00          
            neg   (0x00,SP)                        ;0x00996C,    00 00          
            neg   (0x00,SP)                        ;0x00996E,    00 00          
            neg   (0x00,SP)                        ;0x009970,    00 00          
            neg   (0x00,SP)                        ;0x009972,    00 00          
            neg   (0x00,SP)                        ;0x009974,    00 00          
            neg   (0x00,SP)                        ;0x009976,    00 00          
            neg   (0x00,SP)                        ;0x009978,    00 00          
            neg   (0x00,SP)                        ;0x00997A,    00 00          
            neg   (0x00,SP)                        ;0x00997C,    00 00          
            neg   (0x00,SP)                        ;0x00997E,    00 00          
            neg   (0x00,SP)                        ;0x009980,    00 00          
            neg   (0x00,SP)                        ;0x009982,    00 00          
            neg   (0x00,SP)                        ;0x009984,    00 00          
            neg   (0x00,SP)                        ;0x009986,    00 00          
            neg   (0x00,SP)                        ;0x009988,    00 00          
            neg   (0x00,SP)                        ;0x00998A,    00 00          
            neg   (0x00,SP)                        ;0x00998C,    00 00          
            neg   (0x00,SP)                        ;0x00998E,    00 00          
            neg   (0x00,SP)                        ;0x009990,    00 00          
            neg   (0x00,SP)                        ;0x009992,    00 00          
            neg   (0x00,SP)                        ;0x009994,    00 00          
            neg   (0x00,SP)                        ;0x009996,    00 00          
            neg   (0x00,SP)                        ;0x009998,    00 00          
            neg   (0x00,SP)                        ;0x00999A,    00 00          
            neg   (0x00,SP)                        ;0x00999C,    00 00          
            neg   (0x00,SP)                        ;0x00999E,    00 00          
            neg   (0x00,SP)                        ;0x0099A0,    00 00          
            neg   (0x00,SP)                        ;0x0099A2,    00 00          
            neg   (0x00,SP)                        ;0x0099A4,    00 00          
            neg   (0x00,SP)                        ;0x0099A6,    00 00          
            neg   (0x00,SP)                        ;0x0099A8,    00 00          
            neg   (0x00,SP)                        ;0x0099AA,    00 00          
            neg   (0x00,SP)                        ;0x0099AC,    00 00          
            neg   (0x00,SP)                        ;0x0099AE,    00 00          
            neg   (0x00,SP)                        ;0x0099B0,    00 00          
            neg   (0x00,SP)                        ;0x0099B2,    00 00          
            neg   (0x00,SP)                        ;0x0099B4,    00 00          
            neg   (0x00,SP)                        ;0x0099B6,    00 00          
            neg   (0x00,SP)                        ;0x0099B8,    00 00          
            neg   (0x00,SP)                        ;0x0099BA,    00 00          
            neg   (0x00,SP)                        ;0x0099BC,    00 00          
            neg   (0x00,SP)                        ;0x0099BE,    00 00          
            neg   (0x00,SP)                        ;0x0099C0,    00 00          
            neg   (0x00,SP)                        ;0x0099C2,    00 00          
            neg   (0x00,SP)                        ;0x0099C4,    00 00          
            neg   (0x00,SP)                        ;0x0099C6,    00 00          
            neg   (0x00,SP)                        ;0x0099C8,    00 00          
            neg   (0x00,SP)                        ;0x0099CA,    00 00          
            neg   (0x00,SP)                        ;0x0099CC,    00 00          
            neg   (0x00,SP)                        ;0x0099CE,    00 00          
            neg   (0x00,SP)                        ;0x0099D0,    00 00          
            neg   (0x00,SP)                        ;0x0099D2,    00 00          
            neg   (0x00,SP)                        ;0x0099D4,    00 00          
            neg   (0x00,SP)                        ;0x0099D6,    00 00          
            neg   (0x00,SP)                        ;0x0099D8,    00 00          
            neg   (0x00,SP)                        ;0x0099DA,    00 00          
            neg   (0x00,SP)                        ;0x0099DC,    00 00          
            neg   (0x00,SP)                        ;0x0099DE,    00 00          
            neg   (0x00,SP)                        ;0x0099E0,    00 00          
            neg   (0x00,SP)                        ;0x0099E2,    00 00          
            neg   (0x00,SP)                        ;0x0099E4,    00 00          
            neg   (0x00,SP)                        ;0x0099E6,    00 00          
            neg   (0x00,SP)                        ;0x0099E8,    00 00          
            neg   (0x00,SP)                        ;0x0099EA,    00 00          
            neg   (0x00,SP)                        ;0x0099EC,    00 00          
            neg   (0x00,SP)                        ;0x0099EE,    00 00          
            neg   (0x00,SP)                        ;0x0099F0,    00 00          
            neg   (0x00,SP)                        ;0x0099F2,    00 00          
            neg   (0x00,SP)                        ;0x0099F4,    00 00          
            neg   (0x00,SP)                        ;0x0099F6,    00 00          
            neg   (0x00,SP)                        ;0x0099F8,    00 00          
            neg   (0x00,SP)                        ;0x0099FA,    00 00          
            neg   (0x00,SP)                        ;0x0099FC,    00 00          
            neg   (0x00,SP)                        ;0x0099FE,    00 00          
            neg   (0x00,SP)                        ;0x009A00,    00 00          
            neg   (0x00,SP)                        ;0x009A02,    00 00          
            neg   (0x00,SP)                        ;0x009A04,    00 00          
            neg   (0x00,SP)                        ;0x009A06,    00 00          
            neg   (0x00,SP)                        ;0x009A08,    00 00          
            neg   (0x00,SP)                        ;0x009A0A,    00 00          
            neg   (0x00,SP)                        ;0x009A0C,    00 00          
            neg   (0x00,SP)                        ;0x009A0E,    00 00          
            neg   (0x00,SP)                        ;0x009A10,    00 00          
            neg   (0x00,SP)                        ;0x009A12,    00 00          
            neg   (0x00,SP)                        ;0x009A14,    00 00          
            neg   (0x00,SP)                        ;0x009A16,    00 00          
            neg   (0x00,SP)                        ;0x009A18,    00 00          
            neg   (0x00,SP)                        ;0x009A1A,    00 00          
            neg   (0x00,SP)                        ;0x009A1C,    00 00          
            neg   (0x00,SP)                        ;0x009A1E,    00 00          
            neg   (0x00,SP)                        ;0x009A20,    00 00          
            neg   (0x00,SP)                        ;0x009A22,    00 00          
            neg   (0x00,SP)                        ;0x009A24,    00 00          
            neg   (0x00,SP)                        ;0x009A26,    00 00          
            neg   (0x00,SP)                        ;0x009A28,    00 00          
            neg   (0x00,SP)                        ;0x009A2A,    00 00          
            neg   (0x00,SP)                        ;0x009A2C,    00 00          
            neg   (0x00,SP)                        ;0x009A2E,    00 00          
            neg   (0x00,SP)                        ;0x009A30,    00 00          
            neg   (0x00,SP)                        ;0x009A32,    00 00          
            neg   (0x00,SP)                        ;0x009A34,    00 00          
            neg   (0x00,SP)                        ;0x009A36,    00 00          
            neg   (0x00,SP)                        ;0x009A38,    00 00          
            neg   (0x00,SP)                        ;0x009A3A,    00 00          
            neg   (0x00,SP)                        ;0x009A3C,    00 00          
            neg   (0x00,SP)                        ;0x009A3E,    00 00          
            neg   (0x00,SP)                        ;0x009A40,    00 00          
            neg   (0x00,SP)                        ;0x009A42,    00 00          
            neg   (0x00,SP)                        ;0x009A44,    00 00          
            neg   (0x00,SP)                        ;0x009A46,    00 00          
            neg   (0x00,SP)                        ;0x009A48,    00 00          
            neg   (0x00,SP)                        ;0x009A4A,    00 00          
            neg   (0x00,SP)                        ;0x009A4C,    00 00          
            neg   (0x00,SP)                        ;0x009A4E,    00 00          
            neg   (0x00,SP)                        ;0x009A50,    00 00          
            neg   (0x00,SP)                        ;0x009A52,    00 00          
            neg   (0x00,SP)                        ;0x009A54,    00 00          
            neg   (0x00,SP)                        ;0x009A56,    00 00          
            neg   (0x00,SP)                        ;0x009A58,    00 00          
            neg   (0x00,SP)                        ;0x009A5A,    00 00          
            neg   (0x00,SP)                        ;0x009A5C,    00 00          
            neg   (0x00,SP)                        ;0x009A5E,    00 00          
            neg   (0x00,SP)                        ;0x009A60,    00 00          
            neg   (0x00,SP)                        ;0x009A62,    00 00          
            neg   (0x00,SP)                        ;0x009A64,    00 00          
            neg   (0x00,SP)                        ;0x009A66,    00 00          
            neg   (0x00,SP)                        ;0x009A68,    00 00          
            neg   (0x00,SP)                        ;0x009A6A,    00 00          
            neg   (0x00,SP)                        ;0x009A6C,    00 00          
            neg   (0x00,SP)                        ;0x009A6E,    00 00          
            neg   (0x00,SP)                        ;0x009A70,    00 00          
            neg   (0x00,SP)                        ;0x009A72,    00 00          
            neg   (0x00,SP)                        ;0x009A74,    00 00          
            neg   (0x00,SP)                        ;0x009A76,    00 00          
            neg   (0x00,SP)                        ;0x009A78,    00 00          
            neg   (0x00,SP)                        ;0x009A7A,    00 00          
            neg   (0x00,SP)                        ;0x009A7C,    00 00          
            neg   (0x00,SP)                        ;0x009A7E,    00 00          
            neg   (0x00,SP)                        ;0x009A80,    00 00          
            neg   (0x00,SP)                        ;0x009A82,    00 00          
            neg   (0x00,SP)                        ;0x009A84,    00 00          
            neg   (0x00,SP)                        ;0x009A86,    00 00          
            neg   (0x00,SP)                        ;0x009A88,    00 00          
            neg   (0x00,SP)                        ;0x009A8A,    00 00          
            neg   (0x00,SP)                        ;0x009A8C,    00 00          
            neg   (0x00,SP)                        ;0x009A8E,    00 00          
            neg   (0x00,SP)                        ;0x009A90,    00 00          
            neg   (0x00,SP)                        ;0x009A92,    00 00          
            neg   (0x00,SP)                        ;0x009A94,    00 00          
            neg   (0x00,SP)                        ;0x009A96,    00 00          
            neg   (0x00,SP)                        ;0x009A98,    00 00          
            neg   (0x00,SP)                        ;0x009A9A,    00 00          
            neg   (0x00,SP)                        ;0x009A9C,    00 00          
            neg   (0x00,SP)                        ;0x009A9E,    00 00          
            neg   (0x00,SP)                        ;0x009AA0,    00 00          
            neg   (0x00,SP)                        ;0x009AA2,    00 00          
            neg   (0x00,SP)                        ;0x009AA4,    00 00          
            neg   (0x00,SP)                        ;0x009AA6,    00 00          
            neg   (0x00,SP)                        ;0x009AA8,    00 00          
            neg   (0x00,SP)                        ;0x009AAA,    00 00          
            neg   (0x00,SP)                        ;0x009AAC,    00 00          
            neg   (0x00,SP)                        ;0x009AAE,    00 00          
            neg   (0x00,SP)                        ;0x009AB0,    00 00          
            neg   (0x00,SP)                        ;0x009AB2,    00 00          
            neg   (0x00,SP)                        ;0x009AB4,    00 00          
            neg   (0x00,SP)                        ;0x009AB6,    00 00          
            neg   (0x00,SP)                        ;0x009AB8,    00 00          
            neg   (0x00,SP)                        ;0x009ABA,    00 00          
            neg   (0x00,SP)                        ;0x009ABC,    00 00          
            neg   (0x00,SP)                        ;0x009ABE,    00 00          
            neg   (0x00,SP)                        ;0x009AC0,    00 00          
            neg   (0x00,SP)                        ;0x009AC2,    00 00          
            neg   (0x00,SP)                        ;0x009AC4,    00 00          
            neg   (0x00,SP)                        ;0x009AC6,    00 00          
            neg   (0x00,SP)                        ;0x009AC8,    00 00          
            neg   (0x00,SP)                        ;0x009ACA,    00 00          
            neg   (0x00,SP)                        ;0x009ACC,    00 00          
            neg   (0x00,SP)                        ;0x009ACE,    00 00          
            neg   (0x00,SP)                        ;0x009AD0,    00 00          
            neg   (0x00,SP)                        ;0x009AD2,    00 00          
            neg   (0x00,SP)                        ;0x009AD4,    00 00          
            neg   (0x00,SP)                        ;0x009AD6,    00 00          
            neg   (0x00,SP)                        ;0x009AD8,    00 00          
            neg   (0x00,SP)                        ;0x009ADA,    00 00          
            neg   (0x00,SP)                        ;0x009ADC,    00 00          
            neg   (0x00,SP)                        ;0x009ADE,    00 00          
            neg   (0x00,SP)                        ;0x009AE0,    00 00          
            neg   (0x00,SP)                        ;0x009AE2,    00 00          
            neg   (0x00,SP)                        ;0x009AE4,    00 00          
            neg   (0x00,SP)                        ;0x009AE6,    00 00          
            neg   (0x00,SP)                        ;0x009AE8,    00 00          
            neg   (0x00,SP)                        ;0x009AEA,    00 00          
            neg   (0x00,SP)                        ;0x009AEC,    00 00          
            neg   (0x00,SP)                        ;0x009AEE,    00 00          
            neg   (0x00,SP)                        ;0x009AF0,    00 00          
            neg   (0x00,SP)                        ;0x009AF2,    00 00          
            neg   (0x00,SP)                        ;0x009AF4,    00 00          
            neg   (0x00,SP)                        ;0x009AF6,    00 00          
            neg   (0x00,SP)                        ;0x009AF8,    00 00          
            neg   (0x00,SP)                        ;0x009AFA,    00 00          
            neg   (0x00,SP)                        ;0x009AFC,    00 00          
            neg   (0x00,SP)                        ;0x009AFE,    00 00          
            neg   (0x00,SP)                        ;0x009B00,    00 00          
            neg   (0x00,SP)                        ;0x009B02,    00 00          
            neg   (0x00,SP)                        ;0x009B04,    00 00          
            neg   (0x00,SP)                        ;0x009B06,    00 00          
            neg   (0x00,SP)                        ;0x009B08,    00 00          
            neg   (0x00,SP)                        ;0x009B0A,    00 00          
            neg   (0x00,SP)                        ;0x009B0C,    00 00          
            neg   (0x00,SP)                        ;0x009B0E,    00 00          
            neg   (0x00,SP)                        ;0x009B10,    00 00          
            neg   (0x00,SP)                        ;0x009B12,    00 00          
            neg   (0x00,SP)                        ;0x009B14,    00 00          
            neg   (0x00,SP)                        ;0x009B16,    00 00          
            neg   (0x00,SP)                        ;0x009B18,    00 00          
            neg   (0x00,SP)                        ;0x009B1A,    00 00          
            neg   (0x00,SP)                        ;0x009B1C,    00 00          
            neg   (0x00,SP)                        ;0x009B1E,    00 00          
            neg   (0x00,SP)                        ;0x009B20,    00 00          
            neg   (0x00,SP)                        ;0x009B22,    00 00          
            neg   (0x00,SP)                        ;0x009B24,    00 00          
            neg   (0x00,SP)                        ;0x009B26,    00 00          
            neg   (0x00,SP)                        ;0x009B28,    00 00          
            neg   (0x00,SP)                        ;0x009B2A,    00 00          
            neg   (0x00,SP)                        ;0x009B2C,    00 00          
            neg   (0x00,SP)                        ;0x009B2E,    00 00          
            neg   (0x00,SP)                        ;0x009B30,    00 00          
            neg   (0x00,SP)                        ;0x009B32,    00 00          
            neg   (0x00,SP)                        ;0x009B34,    00 00          
            neg   (0x00,SP)                        ;0x009B36,    00 00          
            neg   (0x00,SP)                        ;0x009B38,    00 00          
            neg   (0x00,SP)                        ;0x009B3A,    00 00          
            neg   (0x00,SP)                        ;0x009B3C,    00 00          
            neg   (0x00,SP)                        ;0x009B3E,    00 00          
            neg   (0x00,SP)                        ;0x009B40,    00 00          
            neg   (0x00,SP)                        ;0x009B42,    00 00          
            neg   (0x00,SP)                        ;0x009B44,    00 00          
            neg   (0x00,SP)                        ;0x009B46,    00 00          
            neg   (0x00,SP)                        ;0x009B48,    00 00          
            neg   (0x00,SP)                        ;0x009B4A,    00 00          
            neg   (0x00,SP)                        ;0x009B4C,    00 00          
            neg   (0x00,SP)                        ;0x009B4E,    00 00          
            neg   (0x00,SP)                        ;0x009B50,    00 00          
            neg   (0x00,SP)                        ;0x009B52,    00 00          
            neg   (0x00,SP)                        ;0x009B54,    00 00          
            neg   (0x00,SP)                        ;0x009B56,    00 00          
            neg   (0x00,SP)                        ;0x009B58,    00 00          
            neg   (0x00,SP)                        ;0x009B5A,    00 00          
            neg   (0x00,SP)                        ;0x009B5C,    00 00          
            neg   (0x00,SP)                        ;0x009B5E,    00 00          
            neg   (0x00,SP)                        ;0x009B60,    00 00          
            neg   (0x00,SP)                        ;0x009B62,    00 00          
            neg   (0x00,SP)                        ;0x009B64,    00 00          
            neg   (0x00,SP)                        ;0x009B66,    00 00          
            neg   (0x00,SP)                        ;0x009B68,    00 00          
            neg   (0x00,SP)                        ;0x009B6A,    00 00          
            neg   (0x00,SP)                        ;0x009B6C,    00 00          
            neg   (0x00,SP)                        ;0x009B6E,    00 00          
            neg   (0x00,SP)                        ;0x009B70,    00 00          
            neg   (0x00,SP)                        ;0x009B72,    00 00          
            neg   (0x00,SP)                        ;0x009B74,    00 00          
            neg   (0x00,SP)                        ;0x009B76,    00 00          
            neg   (0x00,SP)                        ;0x009B78,    00 00          
            neg   (0x00,SP)                        ;0x009B7A,    00 00          
            neg   (0x00,SP)                        ;0x009B7C,    00 00          
            neg   (0x00,SP)                        ;0x009B7E,    00 00          
            neg   (0x00,SP)                        ;0x009B80,    00 00          
            neg   (0x00,SP)                        ;0x009B82,    00 00          
            neg   (0x00,SP)                        ;0x009B84,    00 00          
            neg   (0x00,SP)                        ;0x009B86,    00 00          
            neg   (0x00,SP)                        ;0x009B88,    00 00          
            neg   (0x00,SP)                        ;0x009B8A,    00 00          
            neg   (0x00,SP)                        ;0x009B8C,    00 00          
            neg   (0x00,SP)                        ;0x009B8E,    00 00          
            neg   (0x00,SP)                        ;0x009B90,    00 00          
            neg   (0x00,SP)                        ;0x009B92,    00 00          
            neg   (0x00,SP)                        ;0x009B94,    00 00          
            neg   (0x00,SP)                        ;0x009B96,    00 00          
            neg   (0x00,SP)                        ;0x009B98,    00 00          
            neg   (0x00,SP)                        ;0x009B9A,    00 00          
            neg   (0x00,SP)                        ;0x009B9C,    00 00          
            neg   (0x00,SP)                        ;0x009B9E,    00 00          
            neg   (0x00,SP)                        ;0x009BA0,    00 00          
            neg   (0x00,SP)                        ;0x009BA2,    00 00          
            neg   (0x00,SP)                        ;0x009BA4,    00 00          
            neg   (0x00,SP)                        ;0x009BA6,    00 00          
            neg   (0x00,SP)                        ;0x009BA8,    00 00          
            neg   (0x00,SP)                        ;0x009BAA,    00 00          
            neg   (0x00,SP)                        ;0x009BAC,    00 00          
            neg   (0x00,SP)                        ;0x009BAE,    00 00          
            neg   (0x00,SP)                        ;0x009BB0,    00 00          
            neg   (0x00,SP)                        ;0x009BB2,    00 00          
            neg   (0x00,SP)                        ;0x009BB4,    00 00          
            neg   (0x00,SP)                        ;0x009BB6,    00 00          
            neg   (0x00,SP)                        ;0x009BB8,    00 00          
            neg   (0x00,SP)                        ;0x009BBA,    00 00          
            neg   (0x00,SP)                        ;0x009BBC,    00 00          
            neg   (0x00,SP)                        ;0x009BBE,    00 00          
            neg   (0x00,SP)                        ;0x009BC0,    00 00          
            neg   (0x00,SP)                        ;0x009BC2,    00 00          
            neg   (0x00,SP)                        ;0x009BC4,    00 00          
            neg   (0x00,SP)                        ;0x009BC6,    00 00          
            neg   (0x00,SP)                        ;0x009BC8,    00 00          
            neg   (0x00,SP)                        ;0x009BCA,    00 00          
            neg   (0x00,SP)                        ;0x009BCC,    00 00          
            neg   (0x00,SP)                        ;0x009BCE,    00 00          
            neg   (0x00,SP)                        ;0x009BD0,    00 00          
            neg   (0x00,SP)                        ;0x009BD2,    00 00          
            neg   (0x00,SP)                        ;0x009BD4,    00 00          
            neg   (0x00,SP)                        ;0x009BD6,    00 00          
            neg   (0x00,SP)                        ;0x009BD8,    00 00          
            neg   (0x00,SP)                        ;0x009BDA,    00 00          
            neg   (0x00,SP)                        ;0x009BDC,    00 00          
            neg   (0x00,SP)                        ;0x009BDE,    00 00          
            neg   (0x00,SP)                        ;0x009BE0,    00 00          
            neg   (0x00,SP)                        ;0x009BE2,    00 00          
            neg   (0x00,SP)                        ;0x009BE4,    00 00          
            neg   (0x00,SP)                        ;0x009BE6,    00 00          
            neg   (0x00,SP)                        ;0x009BE8,    00 00          
            neg   (0x00,SP)                        ;0x009BEA,    00 00          
            neg   (0x00,SP)                        ;0x009BEC,    00 00          
            neg   (0x00,SP)                        ;0x009BEE,    00 00          
            neg   (0x00,SP)                        ;0x009BF0,    00 00          
            neg   (0x00,SP)                        ;0x009BF2,    00 00          
            neg   (0x00,SP)                        ;0x009BF4,    00 00          
            neg   (0x00,SP)                        ;0x009BF6,    00 00          
            neg   (0x00,SP)                        ;0x009BF8,    00 00          
            neg   (0x00,SP)                        ;0x009BFA,    00 00          
            neg   (0x00,SP)                        ;0x009BFC,    00 00          
            neg   (0x00,SP)                        ;0x009BFE,    00 00          
            neg   (0x00,SP)                        ;0x009C00,    00 00          
            neg   (0x00,SP)                        ;0x009C02,    00 00          
            neg   (0x00,SP)                        ;0x009C04,    00 00          
            neg   (0x00,SP)                        ;0x009C06,    00 00          
            neg   (0x00,SP)                        ;0x009C08,    00 00          
            neg   (0x00,SP)                        ;0x009C0A,    00 00          
            neg   (0x00,SP)                        ;0x009C0C,    00 00          
            neg   (0x00,SP)                        ;0x009C0E,    00 00          
            neg   (0x00,SP)                        ;0x009C10,    00 00          
            neg   (0x00,SP)                        ;0x009C12,    00 00          
            neg   (0x00,SP)                        ;0x009C14,    00 00          
            neg   (0x00,SP)                        ;0x009C16,    00 00          
            neg   (0x00,SP)                        ;0x009C18,    00 00          
            neg   (0x00,SP)                        ;0x009C1A,    00 00          
            neg   (0x00,SP)                        ;0x009C1C,    00 00          
            neg   (0x00,SP)                        ;0x009C1E,    00 00          
            neg   (0x00,SP)                        ;0x009C20,    00 00          
            neg   (0x00,SP)                        ;0x009C22,    00 00          
            neg   (0x00,SP)                        ;0x009C24,    00 00          
            neg   (0x00,SP)                        ;0x009C26,    00 00          
            neg   (0x00,SP)                        ;0x009C28,    00 00          
            neg   (0x00,SP)                        ;0x009C2A,    00 00          
            neg   (0x00,SP)                        ;0x009C2C,    00 00          
            neg   (0x00,SP)                        ;0x009C2E,    00 00          
            neg   (0x00,SP)                        ;0x009C30,    00 00          
            neg   (0x00,SP)                        ;0x009C32,    00 00          
            neg   (0x00,SP)                        ;0x009C34,    00 00          
            neg   (0x00,SP)                        ;0x009C36,    00 00          
            neg   (0x00,SP)                        ;0x009C38,    00 00          
            neg   (0x00,SP)                        ;0x009C3A,    00 00          
            neg   (0x00,SP)                        ;0x009C3C,    00 00          
            neg   (0x00,SP)                        ;0x009C3E,    00 00          
            neg   (0x00,SP)                        ;0x009C40,    00 00          
            neg   (0x00,SP)                        ;0x009C42,    00 00          
            neg   (0x00,SP)                        ;0x009C44,    00 00          
            neg   (0x00,SP)                        ;0x009C46,    00 00          
            neg   (0x00,SP)                        ;0x009C48,    00 00          
            neg   (0x00,SP)                        ;0x009C4A,    00 00          
            neg   (0x00,SP)                        ;0x009C4C,    00 00          
            neg   (0x00,SP)                        ;0x009C4E,    00 00          
            neg   (0x00,SP)                        ;0x009C50,    00 00          
            neg   (0x00,SP)                        ;0x009C52,    00 00          
            neg   (0x00,SP)                        ;0x009C54,    00 00          
            neg   (0x00,SP)                        ;0x009C56,    00 00          
            neg   (0x00,SP)                        ;0x009C58,    00 00          
            neg   (0x00,SP)                        ;0x009C5A,    00 00          
            neg   (0x00,SP)                        ;0x009C5C,    00 00          
            neg   (0x00,SP)                        ;0x009C5E,    00 00          
            neg   (0x00,SP)                        ;0x009C60,    00 00          
            neg   (0x00,SP)                        ;0x009C62,    00 00          
            neg   (0x00,SP)                        ;0x009C64,    00 00          
            neg   (0x00,SP)                        ;0x009C66,    00 00          
            neg   (0x00,SP)                        ;0x009C68,    00 00          
            neg   (0x00,SP)                        ;0x009C6A,    00 00          
            neg   (0x00,SP)                        ;0x009C6C,    00 00          
            neg   (0x00,SP)                        ;0x009C6E,    00 00          
            neg   (0x00,SP)                        ;0x009C70,    00 00          
            neg   (0x00,SP)                        ;0x009C72,    00 00          
            neg   (0x00,SP)                        ;0x009C74,    00 00          
            neg   (0x00,SP)                        ;0x009C76,    00 00          
            neg   (0x00,SP)                        ;0x009C78,    00 00          
            neg   (0x00,SP)                        ;0x009C7A,    00 00          
            neg   (0x00,SP)                        ;0x009C7C,    00 00          
            neg   (0x00,SP)                        ;0x009C7E,    00 00          
            neg   (0x00,SP)                        ;0x009C80,    00 00          
            neg   (0x00,SP)                        ;0x009C82,    00 00          
            neg   (0x00,SP)                        ;0x009C84,    00 00          
            neg   (0x00,SP)                        ;0x009C86,    00 00          
            neg   (0x00,SP)                        ;0x009C88,    00 00          
            neg   (0x00,SP)                        ;0x009C8A,    00 00          
            neg   (0x00,SP)                        ;0x009C8C,    00 00          
            neg   (0x00,SP)                        ;0x009C8E,    00 00          
            neg   (0x00,SP)                        ;0x009C90,    00 00          
            neg   (0x00,SP)                        ;0x009C92,    00 00          
            neg   (0x00,SP)                        ;0x009C94,    00 00          
            neg   (0x00,SP)                        ;0x009C96,    00 00          
            neg   (0x00,SP)                        ;0x009C98,    00 00          
            neg   (0x00,SP)                        ;0x009C9A,    00 00          
            neg   (0x00,SP)                        ;0x009C9C,    00 00          
            neg   (0x00,SP)                        ;0x009C9E,    00 00          
            neg   (0x00,SP)                        ;0x009CA0,    00 00          
            neg   (0x00,SP)                        ;0x009CA2,    00 00          
            neg   (0x00,SP)                        ;0x009CA4,    00 00          
            neg   (0x00,SP)                        ;0x009CA6,    00 00          
            neg   (0x00,SP)                        ;0x009CA8,    00 00          
            neg   (0x00,SP)                        ;0x009CAA,    00 00          
            neg   (0x00,SP)                        ;0x009CAC,    00 00          
            neg   (0x00,SP)                        ;0x009CAE,    00 00          
            neg   (0x00,SP)                        ;0x009CB0,    00 00          
            neg   (0x00,SP)                        ;0x009CB2,    00 00          
            neg   (0x00,SP)                        ;0x009CB4,    00 00          
            neg   (0x00,SP)                        ;0x009CB6,    00 00          
            neg   (0x00,SP)                        ;0x009CB8,    00 00          
            neg   (0x00,SP)                        ;0x009CBA,    00 00          
            neg   (0x00,SP)                        ;0x009CBC,    00 00          
            neg   (0x00,SP)                        ;0x009CBE,    00 00          
            neg   (0x00,SP)                        ;0x009CC0,    00 00          
            neg   (0x00,SP)                        ;0x009CC2,    00 00          
            neg   (0x00,SP)                        ;0x009CC4,    00 00          
            neg   (0x00,SP)                        ;0x009CC6,    00 00          
            neg   (0x00,SP)                        ;0x009CC8,    00 00          
            neg   (0x00,SP)                        ;0x009CCA,    00 00          
            neg   (0x00,SP)                        ;0x009CCC,    00 00          
            neg   (0x00,SP)                        ;0x009CCE,    00 00          
            neg   (0x00,SP)                        ;0x009CD0,    00 00          
            neg   (0x00,SP)                        ;0x009CD2,    00 00          
            neg   (0x00,SP)                        ;0x009CD4,    00 00          
            neg   (0x00,SP)                        ;0x009CD6,    00 00          
            neg   (0x00,SP)                        ;0x009CD8,    00 00          
            neg   (0x00,SP)                        ;0x009CDA,    00 00          
            neg   (0x00,SP)                        ;0x009CDC,    00 00          
            neg   (0x00,SP)                        ;0x009CDE,    00 00          
            neg   (0x00,SP)                        ;0x009CE0,    00 00          
            neg   (0x00,SP)                        ;0x009CE2,    00 00          
            neg   (0x00,SP)                        ;0x009CE4,    00 00          
            neg   (0x00,SP)                        ;0x009CE6,    00 00          
            neg   (0x00,SP)                        ;0x009CE8,    00 00          
            neg   (0x00,SP)                        ;0x009CEA,    00 00          
            neg   (0x00,SP)                        ;0x009CEC,    00 00          
            neg   (0x00,SP)                        ;0x009CEE,    00 00          
            neg   (0x00,SP)                        ;0x009CF0,    00 00          
            neg   (0x00,SP)                        ;0x009CF2,    00 00          
            neg   (0x00,SP)                        ;0x009CF4,    00 00          
            neg   (0x00,SP)                        ;0x009CF6,    00 00          
            neg   (0x00,SP)                        ;0x009CF8,    00 00          
            neg   (0x00,SP)                        ;0x009CFA,    00 00          
            neg   (0x00,SP)                        ;0x009CFC,    00 00          
            neg   (0x00,SP)                        ;0x009CFE,    00 00          
            neg   (0x00,SP)                        ;0x009D00,    00 00          
            neg   (0x00,SP)                        ;0x009D02,    00 00          
            neg   (0x00,SP)                        ;0x009D04,    00 00          
            neg   (0x00,SP)                        ;0x009D06,    00 00          
            neg   (0x00,SP)                        ;0x009D08,    00 00          
            neg   (0x00,SP)                        ;0x009D0A,    00 00          
            neg   (0x00,SP)                        ;0x009D0C,    00 00          
            neg   (0x00,SP)                        ;0x009D0E,    00 00          
            neg   (0x00,SP)                        ;0x009D10,    00 00          
            neg   (0x00,SP)                        ;0x009D12,    00 00          
            neg   (0x00,SP)                        ;0x009D14,    00 00          
            neg   (0x00,SP)                        ;0x009D16,    00 00          
            neg   (0x00,SP)                        ;0x009D18,    00 00          
            neg   (0x00,SP)                        ;0x009D1A,    00 00          
            neg   (0x00,SP)                        ;0x009D1C,    00 00          
            neg   (0x00,SP)                        ;0x009D1E,    00 00          
            neg   (0x00,SP)                        ;0x009D20,    00 00          
            neg   (0x00,SP)                        ;0x009D22,    00 00          
            neg   (0x00,SP)                        ;0x009D24,    00 00          
            neg   (0x00,SP)                        ;0x009D26,    00 00          
            neg   (0x00,SP)                        ;0x009D28,    00 00          
            neg   (0x00,SP)                        ;0x009D2A,    00 00          
            neg   (0x00,SP)                        ;0x009D2C,    00 00          
            neg   (0x00,SP)                        ;0x009D2E,    00 00          
            neg   (0x00,SP)                        ;0x009D30,    00 00          
            neg   (0x00,SP)                        ;0x009D32,    00 00          
            neg   (0x00,SP)                        ;0x009D34,    00 00          
            neg   (0x00,SP)                        ;0x009D36,    00 00          
            neg   (0x00,SP)                        ;0x009D38,    00 00          
            neg   (0x00,SP)                        ;0x009D3A,    00 00          
            neg   (0x00,SP)                        ;0x009D3C,    00 00          
            neg   (0x00,SP)                        ;0x009D3E,    00 00          
            neg   (0x00,SP)                        ;0x009D40,    00 00          
            neg   (0x00,SP)                        ;0x009D42,    00 00          
            neg   (0x00,SP)                        ;0x009D44,    00 00          
            neg   (0x00,SP)                        ;0x009D46,    00 00          
            neg   (0x00,SP)                        ;0x009D48,    00 00          
            neg   (0x00,SP)                        ;0x009D4A,    00 00          
            neg   (0x00,SP)                        ;0x009D4C,    00 00          
            neg   (0x00,SP)                        ;0x009D4E,    00 00          
            neg   (0x00,SP)                        ;0x009D50,    00 00          
            neg   (0x00,SP)                        ;0x009D52,    00 00          
            neg   (0x00,SP)                        ;0x009D54,    00 00          
            neg   (0x00,SP)                        ;0x009D56,    00 00          
            neg   (0x00,SP)                        ;0x009D58,    00 00          
            neg   (0x00,SP)                        ;0x009D5A,    00 00          
            neg   (0x00,SP)                        ;0x009D5C,    00 00          
            neg   (0x00,SP)                        ;0x009D5E,    00 00          
            neg   (0x00,SP)                        ;0x009D60,    00 00          
            neg   (0x00,SP)                        ;0x009D62,    00 00          
            neg   (0x00,SP)                        ;0x009D64,    00 00          
            neg   (0x00,SP)                        ;0x009D66,    00 00          
            neg   (0x00,SP)                        ;0x009D68,    00 00          
            neg   (0x00,SP)                        ;0x009D6A,    00 00          
            neg   (0x00,SP)                        ;0x009D6C,    00 00          
            neg   (0x00,SP)                        ;0x009D6E,    00 00          
            neg   (0x00,SP)                        ;0x009D70,    00 00          
            neg   (0x00,SP)                        ;0x009D72,    00 00          
            neg   (0x00,SP)                        ;0x009D74,    00 00          
            neg   (0x00,SP)                        ;0x009D76,    00 00          
            neg   (0x00,SP)                        ;0x009D78,    00 00          
            neg   (0x00,SP)                        ;0x009D7A,    00 00          
            neg   (0x00,SP)                        ;0x009D7C,    00 00          
            neg   (0x00,SP)                        ;0x009D7E,    00 00          
            neg   (0x00,SP)                        ;0x009D80,    00 00          
            neg   (0x00,SP)                        ;0x009D82,    00 00          
            neg   (0x00,SP)                        ;0x009D84,    00 00          
            neg   (0x00,SP)                        ;0x009D86,    00 00          
            neg   (0x00,SP)                        ;0x009D88,    00 00          
            neg   (0x00,SP)                        ;0x009D8A,    00 00          
            neg   (0x00,SP)                        ;0x009D8C,    00 00          
            neg   (0x00,SP)                        ;0x009D8E,    00 00          
            neg   (0x00,SP)                        ;0x009D90,    00 00          
            neg   (0x00,SP)                        ;0x009D92,    00 00          
            neg   (0x00,SP)                        ;0x009D94,    00 00          
            neg   (0x00,SP)                        ;0x009D96,    00 00          
            neg   (0x00,SP)                        ;0x009D98,    00 00          
            neg   (0x00,SP)                        ;0x009D9A,    00 00          
            neg   (0x00,SP)                        ;0x009D9C,    00 00          
            neg   (0x00,SP)                        ;0x009D9E,    00 00          
            neg   (0x00,SP)                        ;0x009DA0,    00 00          
            neg   (0x00,SP)                        ;0x009DA2,    00 00          
            neg   (0x00,SP)                        ;0x009DA4,    00 00          
            neg   (0x00,SP)                        ;0x009DA6,    00 00          
            neg   (0x00,SP)                        ;0x009DA8,    00 00          
            neg   (0x00,SP)                        ;0x009DAA,    00 00          
            neg   (0x00,SP)                        ;0x009DAC,    00 00          
            neg   (0x00,SP)                        ;0x009DAE,    00 00          
            neg   (0x00,SP)                        ;0x009DB0,    00 00          
            neg   (0x00,SP)                        ;0x009DB2,    00 00          
            neg   (0x00,SP)                        ;0x009DB4,    00 00          
            neg   (0x00,SP)                        ;0x009DB6,    00 00          
            neg   (0x00,SP)                        ;0x009DB8,    00 00          
            neg   (0x00,SP)                        ;0x009DBA,    00 00          
            neg   (0x00,SP)                        ;0x009DBC,    00 00          
            neg   (0x00,SP)                        ;0x009DBE,    00 00          
            neg   (0x00,SP)                        ;0x009DC0,    00 00          
            neg   (0x00,SP)                        ;0x009DC2,    00 00          
            neg   (0x00,SP)                        ;0x009DC4,    00 00          
            neg   (0x00,SP)                        ;0x009DC6,    00 00          
            neg   (0x00,SP)                        ;0x009DC8,    00 00          
            neg   (0x00,SP)                        ;0x009DCA,    00 00          
            neg   (0x00,SP)                        ;0x009DCC,    00 00          
            neg   (0x00,SP)                        ;0x009DCE,    00 00          
            neg   (0x00,SP)                        ;0x009DD0,    00 00          
            neg   (0x00,SP)                        ;0x009DD2,    00 00          
            neg   (0x00,SP)                        ;0x009DD4,    00 00          
            neg   (0x00,SP)                        ;0x009DD6,    00 00          
            neg   (0x00,SP)                        ;0x009DD8,    00 00          
            neg   (0x00,SP)                        ;0x009DDA,    00 00          
            neg   (0x00,SP)                        ;0x009DDC,    00 00          
            neg   (0x00,SP)                        ;0x009DDE,    00 00          
            neg   (0x00,SP)                        ;0x009DE0,    00 00          
            neg   (0x00,SP)                        ;0x009DE2,    00 00          
            neg   (0x00,SP)                        ;0x009DE4,    00 00          
            neg   (0x00,SP)                        ;0x009DE6,    00 00          
            neg   (0x00,SP)                        ;0x009DE8,    00 00          
            neg   (0x00,SP)                        ;0x009DEA,    00 00          
            neg   (0x00,SP)                        ;0x009DEC,    00 00          
            neg   (0x00,SP)                        ;0x009DEE,    00 00          
            neg   (0x00,SP)                        ;0x009DF0,    00 00          
            neg   (0x00,SP)                        ;0x009DF2,    00 00          
            neg   (0x00,SP)                        ;0x009DF4,    00 00          
            neg   (0x00,SP)                        ;0x009DF6,    00 00          
            neg   (0x00,SP)                        ;0x009DF8,    00 00          
            neg   (0x00,SP)                        ;0x009DFA,    00 00          
            neg   (0x00,SP)                        ;0x009DFC,    00 00          
            neg   (0x00,SP)                        ;0x009DFE,    00 00          
            neg   (0x00,SP)                        ;0x009E00,    00 00          
            neg   (0x00,SP)                        ;0x009E02,    00 00          
            neg   (0x00,SP)                        ;0x009E04,    00 00          
            neg   (0x00,SP)                        ;0x009E06,    00 00          
            neg   (0x00,SP)                        ;0x009E08,    00 00          
            neg   (0x00,SP)                        ;0x009E0A,    00 00          
            neg   (0x00,SP)                        ;0x009E0C,    00 00          
            neg   (0x00,SP)                        ;0x009E0E,    00 00          
            neg   (0x00,SP)                        ;0x009E10,    00 00          
            neg   (0x00,SP)                        ;0x009E12,    00 00          
            neg   (0x00,SP)                        ;0x009E14,    00 00          
            neg   (0x00,SP)                        ;0x009E16,    00 00          
            neg   (0x00,SP)                        ;0x009E18,    00 00          
            neg   (0x00,SP)                        ;0x009E1A,    00 00          
            neg   (0x00,SP)                        ;0x009E1C,    00 00          
            neg   (0x00,SP)                        ;0x009E1E,    00 00          
            neg   (0x00,SP)                        ;0x009E20,    00 00          
            neg   (0x00,SP)                        ;0x009E22,    00 00          
            neg   (0x00,SP)                        ;0x009E24,    00 00          
            neg   (0x00,SP)                        ;0x009E26,    00 00          
            neg   (0x00,SP)                        ;0x009E28,    00 00          
            neg   (0x00,SP)                        ;0x009E2A,    00 00          
            neg   (0x00,SP)                        ;0x009E2C,    00 00          
            neg   (0x00,SP)                        ;0x009E2E,    00 00          
            neg   (0x00,SP)                        ;0x009E30,    00 00          
            neg   (0x00,SP)                        ;0x009E32,    00 00          
            neg   (0x00,SP)                        ;0x009E34,    00 00          
            neg   (0x00,SP)                        ;0x009E36,    00 00          
            neg   (0x00,SP)                        ;0x009E38,    00 00          
            neg   (0x00,SP)                        ;0x009E3A,    00 00          
            neg   (0x00,SP)                        ;0x009E3C,    00 00          
            neg   (0x00,SP)                        ;0x009E3E,    00 00          
            neg   (0x00,SP)                        ;0x009E40,    00 00          
            neg   (0x00,SP)                        ;0x009E42,    00 00          
            neg   (0x00,SP)                        ;0x009E44,    00 00          
            neg   (0x00,SP)                        ;0x009E46,    00 00          
            neg   (0x00,SP)                        ;0x009E48,    00 00          
            neg   (0x00,SP)                        ;0x009E4A,    00 00          
            neg   (0x00,SP)                        ;0x009E4C,    00 00          
            neg   (0x00,SP)                        ;0x009E4E,    00 00          
            neg   (0x00,SP)                        ;0x009E50,    00 00          
            neg   (0x00,SP)                        ;0x009E52,    00 00          
            neg   (0x00,SP)                        ;0x009E54,    00 00          
            neg   (0x00,SP)                        ;0x009E56,    00 00          
            neg   (0x00,SP)                        ;0x009E58,    00 00          
            neg   (0x00,SP)                        ;0x009E5A,    00 00          
            neg   (0x00,SP)                        ;0x009E5C,    00 00          
            neg   (0x00,SP)                        ;0x009E5E,    00 00          
            neg   (0x00,SP)                        ;0x009E60,    00 00          
            neg   (0x00,SP)                        ;0x009E62,    00 00          
            neg   (0x00,SP)                        ;0x009E64,    00 00          
            neg   (0x00,SP)                        ;0x009E66,    00 00          
            neg   (0x00,SP)                        ;0x009E68,    00 00          
            neg   (0x00,SP)                        ;0x009E6A,    00 00          
            neg   (0x00,SP)                        ;0x009E6C,    00 00          
            neg   (0x00,SP)                        ;0x009E6E,    00 00          
            neg   (0x00,SP)                        ;0x009E70,    00 00          
            neg   (0x00,SP)                        ;0x009E72,    00 00          
            neg   (0x00,SP)                        ;0x009E74,    00 00          
            neg   (0x00,SP)                        ;0x009E76,    00 00          
            neg   (0x00,SP)                        ;0x009E78,    00 00          
            neg   (0x00,SP)                        ;0x009E7A,    00 00          
            neg   (0x00,SP)                        ;0x009E7C,    00 00          
            neg   (0x00,SP)                        ;0x009E7E,    00 00          
            neg   (0x00,SP)                        ;0x009E80,    00 00          
            neg   (0x00,SP)                        ;0x009E82,    00 00          
            neg   (0x00,SP)                        ;0x009E84,    00 00          
            neg   (0x00,SP)                        ;0x009E86,    00 00          
            neg   (0x00,SP)                        ;0x009E88,    00 00          
            neg   (0x00,SP)                        ;0x009E8A,    00 00          
            neg   (0x00,SP)                        ;0x009E8C,    00 00          
            neg   (0x00,SP)                        ;0x009E8E,    00 00          
            neg   (0x00,SP)                        ;0x009E90,    00 00          
            neg   (0x00,SP)                        ;0x009E92,    00 00          
            neg   (0x00,SP)                        ;0x009E94,    00 00          
            neg   (0x00,SP)                        ;0x009E96,    00 00          
            neg   (0x00,SP)                        ;0x009E98,    00 00          
            neg   (0x00,SP)                        ;0x009E9A,    00 00          
            neg   (0x00,SP)                        ;0x009E9C,    00 00          
            neg   (0x00,SP)                        ;0x009E9E,    00 00          
            neg   (0x00,SP)                        ;0x009EA0,    00 00          
            neg   (0x00,SP)                        ;0x009EA2,    00 00          
            neg   (0x00,SP)                        ;0x009EA4,    00 00          
            neg   (0x00,SP)                        ;0x009EA6,    00 00          
            neg   (0x00,SP)                        ;0x009EA8,    00 00          
            neg   (0x00,SP)                        ;0x009EAA,    00 00          
            neg   (0x00,SP)                        ;0x009EAC,    00 00          
            neg   (0x00,SP)                        ;0x009EAE,    00 00          
            neg   (0x00,SP)                        ;0x009EB0,    00 00          
            neg   (0x00,SP)                        ;0x009EB2,    00 00          
            neg   (0x00,SP)                        ;0x009EB4,    00 00          
            neg   (0x00,SP)                        ;0x009EB6,    00 00          
            neg   (0x00,SP)                        ;0x009EB8,    00 00          
            neg   (0x00,SP)                        ;0x009EBA,    00 00          
            neg   (0x00,SP)                        ;0x009EBC,    00 00          
            neg   (0x00,SP)                        ;0x009EBE,    00 00          
            neg   (0x00,SP)                        ;0x009EC0,    00 00          
            neg   (0x00,SP)                        ;0x009EC2,    00 00          
            neg   (0x00,SP)                        ;0x009EC4,    00 00          
            neg   (0x00,SP)                        ;0x009EC6,    00 00          
            neg   (0x00,SP)                        ;0x009EC8,    00 00          
            neg   (0x00,SP)                        ;0x009ECA,    00 00          
            neg   (0x00,SP)                        ;0x009ECC,    00 00          
            neg   (0x00,SP)                        ;0x009ECE,    00 00          
            neg   (0x00,SP)                        ;0x009ED0,    00 00          
            neg   (0x00,SP)                        ;0x009ED2,    00 00          
            neg   (0x00,SP)                        ;0x009ED4,    00 00          
            neg   (0x00,SP)                        ;0x009ED6,    00 00          
            neg   (0x00,SP)                        ;0x009ED8,    00 00          
            neg   (0x00,SP)                        ;0x009EDA,    00 00          
            neg   (0x00,SP)                        ;0x009EDC,    00 00          
            neg   (0x00,SP)                        ;0x009EDE,    00 00          
            neg   (0x00,SP)                        ;0x009EE0,    00 00          
            neg   (0x00,SP)                        ;0x009EE2,    00 00          
            neg   (0x00,SP)                        ;0x009EE4,    00 00          
            neg   (0x00,SP)                        ;0x009EE6,    00 00          
            neg   (0x00,SP)                        ;0x009EE8,    00 00          
            neg   (0x00,SP)                        ;0x009EEA,    00 00          
            neg   (0x00,SP)                        ;0x009EEC,    00 00          
            neg   (0x00,SP)                        ;0x009EEE,    00 00          
            neg   (0x00,SP)                        ;0x009EF0,    00 00          
            neg   (0x00,SP)                        ;0x009EF2,    00 00          
            neg   (0x00,SP)                        ;0x009EF4,    00 00          
            neg   (0x00,SP)                        ;0x009EF6,    00 00          
            neg   (0x00,SP)                        ;0x009EF8,    00 00          
            neg   (0x00,SP)                        ;0x009EFA,    00 00          
            neg   (0x00,SP)                        ;0x009EFC,    00 00          
            neg   (0x00,SP)                        ;0x009EFE,    00 00          
            neg   (0x00,SP)                        ;0x009F00,    00 00          
            neg   (0x00,SP)                        ;0x009F02,    00 00          
            neg   (0x00,SP)                        ;0x009F04,    00 00          
            neg   (0x00,SP)                        ;0x009F06,    00 00          
            neg   (0x00,SP)                        ;0x009F08,    00 00          
            neg   (0x00,SP)                        ;0x009F0A,    00 00          
            neg   (0x00,SP)                        ;0x009F0C,    00 00          
            neg   (0x00,SP)                        ;0x009F0E,    00 00          
            neg   (0x00,SP)                        ;0x009F10,    00 00          
            neg   (0x00,SP)                        ;0x009F12,    00 00          
            neg   (0x00,SP)                        ;0x009F14,    00 00          
            neg   (0x00,SP)                        ;0x009F16,    00 00          
            neg   (0x00,SP)                        ;0x009F18,    00 00          
            neg   (0x00,SP)                        ;0x009F1A,    00 00          
            neg   (0x00,SP)                        ;0x009F1C,    00 00          
            neg   (0x00,SP)                        ;0x009F1E,    00 00          
            neg   (0x00,SP)                        ;0x009F20,    00 00          
            neg   (0x00,SP)                        ;0x009F22,    00 00          
            neg   (0x00,SP)                        ;0x009F24,    00 00          
            neg   (0x00,SP)                        ;0x009F26,    00 00          
            neg   (0x00,SP)                        ;0x009F28,    00 00          
            neg   (0x00,SP)                        ;0x009F2A,    00 00          
            neg   (0x00,SP)                        ;0x009F2C,    00 00          
            neg   (0x00,SP)                        ;0x009F2E,    00 00          
            neg   (0x00,SP)                        ;0x009F30,    00 00          
            neg   (0x00,SP)                        ;0x009F32,    00 00          
            neg   (0x00,SP)                        ;0x009F34,    00 00          
            neg   (0x00,SP)                        ;0x009F36,    00 00          
            neg   (0x00,SP)                        ;0x009F38,    00 00          
            neg   (0x00,SP)                        ;0x009F3A,    00 00          
            neg   (0x00,SP)                        ;0x009F3C,    00 00          
            neg   (0x00,SP)                        ;0x009F3E,    00 00          
            neg   (0x00,SP)                        ;0x009F40,    00 00          
            neg   (0x00,SP)                        ;0x009F42,    00 00          
            neg   (0x00,SP)                        ;0x009F44,    00 00          
            neg   (0x00,SP)                        ;0x009F46,    00 00          
            neg   (0x00,SP)                        ;0x009F48,    00 00          
            neg   (0x00,SP)                        ;0x009F4A,    00 00          
            neg   (0x00,SP)                        ;0x009F4C,    00 00          
            neg   (0x00,SP)                        ;0x009F4E,    00 00          
            neg   (0x00,SP)                        ;0x009F50,    00 00          
            neg   (0x00,SP)                        ;0x009F52,    00 00          
            neg   (0x00,SP)                        ;0x009F54,    00 00          
            neg   (0x00,SP)                        ;0x009F56,    00 00          
            neg   (0x00,SP)                        ;0x009F58,    00 00          
            neg   (0x00,SP)                        ;0x009F5A,    00 00          
            neg   (0x00,SP)                        ;0x009F5C,    00 00          
            neg   (0x00,SP)                        ;0x009F5E,    00 00          
            neg   (0x00,SP)                        ;0x009F60,    00 00          
            neg   (0x00,SP)                        ;0x009F62,    00 00          
            neg   (0x00,SP)                        ;0x009F64,    00 00          
            neg   (0x00,SP)                        ;0x009F66,    00 00          
            neg   (0x00,SP)                        ;0x009F68,    00 00          
            neg   (0x00,SP)                        ;0x009F6A,    00 00          
            neg   (0x00,SP)                        ;0x009F6C,    00 00          
            neg   (0x00,SP)                        ;0x009F6E,    00 00          
            neg   (0x00,SP)                        ;0x009F70,    00 00          
            neg   (0x00,SP)                        ;0x009F72,    00 00          
            neg   (0x00,SP)                        ;0x009F74,    00 00          
            neg   (0x00,SP)                        ;0x009F76,    00 00          
            neg   (0x00,SP)                        ;0x009F78,    00 00          
            neg   (0x00,SP)                        ;0x009F7A,    00 00          
            neg   (0x00,SP)                        ;0x009F7C,    00 00          
            neg   (0x00,SP)                        ;0x009F7E,    00 00          
            neg   (0x00,SP)                        ;0x009F80,    00 00          
            neg   (0x00,SP)                        ;0x009F82,    00 00          
            neg   (0x00,SP)                        ;0x009F84,    00 00          
            neg   (0x00,SP)                        ;0x009F86,    00 00          
            neg   (0x00,SP)                        ;0x009F88,    00 00          
            neg   (0x00,SP)                        ;0x009F8A,    00 00          
            neg   (0x00,SP)                        ;0x009F8C,    00 00          
            neg   (0x00,SP)                        ;0x009F8E,    00 00          
            neg   (0x00,SP)                        ;0x009F90,    00 00          
            neg   (0x00,SP)                        ;0x009F92,    00 00          
            neg   (0x00,SP)                        ;0x009F94,    00 00          
            neg   (0x00,SP)                        ;0x009F96,    00 00          
            neg   (0x00,SP)                        ;0x009F98,    00 00          
            neg   (0x00,SP)                        ;0x009F9A,    00 00          
            neg   (0x00,SP)                        ;0x009F9C,    00 00          
            neg   (0x00,SP)                        ;0x009F9E,    00 00          
            neg   (0x00,SP)                        ;0x009FA0,    00 00          
            neg   (0x00,SP)                        ;0x009FA2,    00 00          
            neg   (0x00,SP)                        ;0x009FA4,    00 00          
            neg   (0x00,SP)                        ;0x009FA6,    00 00          
            neg   (0x00,SP)                        ;0x009FA8,    00 00          
            neg   (0x00,SP)                        ;0x009FAA,    00 00          
            neg   (0x00,SP)                        ;0x009FAC,    00 00          
            neg   (0x00,SP)                        ;0x009FAE,    00 00          
            neg   (0x00,SP)                        ;0x009FB0,    00 00          
            neg   (0x00,SP)                        ;0x009FB2,    00 00          
            neg   (0x00,SP)                        ;0x009FB4,    00 00          
            neg   (0x00,SP)                        ;0x009FB6,    00 00          
            neg   (0x00,SP)                        ;0x009FB8,    00 00          
            neg   (0x00,SP)                        ;0x009FBA,    00 00          
            neg   (0x00,SP)                        ;0x009FBC,    00 00          
            neg   (0x00,SP)                        ;0x009FBE,    00 00          
            neg   (0x00,SP)                        ;0x009FC0,    00 00          
            neg   (0x00,SP)                        ;0x009FC2,    00 00          
            neg   (0x00,SP)                        ;0x009FC4,    00 00          
            neg   (0x00,SP)                        ;0x009FC6,    00 00          
            neg   (0x00,SP)                        ;0x009FC8,    00 00          
            neg   (0x00,SP)                        ;0x009FCA,    00 00          
            neg   (0x00,SP)                        ;0x009FCC,    00 00          
            neg   (0x00,SP)                        ;0x009FCE,    00 00          
            neg   (0x00,SP)                        ;0x009FD0,    00 00          
            neg   (0x00,SP)                        ;0x009FD2,    00 00          
            neg   (0x00,SP)                        ;0x009FD4,    00 00          
            neg   (0x00,SP)                        ;0x009FD6,    00 00          
            neg   (0x00,SP)                        ;0x009FD8,    00 00          
            neg   (0x00,SP)                        ;0x009FDA,    00 00          
            neg   (0x00,SP)                        ;0x009FDC,    00 00          
            neg   (0x00,SP)                        ;0x009FDE,    00 00          
            neg   (0x00,SP)                        ;0x009FE0,    00 00          
            neg   (0x00,SP)                        ;0x009FE2,    00 00          
            neg   (0x00,SP)                        ;0x009FE4,    00 00          
            neg   (0x00,SP)                        ;0x009FE6,    00 00          
            neg   (0x00,SP)                        ;0x009FE8,    00 00          
            neg   (0x00,SP)                        ;0x009FEA,    00 00          
            neg   (0x00,SP)                        ;0x009FEC,    00 00          
            neg   (0x00,SP)                        ;0x009FEE,    00 00          
            neg   (0x00,SP)                        ;0x009FF0,    00 00          
            neg   (0x00,SP)                        ;0x009FF2,    00 00          
            neg   (0x00,SP)                        ;0x009FF4,    00 00          
            neg   (0x00,SP)                        ;0x009FF6,    00 00          
            neg   (0x00,SP)                        ;0x009FF8,    00 00          
            neg   (0x00,SP)                        ;0x009FFA,    00 00          
            neg   (0x00,SP)                        ;0x009FFC,    00 00          
            neg   (0x00,SP)                        ;0x009FFE,    00 00          
