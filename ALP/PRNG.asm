; ALP to demonstrate pseudo-random number generator
org 100h
include emu8086.inc                                                       
DEFINE_PRINT_NUM_UNS ; Needed to support EMU8086 PRINT_NUM_UNS function

xor ax,ax            ; xor register to itself same as zeroing register
int 1ah              ; Int 1ah/ah=0 get timer ticks since midnight in CX:DX
mov ax,dx            ; Use lower 16 bits (in DX) for random value

xor dx,dx            ; Compute randval(DX) mod 126 to get num
mov bx,126            ;     between 0 and 125
div bx               ; Divide dx:ax by bx
inc dx               ; DX = modulo from division
                      ; Add 1 to give us # between 1 and 126 (not 0 to 125)
                     
cmp dx, 33           ; If the number (remainder) is below 33, increase it to be between 33 and 126 
jb INCREASE
jmp DISPLAY

INCREASE: 
    add dx, 32       ; We are adding 32 as the lowest value DX can take is 1 and 33 is the least acceptable value
    jmp DISPLAY
    
DISPLAY:
    mov ax,dx            ; Move to AX to print     
    call PRINT_NUM_UNS   ; Print value in AX as unsigned
    ret                                              

END