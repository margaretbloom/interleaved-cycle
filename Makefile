main-${T} : main-${T}.o
	ld $< -o $@

main-${T}.o : main.asm
	nasm -felf64 -DT=${T} $< -o $@

