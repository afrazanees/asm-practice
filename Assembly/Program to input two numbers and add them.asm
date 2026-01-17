.model small            ; Define memory model as small
.stack 100h             ; Define stack size

.data                   ; Start of data section (not used here but included for consistency)
; You can define variables here if needed

.code                   ; Start of code section
     main proc           ; Define the main procedure
          mov ax, @data  ; Load the data segment address into ax
          mov ds, ax     ; Set ds register to point to the data segment
          
          mov ah, 01h     ; Prepare to read a character from the user (function 01h of int 21h)
          int 21h         ; Interrupt 21h - reads a character from the keyboard
          
          mov bl, al      ; Store the first input character in register bl
          
          mov ah, 01h     ; Prepare to read another character from the user
          int 21h         ; Interrupt 21h - reads a second character from the keyboard
          
          mov cl, al      ; Store the second input character in register cl
          
          add bl, cl      ; Add the values of bl and cl (the two input characters)
          
          mov dl, bl      ; Move the result of the addition to dl
          sub dl, '0'     ; Convert the ASCII value to a numeric value by subtracting '0'
          
          mov ah, 02h     ; Prepare to output the result (function 02h of int 21h)
          int 21h         ; Interrupt 21h - outputs the result (in dl) to the screen
          
          mov ah, 4ch     ; Prepare to terminate the program (function 4Ch of int 21h)
          int 21h         ; Interrupt 21h - terminates the program

     main endp           ; End of main procedure
     end main            ; End of the program