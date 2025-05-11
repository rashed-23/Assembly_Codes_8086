 ;ORG 100h 
   MOV AX, 3 ; Repeat changing  
   CMP BX, 5 ;values of AX and BX 
   JLE label1  
   ADD AX, BX 
   JMP exit 
label1: 
   SUB BX, AX 
exit: 
   RET 