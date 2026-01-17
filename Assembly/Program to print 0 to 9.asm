.model small              ; Small memory model
.stack 100h               ; 256-byte stack

.data                     ; Data segment (empty)

.code                     ; Code segment

main proc                 ; Main procedure
    mov ax, @data         ; Set DS to data segment
    mov ds, ax

    mov cx, 10            ; Set loop counter to 10
    mov dl, 48            ; Set DL to ASCII code for '0' (48)

loop1:
    mov ah, 02h           ; Print character in DL
    int 21h

    add dl, 1             ; Increment DL (next character)
   ;We can also use "inc" keyword, which increment by 1
   ;inc dl
    
    loop loop1            ; Loop 10 times

main endp                 ; End of main procedure
end main                  ; End of program
