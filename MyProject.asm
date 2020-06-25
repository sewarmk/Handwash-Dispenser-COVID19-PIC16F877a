
_main:

;MyProject.c,20 :: 		void main(){
;MyProject.c,21 :: 		TRISB=0xff;
	MOVLW      255
	MOVWF      TRISB+0
;MyProject.c,22 :: 		Lcd_Init();                        // Initialize LCD
	CALL       _Lcd_Init+0
;MyProject.c,23 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,24 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,25 :: 		cnt=1;
	MOVLW      1
	MOVWF      _cnt+0
	MOVLW      0
	MOVWF      _cnt+1
;MyProject.c,27 :: 		while(1){
L_main0:
;MyProject.c,28 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,29 :: 		if(PortB|=0x00){
	MOVF       PORTB+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main2
;MyProject.c,30 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,31 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,32 :: 		for(cnt=1;cnt<9;cnt++){
	MOVLW      1
	MOVWF      _cnt+0
	MOVLW      0
	MOVWF      _cnt+1
L_main3:
	MOVLW      0
	SUBWF      _cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVLW      9
	SUBWF      _cnt+0, 0
L__main21:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;MyProject.c,33 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MyProject.c,34 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,35 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,36 :: 		if(cnt==1){
	MOVLW      0
	XORWF      _cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      1
	XORWF      _cnt+0, 0
L__main22:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;MyProject.c,37 :: 		LCD_OUT(1,1,"Rub Soap");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,38 :: 		LCD_OUT(2,1,"To A Lather");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,39 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,40 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,41 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,42 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,43 :: 		}
L_main6:
;MyProject.c,44 :: 		if(cnt==2){
	MOVLW      0
	XORWF      _cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      2
	XORWF      _cnt+0, 0
L__main23:
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;MyProject.c,45 :: 		LCD_OUT(1,1,"Rub Between");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,46 :: 		LCD_OUT(2,1,"Fingers");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,47 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,48 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,49 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,50 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,51 :: 		}
L_main7:
;MyProject.c,52 :: 		if(cnt==3){
	MOVLW      0
	XORWF      _cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      3
	XORWF      _cnt+0, 0
L__main24:
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;MyProject.c,53 :: 		LCD_OUT(1,1,"Rub");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,54 :: 		LCD_OUT(2,1,"Palm To Palm");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,55 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,56 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,57 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,58 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,59 :: 		}
L_main8:
;MyProject.c,60 :: 		if(cnt==4){
	MOVLW      0
	XORWF      _cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      4
	XORWF      _cnt+0, 0
L__main25:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;MyProject.c,61 :: 		LCD_OUT(1,1,"Rub Around");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,62 :: 		LCD_OUT(2,1,"Finger-Nails");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,63 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,64 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,65 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,66 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,67 :: 		}
L_main9:
;MyProject.c,69 :: 		if(cnt==5){
	MOVLW      0
	XORWF      _cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      5
	XORWF      _cnt+0, 0
L__main26:
	BTFSS      STATUS+0, 2
	GOTO       L_main10
;MyProject.c,70 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MyProject.c,71 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,72 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,73 :: 		LCD_OUT(1,1,"Scrub Palms");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,74 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,75 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,76 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,77 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,78 :: 		}
L_main10:
;MyProject.c,79 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,80 :: 		if(cnt==6){
	MOVLW      0
	XORWF      _cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main27
	MOVLW      6
	XORWF      _cnt+0, 0
L__main27:
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;MyProject.c,81 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MyProject.c,82 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,83 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,84 :: 		LCD_OUT(1,1,"Rub Wrists");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,85 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,86 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,87 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,88 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,89 :: 		}
L_main11:
;MyProject.c,91 :: 		if(cnt==7){
	MOVLW      0
	XORWF      _cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main28
	MOVLW      7
	XORWF      _cnt+0, 0
L__main28:
	BTFSS      STATUS+0, 2
	GOTO       L_main12
;MyProject.c,92 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,93 :: 		LCD_OUT(1,1,"Rub Thumbs");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,94 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,95 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,96 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,97 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,98 :: 		LCD_OUT(1,1,"Thank you!");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,99 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,100 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,101 :: 		Delay();
	CALL       _Delay+0
;MyProject.c,102 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,104 :: 		}
L_main12:
;MyProject.c,32 :: 		for(cnt=1;cnt<9;cnt++){
	INCF       _cnt+0, 1
	BTFSC      STATUS+0, 2
	INCF       _cnt+1, 1
;MyProject.c,105 :: 		}
	GOTO       L_main3
L_main4:
;MyProject.c,106 :: 		}
	GOTO       L_main13
L_main2:
;MyProject.c,109 :: 		LCD_OUT(1,2,"Welcome!");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,110 :: 		LCD_OUT(2,2,"Automated");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,111 :: 		LCD_OUT(3,2,"Handwash");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr15_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,115 :: 		}
L_main13:
;MyProject.c,116 :: 		}
	GOTO       L_main0
;MyProject.c,118 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_Delay:

;MyProject.c,121 :: 		void Delay(void){
;MyProject.c,125 :: 		for(ii=0;ii<70;ii++){
	CLRF       R1+0
L_Delay14:
	MOVLW      70
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Delay15
;MyProject.c,126 :: 		for(jj=0;jj<2000;jj++){
	CLRF       R2+0
	CLRF       R2+1
L_Delay17:
	MOVLW      128
	XORWF      R2+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      7
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Delay30
	MOVLW      208
	SUBWF      R2+0, 0
L__Delay30:
	BTFSC      STATUS+0, 0
	GOTO       L_Delay18
;MyProject.c,127 :: 		ii=ii;
;MyProject.c,128 :: 		jj=jj;
;MyProject.c,126 :: 		for(jj=0;jj<2000;jj++){
	INCF       R2+0, 1
	BTFSC      STATUS+0, 2
	INCF       R2+1, 1
;MyProject.c,130 :: 		}}}
	GOTO       L_Delay17
L_Delay18:
;MyProject.c,125 :: 		for(ii=0;ii<70;ii++){
	INCF       R1+0, 1
;MyProject.c,130 :: 		}}}
	GOTO       L_Delay14
L_Delay15:
L_end_Delay:
	RETURN
; end of _Delay
