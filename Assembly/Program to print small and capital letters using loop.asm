.model small
.stack 100h
.data
     capital db 'Capital Letters: $'  
     small   db 0dh,0ah, 'Small Letters: $'
.code
      main proc
            mov ax, @data
            mov ds, ax
            
            lea dx, capital
            mov ah, 09h
            int 21h
            
            ;Storing Capital 'A' in dl
            mov dl, 'A'
            mov cx, 26
            
            ;Loop for printing Capital letters
            loop1:
                mov ah, 02h
                int 21h
                
                ;add dl, 1
                inc dl
            
            loop loop1    
            
            lea dx, small
            mov ah, 09h
            int 21h
            
            ;Storing small 'a' in dl 
            mov dl, 'a'
            mov cx, 26
            
            ;Loop for printing small letters
            loop2:
                mov ah, 02h
                int 21h
                
                inc dl
                
            loop loop2
            
            mov ah, 4ch
            int 21h
      main endp
      end main