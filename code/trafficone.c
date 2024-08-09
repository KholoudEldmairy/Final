

void main(){
char counter,i,left,right;

adcon1=7;     //convert analog to digital
trisa=0;       //port A is output
porta=0;        //give port A initial value zero
trisd=0;         //port D is output
portd=0;         //give port D initial value zero
trisc=0;         //  port C is output
portc=0;          //give port C initial value zero
trisb=0b00011000;     //port B mix between input and output pins
portb=0;               //give port C initial value zero

while(1){
     if(portb.B3==1){                   //manual mode

             for(;;){
                if(portb.b4==0){                // when button is down  excute the condition
               for(;;){
                if( portb.b4==1){break;}         //if button is up out from this loop
                portc.b0=1;                               // Red led of south is on
                 portc.b1=0;                              // yellow led of south is off
                 portc.b2=0;                               // green led of south is off
                 portc.b3=0;                               // Red led of west is off
                 portc.b4=0;                               // yellow led of west is off
                 portc.b5=1;                                // green led of west is on
                    if(portb.B3==0){break;}   //if switch of manual and automatic is off go to automatic mode
                if( portb.b4==1){break;}       //if button is up out from this loop
                }    }
                if(portb.b4==0) {                   // when button is down  excute the condition
                for(;;){
                 if( portb.b4==1){break;}         //if button is up out from this loop
                 portc.b0=1;                      // Red led of south is on
                 portc.b1=0;                       // yellow led of south is off
                 portc.b2=0;                         // green led of south is off
                 portc.b3=0;                         // Red led of west is off
                 portc.b4=1;                          // yellow led of west is on
                 portc.b5=0;                          // green led of west is off

                        if(portb.B3==0){break;}//if switch of manual and automatic is off go to automatic mode
                       if( portb.b4==1){break;}  //if button is up out from this loop
                }   }
                if(portb.b4==0){       // when button is down  excute the condition
                for(;;){
                     if( portb.b4==1){break;}    //if button is up out from this loop
                   portc.b0=0;                    // Red led of south is off
                   portc.b1=0;                    // yellow led of south is off
                   portc.b2=1;                      // green led of south is on
                   portc.b3=1;                       // Red led of west is on
                   portc.b4=0;                        // yellow led of west is off
                   portc.b5=0;                        // green led of west is off
                    if(portb.B3==0){break;}  //if switch of manual and automatic is off go to automatic mode
                   if( portb.b4==1){break;}   //if button is up out from this loop
                }   }
                if(portb.b4==0){    // when button is down  excute the condition
                for(;;){
                 if( portb.b4==1){break;}      //if button is up out from this loop
                    portc.b0=0;               // Red led of south is off
                        portc.b1=1;           // yellow led of south is on
                        portc.b2=0;            // green led of south is off
                         portc.b3=1;          // Red led of west is on
                   portc.b4=0;                  // yellow led of west is off
                   portc.b5=0;                  // green led of west is off
                   if(portb.B3==0){break;}  //if switch of manual and automatic is off go to automatic mode
                  if( portb.b4==1){break;}   //if button is up out from this loop
                }       }
           if(portb.B3==0){break;}    //if switch of manual and automatic is off go to automatic mode

        }

        } else{                           //automatic mode
     
      for(;;){
        if(portb.B3==1){           //if switch of manual and automatic is on go to manual mode
        break;}
     portc.b0=1;                       // Red led of south is on
     portc.b1=0;                         // yellow led of south is off
     portc.b2=0;                           // green led of south is off
     portc.b3=0;                            // Red led of west is off
     portc.b4=0;                             // yellow led of west is off
     portc.b5=1;                              // green led of west is on
                  if(portb.B3==1){
        break;}
        for(counter=23;counter>=0;counter--){      //counter from 23 to zero
        if(portb.B3==1){        //if switch of manual and automatic is on go to manual mode
        break;}
        left=counter/10;
        right=counter%10;
        if(counter<=3){
        if(portb.B3==1){               //if switch of manual and automatic is on go to manual mode
        break;}
        portc.b3=0;                    // Red led of west is off
        portc.b4=1;                      // yellow led of west is on
        portc.b5=0;                       // green led of west is off
        }    if(portb.B3==1){
        break;}

        for(i=0;i<25;i++){
        portb.B1=1;
        portb.B2=0;
        portd=right;
         porta=right;
         if(portb.B3==1){            //if switch of manual and automatic is on go to manual mode
        break;}
        delay_ms(20);
        if(portb.B3==1){             //if switch of manual and automatic is on go to manual mode
        break;}
        portb.B1=0;
        portb.B2=1;
        portd=left;
        porta=left;
        if(portb.B3==1){             //if switch of manual and automatic is on go to manual mode
        break;}
        delay_ms(20);
        if(portb.B3==1){               //if switch of manual and automatic is on go to manual mode
        break;}
        }
         if(counter==0){
        break;
        } 
        if(portb.B3==1){        //if switch of manual and automatic is on go to manual mode
        break;} }
        if(portb.B3==1){     //if switch of manual and automatic is on go to manual mode
        break;}
        portc.b0=0;     // Red led of south is off
     portc.b1=0;         // yellow led of south is off
     portc.b2=1;              // green led of south is on
     portc.b3=1;                // Red led of west is on
     portc.b4=0;                  // yellow led of west is off
     portc.b5=0;                   // green led of west is off
             if(portb.B3==1){
        break;}
        for(counter=15;counter>=0;counter--){
        if(portb.B3==1){     //if switch of manual and automatic is on go to manual mode
        break;}
        left=counter/10;
        right=counter%10;
        if(counter<=3){
        if(portb.B3==1){
        break;}
        portc.b0=0;             // Red led of south is off
        portc.b1=1;              // yellow led of south is off
        portc.b2=0;              // green led of south is off
        }
          if(portb.B3==1){    //if switch of manual and automatic is on go to manual mode
        break;}
        for(i=0;i<25;i++){
        portb.B1=1;
        portb.B2=0;
        portd=right;
        porta=right;
        if(portb.B3==1){         //if switch of manual and automatic is on go to manual mode
        break;}
        delay_ms(20);
        if(portb.B3==1){       //if switch of manual and automatic is on go to manual mode
        break;}
        portb.B1=0;
        portb.B2=1;
        portd=left;
         porta=left;
         if(portb.B3==1){         //if switch of manual and automatic is on go to manual mode
        break;}
        delay_ms(20);
        if(portb.B3==1){        //if switch of manual and automatic is on go to manual mode
        break;}
        }
         if(counter==0){
        break;}
        }if(portb.B3==1){      //if switch of manual and automatic is on go to manual mode
        break;}
        }}} }