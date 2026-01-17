.model small
.stack 100h
.data
    string db 'YELLOW$'
.code
    main proc
        mov ax, @data
        mov ds, ax
        
;        mov si, offset string
;        
;        pushLabel:
;            mov al, [si]
;            cmp al, '$'
;            je  popLabel
;            push ax
;            inc si
;            jmp pushLabel
;        
;        popLabel:
;            pop dx
;            mov ah, 02h
;            int 21h
;            cmp sp, 100h
;            je programEnd
;            jmp popLabel
;            
;         programEnd:
;            mov ah, 4ch
;            int 21h
             
             
;       ;USING LOOP
;            mov si, offset string
;            
;            mov cx, 6
;            L1:
;            mov al, [si]
;            push ax
;            inc si
;            
;            loop L1
;            
;            mov cx, 6
;            L2:
;            pop dx
;            mov ah, 02h
;            int 21h
;            
;            loop L2
;            
;            mov ah, 4ch
;            int 21h 
             
    main endp
    end main