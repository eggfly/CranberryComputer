
#if  Lcd_spi

//SPI发送
void SPI_SendData(unsigned char i)
{  
   unsigned char n;
   
   for(n=0; n<8; n++)			
   {  
	  if(i&0x80)   LCD_sdaH;
      	else       LCD_sdaL;
      i<<= 1;

	  LCD_sclL;//_nop_(); _nop_();_nop_();_nop_();
	  __NOP;
      LCD_sclH;//_nop_();_nop_();_nop_();_nop_();
   }
}

//regval:需要送的寄存器
void SPI_WR_REG(u8 regval)
{ 
    u8 i;
	LCD_csL;
	
	LCD_sdaL;
	LCD_sclL;
	__NOP;
	LCD_sclH;//  
	
	SPI_SendData(regval);
	LCD_csH;		 
}

//SPI送参数
void SPI_WR_DATA(u8 data)
{ 
    u8 i;
	LCD_csL;
	
	LCD_sdaH;
	LCD_sclL;
	__NOP;
	LCD_sclH;//  
	
	SPI_SendData(data);
	LCD_csH;		 
}

#define SPI_WriteComm  SPI_WR_REG 
#define SPI_WriteData  SPI_WR_DATA 
#define Delay          DelayMS 

//SPI初始化 SPI_WriteComm
 void Lcd_init(void)
{
	SPI_WriteComm(0xFF);
	SPI_WriteData(0x77);
	SPI_WriteData(0x01);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x13);

	SPI_WriteComm(0xEF);
	SPI_WriteData(0x08);

	SPI_WriteComm(0xFF);
	SPI_WriteData(0x77);
	SPI_WriteData(0x01);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x10);

	SPI_WriteComm(0xC0);
	SPI_WriteData(0x4F);
	SPI_WriteData(0x00);

	SPI_WriteComm(0xC1);
	SPI_WriteData(0x10);
	SPI_WriteData(0x02);

	SPI_WriteComm(0xC2);
	SPI_WriteData(0x07);
	SPI_WriteData(0x02);

	SPI_WriteComm(0xCC);
	SPI_WriteData(0x10);

	SPI_WriteComm(0xB0);
	SPI_WriteData(0x00);
	SPI_WriteData(0x10);
	SPI_WriteData(0x17);
	SPI_WriteData(0x0D);
	SPI_WriteData(0x11);
	SPI_WriteData(0x06);
	SPI_WriteData(0x05);
	SPI_WriteData(0x08);
	SPI_WriteData(0x07);
	SPI_WriteData(0x1F);
	SPI_WriteData(0x04);
	SPI_WriteData(0x11);
	SPI_WriteData(0x0E);
	SPI_WriteData(0x29);
	SPI_WriteData(0x30);
	SPI_WriteData(0x1F);

	SPI_WriteComm(0xB1);
	SPI_WriteData(0x00);
	SPI_WriteData(0x0D);
	SPI_WriteData(0x14);
	SPI_WriteData(0x0E);
	SPI_WriteData(0x11);
	SPI_WriteData(0x06);
	SPI_WriteData(0x04);
	SPI_WriteData(0x08);
	SPI_WriteData(0x08);
	SPI_WriteData(0x20);
	SPI_WriteData(0x05);
	SPI_WriteData(0x13);
	SPI_WriteData(0x13);
	SPI_WriteData(0x26);
	SPI_WriteData(0x30);
	SPI_WriteData(0x1F);

	SPI_WriteComm(0xFF);
	SPI_WriteData(0x77);
	SPI_WriteData(0x01);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x11);
	SPI_WriteComm(0xB0);
	SPI_WriteData(0x65);

	SPI_WriteComm(0xB1);
	SPI_WriteData(0x71);

	SPI_WriteComm(0xB2);
	SPI_WriteData(0x87);

	SPI_WriteComm(0xB3);
	SPI_WriteData(0x80);

	SPI_WriteComm(0xB5);
	SPI_WriteData(0x4D);

	SPI_WriteComm(0xB7);
	SPI_WriteData(0x85);

	SPI_WriteComm(0xB8);
	SPI_WriteData(0x20);

	SPI_WriteComm(0xC1);
	SPI_WriteData(0x78);

	SPI_WriteComm(0xC2);
	SPI_WriteData(0x78);

	SPI_WriteComm(0xD0);
	SPI_WriteData(0x88);

	SPI_WriteComm(0xEE);
	SPI_WriteData(0x42);

	SPI_WriteComm(0xE0);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x02);

	SPI_WriteComm(0xE1);
	SPI_WriteData(0x04);
	SPI_WriteData(0xA0);
	SPI_WriteData(0x06);
	SPI_WriteData(0xA0);
	SPI_WriteData(0x05);
	SPI_WriteData(0xA0);
	SPI_WriteData(0x07);
	SPI_WriteData(0xA0);
	SPI_WriteData(0x00);
	SPI_WriteData(0x44);
	SPI_WriteData(0x44);

	SPI_WriteComm(0xE2);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);

	SPI_WriteComm(0xE3);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x22);
	SPI_WriteData(0x22);

	SPI_WriteComm(0xE4);
	SPI_WriteData(0x44);
	SPI_WriteData(0x44);

	SPI_WriteComm(0xE5);
	SPI_WriteData(0x0C);
	SPI_WriteData(0x90);
	SPI_WriteData(0xA0);
	SPI_WriteData(0xA0);
	SPI_WriteData(0x0E);
	SPI_WriteData(0x92);
	SPI_WriteData(0xA0);
	SPI_WriteData(0xA0);
	SPI_WriteData(0x08);
	SPI_WriteData(0x8C);
	SPI_WriteData(0xA0);
	SPI_WriteData(0xA0);
	SPI_WriteData(0x0A);
	SPI_WriteData(0x8E);
	SPI_WriteData(0xA0);
	SPI_WriteData(0xA0);

	SPI_WriteComm(0xE6);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x22);
	SPI_WriteData(0x22);

	SPI_WriteComm(0xE7);
	SPI_WriteData(0x44);
	SPI_WriteData(0x44);

	SPI_WriteComm(0xE8);
	SPI_WriteData(0x0D);
	SPI_WriteData(0x91);
	SPI_WriteData(0xA0);
	SPI_WriteData(0xA0);
	SPI_WriteData(0x0F);
	SPI_WriteData(0x93);
	SPI_WriteData(0xA0);
	SPI_WriteData(0xA0);
	SPI_WriteData(0x09);
	SPI_WriteData(0x8D);
	SPI_WriteData(0xA0);
	SPI_WriteData(0xA0);
	SPI_WriteData(0x0B);
	SPI_WriteData(0x8F);
	SPI_WriteData(0xA0);
	SPI_WriteData(0xA0);

	SPI_WriteComm(0xEB);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0xE4);
	SPI_WriteData(0xE4);
	SPI_WriteData(0x44);
	SPI_WriteData(0x00);
	SPI_WriteData(0x40);

	SPI_WriteComm(0xED);
	SPI_WriteData(0xFF);
	SPI_WriteData(0xF5);
	SPI_WriteData(0x47);
	SPI_WriteData(0x6F);
	SPI_WriteData(0x0B);
	SPI_WriteData(0xA1);
	SPI_WriteData(0xAB);
	SPI_WriteData(0xFF);
	SPI_WriteData(0xFF);
	SPI_WriteData(0xBA);
	SPI_WriteData(0x1A);
	SPI_WriteData(0xB0);
	SPI_WriteData(0xF6);
	SPI_WriteData(0x74);
	SPI_WriteData(0x5F);
	SPI_WriteData(0xFF);

	SPI_WriteComm(0xEF);
	SPI_WriteData(0x08);
	SPI_WriteData(0x08);
	SPI_WriteData(0x08);
	SPI_WriteData(0x45);
	SPI_WriteData(0x3F);
	SPI_WriteData(0x54);

	SPI_WriteComm(0xFF);
	SPI_WriteData(0x77);
	SPI_WriteData(0x01);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);

	SPI_WriteComm(0xFF);
	SPI_WriteData(0x77);
	SPI_WriteData(0x01);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x13);

	SPI_WriteComm(0xE6);
	SPI_WriteData(0x16);

	SPI_WriteComm(0xE8);
	SPI_WriteData(0x00);
	SPI_WriteData(0x0E);

	SPI_WriteComm(0xFF);
	SPI_WriteData(0x77);
	SPI_WriteData(0x01);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);

	SPI_WriteComm(0x11);
	Delay(120);
	SPI_WriteComm(0xFF);
	SPI_WriteData(0x77);
	SPI_WriteData(0x01);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x13);

	SPI_WriteComm(0xE8);
	SPI_WriteData(0x00);
	SPI_WriteData(0x0C);
	Delay(10);
	SPI_WriteComm(0xE8);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);

	SPI_WriteComm(0xFF);
	SPI_WriteData(0x77);
	SPI_WriteData(0x01);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);
	SPI_WriteData(0x00);

	SPI_WriteComm(0x29);

	SPI_WriteComm(0x3A);
	SPI_WriteData(0x77);
	SPI_WriteComm(0x29);

    SPI_WriteComm(0x36);
	SPI_WriteData(0x08);

}
#endif

