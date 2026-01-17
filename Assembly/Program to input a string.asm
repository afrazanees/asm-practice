.model small
.stack 100h
.data
    msg db 100 dup('$') ; Reserve space for 100 characters, initially '$' terminated
.code
main proc
    mov ax, @data
    mov ds, ax

    mov si, offset msg

L1:
    mov ah, 01h          ; DOS interrupt to read character
    int 21h
    cmp al, 13           ; Check if Enter key (ASCII 13) is pressed
    je programEnd

    mov [si], al         ; Store the character at the current position
    inc si               ; Move the pointer to the next position
    jmp L1                ; Repeat the process

programEnd:
    mov byte ptr [si], '$' ; Null-terminate the string with '$'
    
    mov dx, offset msg    ; Point DX to the start of the string
    mov ah, 09h           ; DOS interrupt to display the string
    int 21h

    mov ah, 4Ch           ; Terminate the program
    int 21h

main endp
end main
