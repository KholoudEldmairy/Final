#line 1 "C:/Users/Dell/Downloads/work/embedded/trafic one/code/trafficone.c"


void main(){
char counter,i,left,right;

adcon1=7;
trisa=0;
porta=0;
trisd=0;
portd=0;
trisc=0;
portc=0;
trisb=0b00011000;
portb=0;

while(1){
 if(portb.B3==1){

 for(;;){
 if(portb.b4==0){
 for(;;){
 if( portb.b4==1){break;}
 portc.b0=1;
 portc.b1=0;
 portc.b2=0;
 portc.b3=0;
 portc.b4=0;
 portc.b5=1;
 if(portb.B3==0){break;}
 if( portb.b4==1){break;}
 } }
 if(portb.b4==0) {
 for(;;){
 if( portb.b4==1){break;}
 portc.b0=1;
 portc.b1=0;
 portc.b2=0;
 portc.b3=0;
 portc.b4=1;
 portc.b5=0;

 if(portb.B3==0){break;}
 if( portb.b4==1){break;}
 } }
 if(portb.b4==0){
 for(;;){
 if( portb.b4==1){break;}
 portc.b0=0;
 portc.b1=0;
 portc.b2=1;
 portc.b3=1;
 portc.b4=0;
 portc.b5=0;
 if(portb.B3==0){break;}
 if( portb.b4==1){break;}
 } }
 if(portb.b4==0){
 for(;;){
 if( portb.b4==1){break;}
 portc.b0=0;
 portc.b1=1;
 portc.b2=0;
 portc.b3=1;
 portc.b4=0;
 portc.b5=0;
 if(portb.B3==0){break;}
 if( portb.b4==1){break;}
 } }
 if(portb.B3==0){break;}

 }

 } else{

 for(;;){
 if(portb.B3==1){
 break;}
 portc.b0=1;
 portc.b1=0;
 portc.b2=0;
 portc.b3=0;
 portc.b4=0;
 portc.b5=1;
 if(portb.B3==1){
 break;}
 for(counter=23;counter>=0;counter--){
 if(portb.B3==1){
 break;}
 left=counter/10;
 right=counter%10;
 if(counter<=3){
 if(portb.B3==1){
 break;}
 portc.b3=0;
 portc.b4=1;
 portc.b5=0;
 } if(portb.B3==1){
 break;}

 for(i=0;i<25;i++){
 portb.B1=1;
 portb.B2=0;
 portd=right;
 porta=right;
 if(portb.B3==1){
 break;}
 delay_ms(20);
 if(portb.B3==1){
 break;}
 portb.B1=0;
 portb.B2=1;
 portd=left;
 porta=left;
 if(portb.B3==1){
 break;}
 delay_ms(20);
 if(portb.B3==1){
 break;}
 }
 if(counter==0){
 break;
 }
 if(portb.B3==1){
 break;} }
 if(portb.B3==1){
 break;}
 portc.b0=0;
 portc.b1=0;
 portc.b2=1;
 portc.b3=1;
 portc.b4=0;
 portc.b5=0;
 if(portb.B3==1){
 break;}
 for(counter=15;counter>=0;counter--){
 if(portb.B3==1){
 break;}
 left=counter/10;
 right=counter%10;
 if(counter<=3){
 if(portb.B3==1){
 break;}
 portc.b0=0;
 portc.b1=1;
 portc.b2=0;
 }
 if(portb.B3==1){
 break;}
 for(i=0;i<25;i++){
 portb.B1=1;
 portb.B2=0;
 portd=right;
 porta=right;
 if(portb.B3==1){
 break;}
 delay_ms(20);
 if(portb.B3==1){
 break;}
 portb.B1=0;
 portb.B2=1;
 portd=left;
 porta=left;
 if(portb.B3==1){
 break;}
 delay_ms(20);
 if(portb.B3==1){
 break;}
 }
 if(counter==0){
 break;}
 }if(portb.B3==1){
 break;}
 }}} }
