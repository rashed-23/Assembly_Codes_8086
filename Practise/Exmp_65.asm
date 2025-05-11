.MODEL SMALL
.STACK 100H
.DATA
MSG DB 13,10,84,72,'E TOTAL NUMBER IS: $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV DL,-1 
    MOV AH,1 
    
    L:
    INC DL
    INT 21H
    CMP AL,13
    JNE L
    
    ADD DL,'0'
    MOV BL,DL
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV DL,BL
    MOV AH,2
    INT 21H
   MAIN ENDP
END MAIN
    