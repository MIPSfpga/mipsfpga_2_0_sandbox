#include <mips/regdef.h>
#include <mips/asm.h>
#include <mips/m32c0.h>

#include "mfp_memory_mapped_registers.h"

	.set	noreorder	# Don't allow the assembler to reorder instructions
	.set	noat

#ifndef UNDEFINED

//--------------------------------------------------------------------

	.text

	.global	demo_bypass_a_from_alu_instruction

demo_bypass_a_from_alu_instruction:

	li	t0, 0x001
	li	t1, 0x010

	.rep	3

	addiu	t1, t0, 1
	addu	t2, t1, t0

	.endr

	jr	ra
	nop

//--------------------------------------------------------------------

	.text

	.global	demo_bypass_b_from_alu_instruction

demo_bypass_b_from_alu_instruction:

	li	t0, 0x001
	li	t1, 0x010

	.rep	3

	addiu	t1, t0, 1
	addu	t2, t0, t1

	.endr

	jr	ra
	nop

//--------------------------------------------------------------------

	.text

	.global	demo_bypass_a_and_b_from_alu_instruction

demo_bypass_a_and_b_from_alu_instruction:

	li	t0, 0x001
	li	t1, 0x010

	.rep	3

	addiu	t1, t0, 1
	addu	t2, t1, t1

	.endr

	jr	ra
	nop

//--------------------------------------------------------------------

	.data

memory_location:

	.word	0x100

	.text

	.global	demo_bypass_a_from_load_instruction

demo_bypass_a_from_load_instruction:

	li	t0, 0x001
	la	t1, memory_location

	.rep	3

	lw	t2, (t1)
	addu	t3, t2, t0

	.endr

	jr	ra
	nop

//--------------------------------------------------------------------

	.text

	.global	demo_bypass_b_from_load_instruction

demo_bypass_b_from_load_instruction:

	li	t0, 0x001
	la	t1, memory_location

	.rep	3

	lw	t2, (t1)
	addu	t3, t0, t2

	.endr

	jr	ra
	nop

//--------------------------------------------------------------------

	.text

	.global	demo_bypass_a_and_b_from_load_instruction

demo_bypass_a_and_b_from_load_instruction:

	li	t0, 0x001
	la	t1, memory_location

	.rep	3

	lw	t2, (t1)
	addu	t3, t2, t2

	.endr

	jr	ra
	nop

#endif
/*
//--------------------------------------------------------------------

	.text

	.global	demo_bypass_a_from_alu_instruction

demo_bypass_a_from_alu_instruction:

	li	t0, 0x001
	li	t1, 0x010
1:
	addiu	t1, t0, 1
	addu	t2, t1, t0
	b	1b
	nop

//--------------------------------------------------------------------

	.text

	.global	demo_bypass_b_from_alu_instruction

demo_bypass_b_from_alu_instruction:

	li	t0, 0x001
	li	t1, 0x010
1:
	addiu	t1, t0, 1
	addu	t2, t0, t1
	b	1b
	nop

//--------------------------------------------------------------------

	.text

	.global	demo_bypass_a_and_b_from_alu_instruction

demo_bypass_a_and_b_from_alu_instruction:

	li	t0, 0x001
	li	t1, 0x010
1:
	addiu	t1, t0, 1
	addu	t2, t1, t1
	b	1b
	nop

//--------------------------------------------------------------------

	.data

memory_location:

	.word	0x100

	.text

	.global	demo_bypass_a_from_load_instruction

demo_bypass_a_from_load_instruction:

	li	t0, 0x001
	la	t1, memory_location
1:
	lw	t2, (t1)
	addu	t3, t2, t0
	b	1b
	nop

//--------------------------------------------------------------------

	.text

	.global	demo_bypass_b_from_load_instruction

demo_bypass_b_from_load_instruction:

	li	t0, 0x001
	la	t1, memory_location
1:
	lw	t2, (t1)
	addu	t3, t0, t2
	b	1b
	nop

//--------------------------------------------------------------------

	.text

	.global	demo_bypass_a_and_b_from_load_instruction

demo_bypass_a_and_b_from_load_instruction:

	li	t0, 0x001
	la	t1, memory_location
1:
	lw	t2, (t1)
	addu	t3, t2, t2

	b	1b
	nop
*/