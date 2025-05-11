CODE SEGMENT
    ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
    PORT_CON EQU 1FH
    PORTC EQU 1DH
    PORTB EQU 1BH
    PORTA EQU 19H 
    
     ORG 1000H
     MOV AL,10000000B
     OUT PORT_CON,AL 
     
     L1: MOV BL,10
     MOV SI,0
     L2:MOV AL,DIGIT[SI]
     OUT PORTA,AL
     MOV CX,0B000H
     LOOP $
     INC SI
     DEC BL
     JNZ L2
     JMP L1
     
      DIGIT DB 11000000B ;0
            DB 11111001B ;1
            DB 10100100B ;2
            DB 10110000B ;3
            DB 10011001B ;4
            DB 10010010B ;5
            DB 10000010B ;6
            DB 11011000B ;7
            DB 10000000B ;8
            DB 10010000B ;9
     CODE ENDS
END