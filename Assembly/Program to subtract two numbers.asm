.model small      ; Define a small memory model
.stack 100h       ; Define the stack size (256 bytes)

.data             ; Data segment (not used here but defined for structure)
.code             ; Code segment (where the program logic goes)

main proc
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Load AL with 3 and BL with 2
    mov al, 3
    mov bl, 2

    ; Perform AL - BL (3 - 2 = 1), result in AL
    sub al, bl

    ; Convert the result (1) to its ASCII character ('1') by adding '0' (48)
    mov dl, al        ; DL now holds the result (1)
    
    add dl, '0'      
    ;add dl, 48       ; Convert whatever stored in dl in ASCII to digit by adding '48'
    
    ; Print the character in DL (the ASCII '1')
    mov ah, 02h       ; DOS function 02h (print character in DL)
    int 21h           ; Interrupt 21h to print the character

    ; Exit the program
    mov ah, 4Ch       ; DOS function 4Ch (exit program)
    int 21h           ; Interrupt 21h to terminate the program

main endp
end main           ; End of program
