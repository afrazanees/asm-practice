;Write a program that display a single chracter on a screen
;  " ; " is used for single line comment in assembly language       

.model small ;Model Directive
.stack 100h  ;Stack segment of 100h (100 hex)
.data        ;All variables are delcared in .data segmant

.code
     main proc    ; create main function 
          mov ax, @data
          mov ds, ax
     
          ;DIsplay single chracter to screen
          mov dl, 'A'
          mov ah, 02h
          int 21h 
           
          
          ;Program termination 
          mov ah, 4ch
          int 21h    
          
     main endp     ; end main function 
     end main