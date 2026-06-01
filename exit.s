# Assemble	as --32 exit.s -o exit.o
# Link		ld -m elf_i386 exit.o -o exit
#
# Type echo $? on terminal to see the results
# If you are on a i386 processor you dont need the --32 and ld -m elf_i386 flags
#

.section .data
.section .text
.globl _start
_start:

	movl $1, %eax
	movl $5, %ebx
	int $0x80
