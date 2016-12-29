#include <mips/regdef.h>

	.set	noreorder	# Don't allow the assembler to reorder instructions.
	.set	noat

	.section .exceptions

	.org	0x180
general_exception_vector:
	.type	general_exception_vector, @function
	la	k0, general_exception_handler
	jr	k0
	nop

	.org	0x200
interrupt_vector:
	.type	interrupt_vector, @function
	la	k0, interrupt_handler
	jr	k0
	nop
