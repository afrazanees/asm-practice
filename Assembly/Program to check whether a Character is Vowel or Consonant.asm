.model small
.stack 100h

.data 
      inp  db 'Enter a chracter: $' 
      msg  db 0dh,0ah,'Chracter is vowel!$'
      msg1 db 0dh,0ah,'Chracter is constant!$'

.code
main proc
    mov ax, @data 
    mov ds, ax    
    
    ;Display a message to enter a chracter
    mov dx, offset inp
    mov ah, 09h
    int 21h
    
    ;Take input chracter
    mov ah, 01h
    int 21h
    
    cmp al, 'a'
    je vowel   
    
    cmp al, 'e'
    je vowel  
    
    cmp al, 'i'
    je vowel 
    
    cmp al, 'o'
    je vowel 
    
    cmp al, 'u'
    je vowel 
    
    cmp al, 'A'
    je vowel 
    
    cmp al, 'E'
    je vowel 
    
    cmp al, 'I'
    je vowel 
    
    cmp al, 'O'
    je vowel 
    
    cmp al, 'U'
    je vowel 
    
    mov dx, offset msg1
    mov ah, 09h
    int 21h
    jmp exit
;   mov ah, 4ch
;   int 21h
    
                 
    vowel:    
       mov dx, offset msg
       mov ah, 09h
       int 21h
    
    exit:
    mov ah, 4Ch  
    int 21h

main endp
end main
