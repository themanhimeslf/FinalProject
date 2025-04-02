    ; _Start:
    ;     mov edx, 11
    ;     mov ecx, msg
    ;     mov ebx, 1
    ;     mov eax, 4
    ;     int 0x80
    ;     mov eax, 1 
    ;     int 0x80

    ; section .data
    ;     msg db 'hello world', 0xa  ; String with newline (0xA = '\n')


section .data
    msg db 'hello world', 0xA  ; String with newline
    len equ $ - msg            ; Calculate length of msg dynamically

section .text
    global _start              ; Declare the entry point

_start:
    mov edx, len               ; Message length
    mov ecx, msg               ; Message address
    mov ebx, 1                 ; File descriptor (stdout)
    mov eax, 4                 ; Syscall number (sys_write)
    int 0x80                   ; Call kernel

    mov eax, 1                 ; Syscall number (sys_exit)
    xor ebx, ebx               ; Exit status (0)
    int 0x80                   ; Call kernel