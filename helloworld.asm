global _start
section .text
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, msglen
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h

section .data
    msg:    db "hello world", 0xA
    msglen: equ $-msg
