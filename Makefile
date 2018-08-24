main-${T}-${K} : main-${T}-${K}.o
	ld $< -o $@

main-${T}-${K}.o : main.asm
	nasm -felf64 -DT=${T} -DK=${K} $< -o $@

