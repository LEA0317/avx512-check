all:
	@llvm-mc -show-encoding -arch=x86-64 -filetype=asm test.s -o check.s
	@echo "avx512 instructions"
	@cat check.s | grep -r "\[0x62"

clean:
	@rm check.s *~ log
