include 'emu8086.inc'
;String input and output
.model small ; here data segment exist
.data
msg db '123456789$'
.code
mov ax,@data
mov ds,ax
mov dx,offset msg  ; lea or mov and offset
mov ah,9
int 21h
print NEWLINE
print "Rashed"