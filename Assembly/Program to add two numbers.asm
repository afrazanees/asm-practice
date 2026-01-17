.model small
.stack 100h
.data

.code
      main proc
            mov ax, @data
            mov ds, ax
            
            mov al, 1   ;Move 1 to accumulator lower (AL), which is general purpose register
            mov bl, 2   ;Move 2 to Base lower (BL), which is general purpose register
            
            ;To add, we use keyword 'Add'
            Add al, bl  ;This is known as "Registers addressing mode"
            
            ;Another way (Immediate Addressing Mode)
            ;mov cl, 1
            ;add cl, 2
            
            ;Moving value stored in "al" to "dl"
            mov dl, al
            
            ;At this point, dl contain ASCII code of value stored in BL (which is 3)
            ;So, we must convert it into digit first. This can be done by:
            add dl, 48
            
            ;Displaying what is stored in dl
            mov ah, 02h
            int 21h
            
 
            mov ah, 4ch
            int 21h
      main endp
      end main