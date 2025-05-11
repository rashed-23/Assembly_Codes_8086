.MODEL SMALL
.STACK 100H
.DATA
BUFFER DB 100
       DB '$'
       DB 100 DUP('$'>
MSG DB 'INPUT THE STRING',10,13,'$'
NEWLINE DB 10,13,'$'
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX, MSG
    MOV AH,9H
    INT 21H
    
    LEA DX,BUFFER
    MOV AH,0AH
    INT 21H
    
    LEA DX,NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX, BUFFER+2
    MOV AH,9H
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN