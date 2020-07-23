all:
	@llvm-mc -show-encoding -arch=x86-64 -filetype=asm test.s -o check.s
	@echo "avx512 instructions"
	@grep "\[0x62" check.s
clean:
	@rm check.s *~
