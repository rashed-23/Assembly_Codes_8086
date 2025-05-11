.MODEL SMALL
.STACK 100H
.DATA
PROMPT DB "ENTER A STRING: $"
CAP DB "FIRST LETTER = "
FIRST DB '['
      DB " LAST LETTER = "
LAST DB '@ $'
NEWLINE DB 10,13,'$'
NO_LETTER DB "NO CAPITAL LETTER$"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,PROMPT
    MOV AH,09H
    INT 21H
    
    LEA DX,NEWLINE
    INT 21H
     
    INPUT:
    MOV AH,01H
    INT 21H
    
    CMP AL,13
    JE OUTPUT 
    
    CMP AL,'A'
    JL INPUT 
    
    CMP AL,'Z'
    JG INPUT
    
    CMP AL,FIRST
    JG CHECK_LAST
    MOV FIRST,AL
    
    CHECK_LAST:
    CMP AL,LAST
    JL INPUT
    
    MOV LAST,AL
    JMP INPUT
    
    
    OUTPUT:
    CMP FIRST,'['
    JE NO_MSG
    
    LEA DX,NEWLINE
    MOV AH,09H
    INT 21H
    
    LEA DX,CAP
    MOV AH,09H
    INT 21H
    
    JMP EXIT
    
    NO_MSG:
    LEA DX,NEWLINE
    MOV AH,09H
    INT 21H
    
    LEA DX,NO_LETTER
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
     
    MAIN ENDP
END MAIN
    
    
    
    
    
    
    
    