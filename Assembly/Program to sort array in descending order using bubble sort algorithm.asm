.model small
.stack 100h

.data
    arr db 5,7,9,1,2      ; Array to be sorted (5 elements)

.code
main proc
    mov ax, @data         ; Initialize data segment
    mov ds, ax
    
    mov dx, 4             ; Set array size - 1 (4 for 5 elements)
    
outerloop:
    mov cx, dx            ; Set loop counter for inner loop
    mov bx, offset arr    ; Point bx to the start of the array
    
innerloop:
    mov al, [bx]          ; Load current element into AL
    mov ah, [bx+1]        ; Load next element into AH
    cmp al, ah            ; Compare current and next element
    jge noswap            ; If current >= next, no swap needed
    
swap:
    xchg al, ah           ; Swap current and next element
    mov [bx], al          ; Store swapped value in current position
    mov [bx+1], ah        ; Store swapped value in next position
    
noswap:
    inc bx                ; Move to next pair of elements
    loop innerloop        ; Repeat inner loop until CX = 0
    
    dec dx                ; Decrease outer loop counter
    cmp dx, 0             ; Check if sorting is complete
    jne outerloop         ; Repeat outer loop if not done
    
    mov ah, 4Ch           ; Terminate program
    int 21h
main endp
end main
