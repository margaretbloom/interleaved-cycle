BITS 64

GLOBAL _start

SECTION .text

_start:
 mov ecx, 1000000

.loop:

%rep T/K

 TIMES K imul eax, eax
 TIMES K imul edx, edx

%endrep

 TIMES T-(T/K)*K imul eax, eax
 TIMES T-(T/K)*K imul edx, edx

 lfence 

 dec ecx
jnz .loop

 mov eax, 60
 xor edi, edi
 syscall


