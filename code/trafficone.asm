
_main:

;trafficone.c,3 :: 		void main(){
;trafficone.c,6 :: 		adcon1=7;     //convert analog to digital
	MOVLW      7
	MOVWF      ADCON1+0
;trafficone.c,7 :: 		trisa=0;       //port A is output
	CLRF       TRISA+0
;trafficone.c,8 :: 		porta=0;        //give port A initial value zero
	CLRF       PORTA+0
;trafficone.c,9 :: 		trisd=0;         //port D is output
	CLRF       TRISD+0
;trafficone.c,10 :: 		portd=0;         //give port D initial value zero
	CLRF       PORTD+0
;trafficone.c,11 :: 		trisc=0;         //  port C is output
	CLRF       TRISC+0
;trafficone.c,12 :: 		portc=0;          //give port C initial value zero
	CLRF       PORTC+0
;trafficone.c,13 :: 		trisb=0b00011000;     //port B mix between input and output pins
	MOVLW      24
	MOVWF      TRISB+0
;trafficone.c,14 :: 		portb=0;               //give port C initial value zero
	CLRF       PORTB+0
;trafficone.c,16 :: 		while(1){
L_main0:
;trafficone.c,17 :: 		if(portb.B3==1){                   //manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main2
;trafficone.c,19 :: 		for(;;){
L_main3:
;trafficone.c,20 :: 		if(portb.b4==0){                // when button is down  excute the condition
	BTFSC      PORTB+0, 4
	GOTO       L_main6
;trafficone.c,21 :: 		for(;;){
L_main7:
;trafficone.c,22 :: 		if( portb.b4==1){break;}         //if button is up out from this loop
	BTFSS      PORTB+0, 4
	GOTO       L_main10
	GOTO       L_main8
L_main10:
;trafficone.c,23 :: 		portc.b0=1;                               // Red led of south is on
	BSF        PORTC+0, 0
;trafficone.c,24 :: 		portc.b1=0;                              // yellow led of south is off
	BCF        PORTC+0, 1
;trafficone.c,25 :: 		portc.b2=0;                               // green led of south is off
	BCF        PORTC+0, 2
;trafficone.c,26 :: 		portc.b3=0;                               // Red led of west is off
	BCF        PORTC+0, 3
;trafficone.c,27 :: 		portc.b4=0;                               // yellow led of west is off
	BCF        PORTC+0, 4
;trafficone.c,28 :: 		portc.b5=1;                                // green led of west is on
	BSF        PORTC+0, 5
;trafficone.c,29 :: 		if(portb.B3==0){break;}   //if switch of manual and automatic is off go to automatic mode
	BTFSC      PORTB+0, 3
	GOTO       L_main11
	GOTO       L_main8
L_main11:
;trafficone.c,30 :: 		if( portb.b4==1){break;}       //if button is up out from this loop
	BTFSS      PORTB+0, 4
	GOTO       L_main12
	GOTO       L_main8
L_main12:
;trafficone.c,31 :: 		}    }
	GOTO       L_main7
L_main8:
L_main6:
;trafficone.c,32 :: 		if(portb.b4==0) {                   // when button is down  excute the condition
	BTFSC      PORTB+0, 4
	GOTO       L_main13
;trafficone.c,33 :: 		for(;;){
L_main14:
;trafficone.c,34 :: 		if( portb.b4==1){break;}         //if button is up out from this loop
	BTFSS      PORTB+0, 4
	GOTO       L_main17
	GOTO       L_main15
L_main17:
;trafficone.c,35 :: 		portc.b0=1;                      // Red led of south is on
	BSF        PORTC+0, 0
;trafficone.c,36 :: 		portc.b1=0;                       // yellow led of south is off
	BCF        PORTC+0, 1
;trafficone.c,37 :: 		portc.b2=0;                         // green led of south is off
	BCF        PORTC+0, 2
;trafficone.c,38 :: 		portc.b3=0;                         // Red led of west is off
	BCF        PORTC+0, 3
;trafficone.c,39 :: 		portc.b4=1;                          // yellow led of west is on
	BSF        PORTC+0, 4
;trafficone.c,40 :: 		portc.b5=0;                          // green led of west is off
	BCF        PORTC+0, 5
;trafficone.c,42 :: 		if(portb.B3==0){break;}//if switch of manual and automatic is off go to automatic mode
	BTFSC      PORTB+0, 3
	GOTO       L_main18
	GOTO       L_main15
L_main18:
;trafficone.c,43 :: 		if( portb.b4==1){break;}  //if button is up out from this loop
	BTFSS      PORTB+0, 4
	GOTO       L_main19
	GOTO       L_main15
L_main19:
;trafficone.c,44 :: 		}   }
	GOTO       L_main14
L_main15:
L_main13:
;trafficone.c,45 :: 		if(portb.b4==0){       // when button is down  excute the condition
	BTFSC      PORTB+0, 4
	GOTO       L_main20
;trafficone.c,46 :: 		for(;;){
L_main21:
;trafficone.c,47 :: 		if( portb.b4==1){break;}    //if button is up out from this loop
	BTFSS      PORTB+0, 4
	GOTO       L_main24
	GOTO       L_main22
L_main24:
;trafficone.c,48 :: 		portc.b0=0;                    // Red led of south is off
	BCF        PORTC+0, 0
;trafficone.c,49 :: 		portc.b1=0;                    // yellow led of south is off
	BCF        PORTC+0, 1
;trafficone.c,50 :: 		portc.b2=1;                      // green led of south is on
	BSF        PORTC+0, 2
;trafficone.c,51 :: 		portc.b3=1;                       // Red led of west is on
	BSF        PORTC+0, 3
;trafficone.c,52 :: 		portc.b4=0;                        // yellow led of west is off
	BCF        PORTC+0, 4
;trafficone.c,53 :: 		portc.b5=0;                        // green led of west is off
	BCF        PORTC+0, 5
;trafficone.c,54 :: 		if(portb.B3==0){break;}  //if switch of manual and automatic is off go to automatic mode
	BTFSC      PORTB+0, 3
	GOTO       L_main25
	GOTO       L_main22
L_main25:
;trafficone.c,55 :: 		if( portb.b4==1){break;}   //if button is up out from this loop
	BTFSS      PORTB+0, 4
	GOTO       L_main26
	GOTO       L_main22
L_main26:
;trafficone.c,56 :: 		}   }
	GOTO       L_main21
L_main22:
L_main20:
;trafficone.c,57 :: 		if(portb.b4==0){    // when button is down  excute the condition
	BTFSC      PORTB+0, 4
	GOTO       L_main27
;trafficone.c,58 :: 		for(;;){
L_main28:
;trafficone.c,59 :: 		if( portb.b4==1){break;}      //if button is up out from this loop
	BTFSS      PORTB+0, 4
	GOTO       L_main31
	GOTO       L_main29
L_main31:
;trafficone.c,60 :: 		portc.b0=0;               // Red led of south is off
	BCF        PORTC+0, 0
;trafficone.c,61 :: 		portc.b1=1;           // yellow led of south is on
	BSF        PORTC+0, 1
;trafficone.c,62 :: 		portc.b2=0;            // green led of south is off
	BCF        PORTC+0, 2
;trafficone.c,63 :: 		portc.b3=1;          // Red led of west is on
	BSF        PORTC+0, 3
;trafficone.c,64 :: 		portc.b4=0;                  // yellow led of west is off
	BCF        PORTC+0, 4
;trafficone.c,65 :: 		portc.b5=0;                  // green led of west is off
	BCF        PORTC+0, 5
;trafficone.c,66 :: 		if(portb.B3==0){break;}  //if switch of manual and automatic is off go to automatic mode
	BTFSC      PORTB+0, 3
	GOTO       L_main32
	GOTO       L_main29
L_main32:
;trafficone.c,67 :: 		if( portb.b4==1){break;}   //if button is up out from this loop
	BTFSS      PORTB+0, 4
	GOTO       L_main33
	GOTO       L_main29
L_main33:
;trafficone.c,68 :: 		}       }
	GOTO       L_main28
L_main29:
L_main27:
;trafficone.c,69 :: 		if(portb.B3==0){break;}    //if switch of manual and automatic is off go to automatic mode
	BTFSC      PORTB+0, 3
	GOTO       L_main34
	GOTO       L_main4
L_main34:
;trafficone.c,71 :: 		}
	GOTO       L_main3
L_main4:
;trafficone.c,73 :: 		} else{                           //automatic mode
	GOTO       L_main35
L_main2:
;trafficone.c,75 :: 		for(;;){
L_main36:
;trafficone.c,76 :: 		if(portb.B3==1){           //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main39
;trafficone.c,77 :: 		break;}
	GOTO       L_main37
L_main39:
;trafficone.c,78 :: 		portc.b0=1;                       // Red led of south is on
	BSF        PORTC+0, 0
;trafficone.c,79 :: 		portc.b1=0;                         // yellow led of south is off
	BCF        PORTC+0, 1
;trafficone.c,80 :: 		portc.b2=0;                           // green led of south is off
	BCF        PORTC+0, 2
;trafficone.c,81 :: 		portc.b3=0;                            // Red led of west is off
	BCF        PORTC+0, 3
;trafficone.c,82 :: 		portc.b4=0;                             // yellow led of west is off
	BCF        PORTC+0, 4
;trafficone.c,83 :: 		portc.b5=1;                              // green led of west is on
	BSF        PORTC+0, 5
;trafficone.c,84 :: 		if(portb.B3==1){
	BTFSS      PORTB+0, 3
	GOTO       L_main40
;trafficone.c,85 :: 		break;}
	GOTO       L_main37
L_main40:
;trafficone.c,86 :: 		for(counter=23;counter>=0;counter--){      //counter from 23 to zero
	MOVLW      23
	MOVWF      main_counter_L0+0
L_main41:
	MOVLW      0
	SUBWF      main_counter_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main42
;trafficone.c,87 :: 		if(portb.B3==1){        //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main44
;trafficone.c,88 :: 		break;}
	GOTO       L_main42
L_main44:
;trafficone.c,89 :: 		left=counter/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       main_counter_L0+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R0+0, 0
	MOVWF      main_left_L0+0
;trafficone.c,90 :: 		right=counter%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       main_counter_L0+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_right_L0+0
;trafficone.c,91 :: 		if(counter<=3){
	MOVF       main_counter_L0+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main45
;trafficone.c,92 :: 		if(portb.B3==1){               //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main46
;trafficone.c,93 :: 		break;}
	GOTO       L_main42
L_main46:
;trafficone.c,94 :: 		portc.b3=0;                    // Red led of west is off
	BCF        PORTC+0, 3
;trafficone.c,95 :: 		portc.b4=1;                      // yellow led of west is on
	BSF        PORTC+0, 4
;trafficone.c,96 :: 		portc.b5=0;                       // green led of west is off
	BCF        PORTC+0, 5
;trafficone.c,97 :: 		}    if(portb.B3==1){
L_main45:
	BTFSS      PORTB+0, 3
	GOTO       L_main47
;trafficone.c,98 :: 		break;}
	GOTO       L_main42
L_main47:
;trafficone.c,100 :: 		for(i=0;i<25;i++){
	CLRF       main_i_L0+0
L_main48:
	MOVLW      25
	SUBWF      main_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main49
;trafficone.c,101 :: 		portb.B1=1;
	BSF        PORTB+0, 1
;trafficone.c,102 :: 		portb.B2=0;
	BCF        PORTB+0, 2
;trafficone.c,103 :: 		portd=right;
	MOVF       main_right_L0+0, 0
	MOVWF      PORTD+0
;trafficone.c,104 :: 		porta=right;
	MOVF       main_right_L0+0, 0
	MOVWF      PORTA+0
;trafficone.c,105 :: 		if(portb.B3==1){            //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main51
;trafficone.c,106 :: 		break;}
	GOTO       L_main49
L_main51:
;trafficone.c,107 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main52:
	DECFSZ     R13+0, 1
	GOTO       L_main52
	DECFSZ     R12+0, 1
	GOTO       L_main52
	NOP
	NOP
;trafficone.c,108 :: 		if(portb.B3==1){             //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main53
;trafficone.c,109 :: 		break;}
	GOTO       L_main49
L_main53:
;trafficone.c,110 :: 		portb.B1=0;
	BCF        PORTB+0, 1
;trafficone.c,111 :: 		portb.B2=1;
	BSF        PORTB+0, 2
;trafficone.c,112 :: 		portd=left;
	MOVF       main_left_L0+0, 0
	MOVWF      PORTD+0
;trafficone.c,113 :: 		porta=left;
	MOVF       main_left_L0+0, 0
	MOVWF      PORTA+0
;trafficone.c,114 :: 		if(portb.B3==1){             //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main54
;trafficone.c,115 :: 		break;}
	GOTO       L_main49
L_main54:
;trafficone.c,116 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main55:
	DECFSZ     R13+0, 1
	GOTO       L_main55
	DECFSZ     R12+0, 1
	GOTO       L_main55
	NOP
	NOP
;trafficone.c,117 :: 		if(portb.B3==1){               //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main56
;trafficone.c,118 :: 		break;}
	GOTO       L_main49
L_main56:
;trafficone.c,100 :: 		for(i=0;i<25;i++){
	INCF       main_i_L0+0, 1
;trafficone.c,119 :: 		}
	GOTO       L_main48
L_main49:
;trafficone.c,120 :: 		if(counter==0){
	MOVF       main_counter_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main57
;trafficone.c,121 :: 		break;
	GOTO       L_main42
;trafficone.c,122 :: 		}
L_main57:
;trafficone.c,123 :: 		if(portb.B3==1){        //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main58
;trafficone.c,124 :: 		break;} }
	GOTO       L_main42
L_main58:
;trafficone.c,86 :: 		for(counter=23;counter>=0;counter--){      //counter from 23 to zero
	DECF       main_counter_L0+0, 1
;trafficone.c,124 :: 		break;} }
	GOTO       L_main41
L_main42:
;trafficone.c,125 :: 		if(portb.B3==1){     //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main59
;trafficone.c,126 :: 		break;}
	GOTO       L_main37
L_main59:
;trafficone.c,127 :: 		portc.b0=0;     // Red led of south is off
	BCF        PORTC+0, 0
;trafficone.c,128 :: 		portc.b1=0;         // yellow led of south is off
	BCF        PORTC+0, 1
;trafficone.c,129 :: 		portc.b2=1;              // green led of south is on
	BSF        PORTC+0, 2
;trafficone.c,130 :: 		portc.b3=1;                // Red led of west is on
	BSF        PORTC+0, 3
;trafficone.c,131 :: 		portc.b4=0;                  // yellow led of west is off
	BCF        PORTC+0, 4
;trafficone.c,132 :: 		portc.b5=0;                   // green led of west is off
	BCF        PORTC+0, 5
;trafficone.c,133 :: 		if(portb.B3==1){
	BTFSS      PORTB+0, 3
	GOTO       L_main60
;trafficone.c,134 :: 		break;}
	GOTO       L_main37
L_main60:
;trafficone.c,135 :: 		for(counter=15;counter>=0;counter--){
	MOVLW      15
	MOVWF      main_counter_L0+0
L_main61:
	MOVLW      0
	SUBWF      main_counter_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main62
;trafficone.c,136 :: 		if(portb.B3==1){     //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main64
;trafficone.c,137 :: 		break;}
	GOTO       L_main62
L_main64:
;trafficone.c,138 :: 		left=counter/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       main_counter_L0+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R0+0, 0
	MOVWF      main_left_L0+0
;trafficone.c,139 :: 		right=counter%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       main_counter_L0+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_right_L0+0
;trafficone.c,140 :: 		if(counter<=3){
	MOVF       main_counter_L0+0, 0
	SUBLW      3
	BTFSS      STATUS+0, 0
	GOTO       L_main65
;trafficone.c,141 :: 		if(portb.B3==1){
	BTFSS      PORTB+0, 3
	GOTO       L_main66
;trafficone.c,142 :: 		break;}
	GOTO       L_main62
L_main66:
;trafficone.c,143 :: 		portc.b0=0;             // Red led of south is off
	BCF        PORTC+0, 0
;trafficone.c,144 :: 		portc.b1=1;              // yellow led of south is off
	BSF        PORTC+0, 1
;trafficone.c,145 :: 		portc.b2=0;              // green led of south is off
	BCF        PORTC+0, 2
;trafficone.c,146 :: 		}
L_main65:
;trafficone.c,147 :: 		if(portb.B3==1){    //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main67
;trafficone.c,148 :: 		break;}
	GOTO       L_main62
L_main67:
;trafficone.c,149 :: 		for(i=0;i<25;i++){
	CLRF       main_i_L0+0
L_main68:
	MOVLW      25
	SUBWF      main_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main69
;trafficone.c,150 :: 		portb.B1=1;
	BSF        PORTB+0, 1
;trafficone.c,151 :: 		portb.B2=0;
	BCF        PORTB+0, 2
;trafficone.c,152 :: 		portd=right;
	MOVF       main_right_L0+0, 0
	MOVWF      PORTD+0
;trafficone.c,153 :: 		porta=right;
	MOVF       main_right_L0+0, 0
	MOVWF      PORTA+0
;trafficone.c,154 :: 		if(portb.B3==1){         //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main71
;trafficone.c,155 :: 		break;}
	GOTO       L_main69
L_main71:
;trafficone.c,156 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main72:
	DECFSZ     R13+0, 1
	GOTO       L_main72
	DECFSZ     R12+0, 1
	GOTO       L_main72
	NOP
	NOP
;trafficone.c,157 :: 		if(portb.B3==1){       //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main73
;trafficone.c,158 :: 		break;}
	GOTO       L_main69
L_main73:
;trafficone.c,159 :: 		portb.B1=0;
	BCF        PORTB+0, 1
;trafficone.c,160 :: 		portb.B2=1;
	BSF        PORTB+0, 2
;trafficone.c,161 :: 		portd=left;
	MOVF       main_left_L0+0, 0
	MOVWF      PORTD+0
;trafficone.c,162 :: 		porta=left;
	MOVF       main_left_L0+0, 0
	MOVWF      PORTA+0
;trafficone.c,163 :: 		if(portb.B3==1){         //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main74
;trafficone.c,164 :: 		break;}
	GOTO       L_main69
L_main74:
;trafficone.c,165 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main75:
	DECFSZ     R13+0, 1
	GOTO       L_main75
	DECFSZ     R12+0, 1
	GOTO       L_main75
	NOP
	NOP
;trafficone.c,166 :: 		if(portb.B3==1){        //if switch of manual and automatic is on go to manual mode
	BTFSS      PORTB+0, 3
	GOTO       L_main76
;trafficone.c,167 :: 		break;}
	GOTO       L_main69
L_main76:
;trafficone.c,149 :: 		for(i=0;i<25;i++){
	INCF       main_i_L0+0, 1
;trafficone.c,168 :: 		}
	GOTO       L_main68
L_main69:
;trafficone.c,169 :: 		if(counter==0){
	MOVF       main_counter_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main77
;trafficone.c,170 :: 		break;}
	GOTO       L_main62
L_main77:
;trafficone.c,135 :: 		for(counter=15;counter>=0;counter--){
	DECF       main_counter_L0+0, 1
;trafficone.c,171 :: 		}if(portb.B3==1){      //if switch of manual and automatic is on go to manual mode
	GOTO       L_main61
L_main62:
	BTFSS      PORTB+0, 3
	GOTO       L_main78
;trafficone.c,172 :: 		break;}
	GOTO       L_main37
L_main78:
;trafficone.c,173 :: 		}}} }
	GOTO       L_main36
L_main37:
L_main35:
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main
