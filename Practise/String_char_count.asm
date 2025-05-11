; NUMVER OF CHARECTER IN THE STRING
.MODEL SMALL
.STACK 100H
.DATA
STRING DB "DDHBWHBSDCNSBDHSDBSDFHVB$"
MSG DB "TOTAL CHARECTER NUMBER IS: $" 
ARR DB 5 DUP<?)
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV SI,-1
    MOV BL,-1  
    
    L:
    INC BL
    INC SI
    MOV AL,STRING[SI]
    CMP AL,'$'
    JNE L
    MOV AL,BL
    MOV BL,10
    MOV CX,0
    MOV  SI,0 
    
    L2:
    MOV AH,0
    DIV BL
    MOV ARR[SI],AH
    INC SI
    INC CX
    CMP AL,0
    JNE L2 
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV SI,CX
    DEC SI
    MOV AH,2
    L3:
    MOV DL,ARR[SI] 
    ADD DL,'0'
    INT 21H
    DEC SI
    LOOP L3
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN