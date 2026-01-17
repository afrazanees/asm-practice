.model small
.stack 100h
.data
      
.code
      main proc
          mov ax, @data
          mov ds, ax
          
          ;Take single chracter input from user
          mov ah, 01h
          int 21h
          
          ;Move single chracter from al (where inputted chracter always store) to dl (from where chracter is displayed)           
          mov dl, al 
          
          ;Output single chracter store in dl          
          mov ah, 02h
          int 21h
          
          mov ah, 4ch
          int 21h
      main endp
      end main