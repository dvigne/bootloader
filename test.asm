org 7C00h

jmp short _start

msg db "Hello World"
len equ $ - msg

_start:
  mov ah, 6
  int 10h
  mov ax, 0x0
  mov es, ax
  mov bp, msg
  mov al, 1
  mov bh, 0
  mov bl, 0x7
  and dx, 0x00
  mov cx, len
  mov ah, 0x13
  int 10h


  times 0200h - 2 - ($ - $$)  db 0    ;Zerofill up to 510 bytes

  dw 0AA55h       ;Boot Sector signature

;OPTIONAL:
;To zerofill up to the size of a standard 1.44MB, 3.5" floppy disk
;times 1474560 - ($ - $$) db 0
