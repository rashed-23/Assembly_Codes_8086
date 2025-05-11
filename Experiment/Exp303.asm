
ORG 1000h 
MOV AL, -5 
SUB AL, 127  
JO  label1 
MOV BL, AL 
JMP exit 
label1: 
NEG AL 
exit: 
RET  