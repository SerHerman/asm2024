     1                                   section .data
     2 00000000 48656C6C6F2C20776F-         msg db "Hello, world", 0x0A
     2 00000009 726C640A           
     3                                      len equ $-msg
     4                                      ;len equ 14
     5                                  section .text
     6                                      global _start
     7                                  _start:
     8 00000000 B804000000              mov eax, 4
     9 00000005 BB01000000              mov ebx, 1
    10 0000000A B9[00000000]            mov ecx, msg
    11 0000000F BA0D000000              mov edx, len
    12 00000014 CD80                    int 0x80
    13                                  L_exit:
    14 00000016 B801000000              mov eax, 1
    15 0000001B BB00000000              mov ebx, 0
    16                                  ; xor ebx, ebx
    17 00000020 CD80                    int 80h
