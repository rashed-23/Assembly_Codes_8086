DATA SEGMENT
    PORTA EQU 00H
    PORTB EQU 02H
    PORTC EQU 04H
    CR EQU 06H
    CW EQU 80H
    SUST DB 126
         DB 192
         DB 192
         DB 124
         DB 3
         DB 3
         DB 126
         DB 0
DATA ENDS

CODE SEGMENT
      MOV AX,DATA
      MOV DS,AX
      
      ORG 1000H
      
      MOV SI,0
      
      MOV AL,CR
      MOV DX,CR
      MOV AL,CW
      OUT DX,AL
      
      RECUR:
      MOV AL,SUST[SI]
      MOV BX,PORTA
      MOV DX,BX
      OUT DX,AL
      INC SI
      CMP SI,8
      JL RECUR
      CODE ENDS
END
      
      