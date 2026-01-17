.model small          ; Define memory model as small
.stack 100h           ; Set up stack size of 256 bytes
.data                 ; Data segment starts here
      msg1 db 'Quotient: $'  ; Message for quotient
      msg2 db 0dh,0ah,'Remainder: $'  ; Message for remainder, includes newline/line feed
      q db ?             ; Variable for quotient (initially undefined)
      r db ?             ; Variable for remainder (initially undefined)

.code                 ; Code segment starts here
    main proc          ; Main procedure starts
        mov ax, @data  ; Load address of data segment into ax
        mov ds, ax     ; Initialize data segment register ds
        
        mov ax, 10     ; Load dividend (10) into ax
        mov bl, 2      ; Load divisor (2) into bl
        
        div bl         ; Perform division (ax / bl). Result in al (quotient), remainder in ah
        
        mov q, al      ; Store quotient (in al) into variable q
        mov r, ah      ; Store remainder (in ah) into variable r
        
        mov ah, 09h    ; DOS function to display a string
        lea dx, msg1   ; Load address of msg1 (quotient label) into dx
        int 21h        ; Display msg1 (quotient label)
        
        mov dl, q      ; Load quotient into dl (to display)
        add dl, '0'    ; Convert quotient to ASCII by adding '0'
        mov ah, 02h    ; DOS function to display a character
        int 21h        ; Display the quotient
        
        mov ah, 09h    ; DOS function to display a string
        lea dx, msg2   ; Load address of msg2 (remainder label) into dx
        int 21h        ; Display msg2 (remainder label)
        
        mov dl, r      ; Load remainder into dl (to display)
        add dl, '0'    ; Convert remainder to ASCII by adding '0'
        mov ah, 02h    ; DOS function to display a character
        int 21h        ; Display the remainder
        
        mov ah, 4ch    ; DOS function to terminate program
        int 21h        ; Exit the program
    main endp          ; End of main procedure
    end main           ; End of program
