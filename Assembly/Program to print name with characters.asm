.model small      ; Define a small memory model
.stack 100h       ; Define the stack size (256 bytes)

.data             ; Data segment (empty in this case)

.code             ; Code segment (where the program logic goes)

main proc
    ; Initialize the data segment
    mov ax, @data  ; Load the address of the data segment into AX
    mov ds, ax     ; Set the DS register to point to the data segment

    ; Print the character 'N'
    mov ah, 02h    ; DOS function 02h (print character in DL)
    mov dl, 'N'    ; Load DL with the ASCII code for 'N'
    int 21h        ; Call interrupt 21h to print 'N'

    ; Print the character 'A'
    mov ah, 02h    ; DOS function 02h (print character in DL)
    mov dl, 'A'    ; Load DL with the ASCII code for 'A'
    int 21h        ; Call interrupt 21h to print 'A'

    ; Print the character 'M'
    mov ah, 02h    ; DOS function 02h (print character in DL)
    mov dl, 'M'    ; Load DL with the ASCII code for 'M'
    int 21h        ; Call interrupt 21h to print 'M'

    ; Print the character 'E'
    mov ah, 02h    ; DOS function 02h (print character in DL)
    mov dl, 'E'    ; Load DL with the ASCII code for 'E'
    int 21h        ; Call interrupt 21h to print 'E'

    ; Exit the program
    mov ah, 4Ch    ; DOS function 4Ch (exit program)
    int 21h        ; Call interrupt 21h to terminate the program

main endp
end main           ; End of program
