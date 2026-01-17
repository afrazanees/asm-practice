.model small           ; Define small memory model
.stack 100h            ; Allocate stack space of 100h bytes
.data                  ; Start of the data segment
.code                  ; Start of the code segment

    main proc          ; Main procedure
        mov ax, @data  ; Load address of data segment into ax
        mov ds, ax     ; Move the address into ds (data segment register)
        
        mov ah,00
        mov al,02
        int 10h
    
    main endp           ; End of main procedure
    end main            ; End of program
