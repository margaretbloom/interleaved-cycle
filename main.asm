BITS 64

GLOBAL _start

SECTION .text

_start:
 mov ecx, 1000000

.loop:
 TIMES T imul eax, eax
 ;lfence
 TIMES T imul edx, edx
 

 dec ecx
jnz .loop

 mov eax, 60
 xor edi, edi
 syscall


