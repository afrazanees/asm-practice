.model small
.stack 100h

.data
    arr db 5, 3, 8, 6, 2, 7, 1, 4

.code
main proc
    mov ax, @data
    mov ds, ax

    mov dx, 7           ; Set array size (n - 1) for outer loop, it's 7 since array size is 8

outerloop: 
    mov cx, dx          ; Copy size to cx (inner loop count)
    mov bx, offset arr  ; Point bx to the start of the array

innerloop:
    mov al, [bx]        ; Load arr[bx] into al
    mov ah, [bx+1]      ; Load arr[bx+1] into ah
    cmp al, ah          ; Compare arr[bx] and arr[bx+1]
    jbe notswap         ; If arr[bx] <= arr[bx+1], skip swap

swap:
    xchg al, ah         ; Swap arr[bx] and arr[bx+1]
    mov [bx], al        ; Store the new value of arr[bx]
    mov [bx+1], ah      ; Store the new value of arr[bx+1]

notswap:
    inc bx              ; Move to the next pair of elements
    loop innerloop      ; Repeat the inner loop

    dec dx              ; Decrease the size for the outer loop
    cmp dx, 0           ; Check if dx == 0
    jne outerloop       ; Repeat the outer loop if not finished

    ; Program end
    mov ah, 4Ch
    int 21h

main endp