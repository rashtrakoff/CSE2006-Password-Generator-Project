DATA SEGMENT
 PORTA EQU 00H
 PORTB EQU 02H
 PORTC EQU 04H
 PORT_CON EQU 06H
DATA ENDS
CODE SEGMENT
 MOV AX,DATA
 MOV DS, AX

ORG 0000H
START:

 MOV DX, PORT_CON
 MOV AL, 10000000B
 OUT DX, AL


 JMP XX
 
XX:  
     
 MOV AL,00H  ;command setting cursor
 MOV DX,PORTC
 OUT DX,AL    
 MOV AL, 0EH 
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay0:loop Delay0
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
 MOV CX,00FFH; Delay 
Delay1:loop Delay1
    
 MOV AL,00H  ;command setting 8 bit mode
 MOV DX,PORTC
 OUT DX,AL    
 MOV AL, 038H 
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay2:loop Delay2
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
 MOV CX,00FFH; Delay 
Delay3:loop Delay3  

  
             
             
 MOV AL,00H  ;command setting 8 bit mode
 MOV DX,PORTC
 OUT DX,AL                              
 MOV AL,0FH  ;command setting 8 bit mode
 MOV DX,PORTB
 OUT DX,AL  
 
 MOV AL,'C'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay4:loop Delay4
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay5:loop Delay5 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 
                     
 MOV AL,'o'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay6:loop Delay6
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay7:loop Delay7 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL        
 
 MOV AL,'d'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay8:loop Delay8
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay9:loop Delay9 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 

 
 MOV AL,'e'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay10:loop Delay10
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay11:loop Delay11
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 
 
 MOV AL,'W'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay12:loop Delay12
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay13:loop Delay13 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL  
 
 MOV AL,'i'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay14:loop Delay14
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay15:loop Delay15 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 
 
 MOV AL,'t'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay16:loop Delay16
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay17:loop Delay17
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 
 
 MOV AL,'h'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay18:loop Delay18
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay19:loop Delay19 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL 
 
 MOV AL,'S'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay20:loop Delay20
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay21:loop Delay21 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL   
 
 MOV AL,'h'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay22:loop Delay22
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay23:loop Delay23 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL   
 
 MOV AL,'a'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay24:loop Delay24
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay25:loop Delay25 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL    
 
 MOV AL,'m'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay26:loop Delay26
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay27:loop Delay27 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL  
 
 MOV AL,'s'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay28:loop Delay28
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay29:loop Delay29 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL
 
 MOV AL,'e'
 MOV DX, PORTA
 OUT DX,AL
 MOV CX,00FFH; Delay 
Delay30:loop Delay30
 MOV AL,0FFH
 MOV DX,PORTC
 OUT DX,AL 
  MOV CX,00FFH; Delay 
Delay31:loop Delay31 
           
 MOV AL,00H
 MOV DX,PORTC
 OUT DX,AL  

CODE ENDS
END