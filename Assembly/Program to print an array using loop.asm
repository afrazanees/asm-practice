.model small
.stack 100h
.data
     arr db '12345'  ; Array of characters '1', '2', '3', '4', '5'
.code
     main proc
     
     mov ax, @data      ; Initialize data segment
     mov ds, ax         ; Set DS to point to data segment

     mov si, offset arr ; Load address of array into SI
     
     mov cx, 5          ; Loop 5 times (5 characters in array)
     
     L1:
     mov dl, [si]       ; Load current character into DL
     mov ah, 02h        ; DOS function to print character
     int 21h            ; Print character
     inc si             ; Move to next character in array
     
     loop L1            ; Repeat until CX is 0
     
     mov ah, 4Ch        ; DOS function to exit program
     int 21h            ; Terminate program
     
     main endp
     end main
