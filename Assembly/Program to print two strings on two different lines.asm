.model small              ; Small memory model
.stack 100h               ; 256-byte stack

.data                     ; Data segment
    msg  db 'Hello World! $'  ; Message 1: "Hello World!"
    msg1 db 0dh, 0ah, 'Hello$' ; Message 2: "Hello" with a newline
    msg2 db 0dh, 0ah, 'World! $' ; Message 3: "World!" with a newline

.code                     ; Code segment

main proc                 ; Main procedure
    mov ax, @data         ; Set DS to data segment
    mov ds, ax

    mov dx, offset msg    ; Load address of msg into DX
    mov ah, 09h           ; DOS function 09h (Display string)
    int 21h               ; Call DOS interrupt to display msg

    mov dx, offset msg1   ; Load address of msg1 into DX
    mov ah, 09h           ; DOS function 09h
    int 21h               ; Display msg1

    mov dx, offset msg2   ; Load address of msg2 into DX
    mov ah, 09h           ; DOS function 09h
    int 21h               ; Display msg2

    mov ah, 4Ch           ; DOS function 4Ch (Exit program)
    int 21h               ; Call DOS interrupt to exit

main endp                 ; End of main procedure
end main                  ; End of program
