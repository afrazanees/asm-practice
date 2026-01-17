.model small          ; Define memory model as small
.stack 100h           ; Set up stack size of 256 bytes
.data                 ; Data segment (not used in this example)
    
.code                 ; Code segment starts here
   main proc          ; Main procedure starts
    mov ax, @data     ; Load address of data segment into ax
    mov ds, ax        ; Initialize data segment register ds
    
    mov ax, '1'       ; Load ASCII value of '1' into ax
    mov bx, '2'       ; Load ASCII value of '2' into bx
    
    push ax           ; Push value of ax ('1') onto stack
    push bx           ; Push value of bx ('2') onto stack
    
    pop ax            ; Pop value from stack into ax ('1')
    mov dx, ax        ; Move value from ax to dx
    mov ah, 02h       ; Set function code for displaying character
    int 21h           ; Call DOS interrupt to display character in dl
    
    pop bx            ; Pop value from stack into bx ('2')
    mov dx, bx        ; Move value from bx to dx
    mov ah, 02h       ; Set function code for displaying character
    int 21h           ; Call DOS interrupt to display character in dl
    
    mov ah, 4ch       ; Set function code to terminate program
    int 21h           ; Call DOS interrupt to exit program
   main endp          ; End of main procedure
   end main           ; End of program
