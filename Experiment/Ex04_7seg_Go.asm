
CODE SEGMENT 
ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE 
 
PPIC_C EQU 1FH 
PPIC EQU 1DH 
PPIB EQU 1BH 
PPIA EQU 19H 

ORG 1000H 
MOV AL,80H 
OUT PPIC_C,AL 
L:
MOV AL,11111001B
OUT PPIA,AL 
JMP L
HLT 
CODE ends 
END