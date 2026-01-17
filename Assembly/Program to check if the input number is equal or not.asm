.model small
.stack 100h

.data
    msg  db 0dh,0ah, 'Number is equal!$'    ; Message for equal comparison
    msg1 db 0dh,0ah, 'Number is not equal!$' ; Message for not equal comparison

.code
main proc
    mov ax, @data   ; Initialize data segment
    mov ds, ax      ; Set DS register

    mov dl, '9'     ; Set DL to ASCII value of '9'

    mov ah, 01h     ; Function 01h: Read character from user
    int 21h         ; Call DOS interrupt

    cmp al, dl      ; Compare input with '9'
    je  l1          ; If equal, jump to label l1

    mov dx, offset msg1  ; Load "not equal" message address
    mov ah, 09h     ; Function 09h: Display string
    int 21h         ; Print "not equal"

    mov ah, 4Ch     ; Function 4Ch: Exit program
    int 21h         ; Exit

l1:
    mov dx, offset msg   ; Load "equal" message address
    mov ah, 09h          ; Function 09h: Display string
    int 21h              ; Print "equal"

    mov ah, 4Ch     ; Exit program
    int 21h

main endp
end main
