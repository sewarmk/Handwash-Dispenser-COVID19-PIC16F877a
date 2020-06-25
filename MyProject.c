void Delay(void);
unsigned int cnt;
unsigned int IR;
// LCD module connections
sbit LCD_RS at RC4_bit;
sbit LCD_EN at RC5_bit;
sbit LCD_D4 at RC0_bit;
sbit LCD_D5 at RC1_bit;
sbit LCD_D6 at RC2_bit;
sbit LCD_D7 at RC3_bit;

sbit LCD_RS_Direction at TRISC4_bit;
sbit LCD_EN_Direction at TRISC5_bit;
sbit LCD_D4_Direction at TRISC0_bit;
sbit LCD_D5_Direction at TRISC1_bit;
sbit LCD_D6_Direction at TRISC2_bit;
sbit LCD_D7_Direction at TRISC3_bit;
// End LCD module connections
//LCD config
void main(){
 TRISB=0xff;
  Lcd_Init();                        // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
  cnt=1;
  
  while(1){
  Lcd_Cmd(_LCD_CURSOR_OFF);
     if(PortB|=0x00){
            Lcd_Cmd(_LCD_CURSOR_OFF);
            Lcd_Cmd(_LCD_CLEAR);
                     for(cnt=1;cnt<9;cnt++){
                     Lcd_Init();
                     Lcd_Cmd(_LCD_CLEAR);
                     Lcd_Cmd(_LCD_CURSOR_OFF);
                     if(cnt==1){
                            LCD_OUT(1,1,"Rub Soap");
                            LCD_OUT(2,1,"To A Lather");
                            Delay();
                            Delay();
                            Delay();
                            Lcd_Cmd(_LCD_CLEAR);
                            }
                     if(cnt==2){
                            LCD_OUT(1,1,"Rub Between");
                            LCD_OUT(2,1,"Fingers");
                            Delay();
                            Delay();
                            Delay();
                            Lcd_Cmd(_LCD_CLEAR);
                            }
                     if(cnt==3){
                            LCD_OUT(1,1,"Rub");
                            LCD_OUT(2,1,"Palm To Palm");
                            Delay();
                            Delay();
                            Delay();
                            Lcd_Cmd(_LCD_CLEAR);
                            }
                     if(cnt==4){
                            LCD_OUT(1,1,"Rub Around");
                            LCD_OUT(2,1,"Finger-Nails");
                            Delay();
                            Delay();
                            Delay();
                            Lcd_Cmd(_LCD_CLEAR);
                            }

                     if(cnt==5){
                     Lcd_Init();
                     Lcd_Cmd(_LCD_CLEAR);
                     Lcd_Cmd(_LCD_CURSOR_OFF);
                            LCD_OUT(1,1,"Scrub Palms");
                            Delay();
                            Delay();
                            Delay();
                            Lcd_Cmd(_LCD_CLEAR);
                            }
                            Lcd_Cmd(_LCD_CLEAR);
                     if(cnt==6){
                   Lcd_Init();
                     Lcd_Cmd(_LCD_CLEAR);
                     Lcd_Cmd(_LCD_CURSOR_OFF);
                            LCD_OUT(1,1,"Rub Wrists");
                            Delay();
                            Delay();
                            Delay();
                            Lcd_Cmd(_LCD_CLEAR);
                            }

                     if(cnt==7){
                     Lcd_Cmd(_LCD_CLEAR);
                            LCD_OUT(1,1,"Rub Thumbs");
                            Delay();
                            Delay();
                            Delay();
                            Lcd_Cmd(_LCD_CLEAR);
                            LCD_OUT(1,1,"Thank you!");
                            Delay();
                            Delay();
                            Delay();
                            Lcd_Cmd(_LCD_CLEAR);

                            }
                            }
    }

                    else{
                    LCD_OUT(1,2,"Welcome!");
                    LCD_OUT(2,2,"Automated");
                    LCD_OUT(3,2,"Handwash");
                    Delay;
                    Delay;

    }
    }

    }


void Delay(void){
unsigned char ii;
int jj;

for(ii=0;ii<70;ii++){
     for(jj=0;jj<2000;jj++){
         ii=ii;
         jj=jj;

}}}