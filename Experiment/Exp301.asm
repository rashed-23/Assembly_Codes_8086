   ORG 100h 
   MOV AL, 255 
   add BL, 1 
again: 
   JC  label1 
   JMP exit 
label1: 
   ADD AL,BL 
exit: 
   SUB AL,BL    
   HLT 