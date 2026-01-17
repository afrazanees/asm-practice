.model small      ; Define a small memory model (for a small program with code and data in one segment)
.stack 100h       ; Define the stack size (256 bytes)

.data             ; Data segment (empty in this case)

.code             ; Code segment (where the program logic is written)

main proc
    ; Initialize the data segment
    mov ax, @data  ; Load the address of the data segment into AX
    mov ds, ax     ; Set the DS register to point to the data segment

    ; Exit the program
    mov ah, 4Ch    ; DOS function 4Ch (exit program)
    int 21h        ; Call interrupt 21h to terminate the program

main endp
end main           ; End of the program
