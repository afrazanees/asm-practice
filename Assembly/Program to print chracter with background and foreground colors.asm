.model small           ; Define small memory model
.stack 100h            ; Allocate stack space of 100h bytes
.data                  ; Start of the data segment
.code                  ; Start of the code segment

    main proc          ; Main procedure
        mov ax, @data  ; Load address of data segment into ax
        mov ds, ax     ; Move the address into ds (data segment register)
        
        mov ah, 09h    ; BIOS interrupt to display string
        mov al, 'A'    ; Load character 'A' into al (low byte of ax)
        mov bl, 10011100b ; Load a binary value into bl register (used later in video mode or color)
        mov bh, 00h    ; Load 00h into bh (higher byte of video parameters)
        mov cx, 1      ; Set cx to 1, might be used for repeating or string length
        int 10h        ; Interrupt 10h - BIOS video interrupt for output

        mov ah, 4ch    ; DOS interrupt to terminate the program
        int 21h        ; Interrupt 21h - DOS function to terminate program
    
    main endp           ; End of main procedure
    end main            ; End of program
