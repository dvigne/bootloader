org 0x7c00
bits 16

; video page number.
mov bh, 0
; ES:BP is the pointer to string.
mov ax, 0x0
mov es, ax
mov bp, msg

; attribute(7 is light gray).
mov bl, 0x7
; write mode: character only, cursor moved.
mov al, 1
; string length, hardcoded.
mov cx, 6
; y coordinate
mov dh, 16
; x coordinate
mov dl, 1

; int 10, 13
mov ah, 0x13
int 0x10

; keep jumping until shutdown.
jmp $

msg dw  'hello2'

times  510 - ($-$$) db 0
dw 0xaa55
