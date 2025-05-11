;Char innput and output and lower case to upper case
mov ah,1 
int 21h
mov ah,2
sub al,20h    ;input store in AL
mov dh,al  ; after print AL also replace with DL
mov dl,10
int 21h
mov dl,8h
int 21h   
mov dl,dh ; output from DL
int 21h
