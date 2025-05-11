; REPLACE THE NUMBER BY ABS
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
     MOV AX,-5
     CMP AX,0
     JL L1
     JMP L2
     L1:
     MOV BL,-1
     IMUL BL
     
     L2:
     MOV DX,AX
     ADD DX,'0'
     MOV AH,2
     INT 21H
     MAIN ENDP
END MAIN