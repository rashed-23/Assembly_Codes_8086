.MODEL SMALL
.STACK 100H

.DATA
    MSG DB "Enter a string: $"
    NEWLINE DB 0DH, 0AH, "$"  ; Newline characters
    BUFFER DB 20 DUP('$')      ; Reserve 20 bytes for input

.CODE
MAIN PROC
    MOV AX, @DATA     ; Load data segment
    MOV DS, AX        ; Set DS to data segment

    ; Print message
    LEA DX, MSG       ; Load address of MSG
    MOV AH, 09H       ; DOS function: Print string
    INT 21H           ; Call DOS interrupt

    ; Read input character by character
    MOV SI, 0         ; Index for buffer
    MOV CX, 20        ; Max characters

READ_LOOP:
    MOV AH, 01H       ; DOS function: Read character
    INT 21H           ; Read single character

    CMP AL, 0DH       ; Check if Enter is pressed (Carriage Return)
    JE END_INPUT      ; If Enter, stop reading

    MOV BUFFER[SI], AL  ; Store character in buffer
    INC SI            ; Move index
    LOOP READ_LOOP    ; Repeat until CX times

END_INPUT:
    MOV BUFFER[SI], '$'  ; Append '$' to mark end of string

    ; Print new line
    LEA DX, NEWLINE
    MOV AH, 09H
    INT 21H

    ; Print stored string
    LEA DX, BUFFER
    MOV AH, 09H
    INT 21H

    ; Exit program
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
