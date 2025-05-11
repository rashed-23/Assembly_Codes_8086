 ASSUME CS :CODE, DS:CODE
 ORG 1000H
 MOV BH,11111111B
 SBHF
 MOV AX,0A0AAH 
 MOV DX,5055H
 MOV CL,3
 SAL AX,CL  
 SAR DX,CL
 MOV CL,2
 ROR AX,CL
 ROL DX,CL
 STC 
 RCL AL,CL
 RCR DX,CL
 HLT 
 
 



                                               