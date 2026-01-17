.model small              ; Small memory model
.stack 100h               ; 256-byte stack

.data                     ; Data segment (empty)

.code                     ; Code segment

main proc                 ; Main procedure
    mov ax, @data         ; Set DS to data segment
    mov ds, ax

    mov ah, 01h           ; Read character from input
    int 21h

    mov dl, al            ; Move input char to DL
    add dl, 32            ; Convert to lowercase

    mov ah, 02h           ; Display character
    int 21h

    mov ah, 4Ch           ; Exit program
    int 21h

main endp                 ; End of main procedure
end main                  ; End of program
