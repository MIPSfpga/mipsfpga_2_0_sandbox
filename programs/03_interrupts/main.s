	.file	1 "main.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	softfloat
	.module	oddspreg
	.text
	.align	2
	.globl	general_exception_handler
	.set	nomips16
	.set	nomicromips
	.ent	general_exception_handler
	.type	general_exception_handler, @function
general_exception_handler:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x0000000c,-12
	.fmask	0x00000000,0
	mfc0	$27,$14
	addiu	$sp,$sp,-16
	sw	$27,12($sp)
	mfc0	$27,$12
	sw	$27,8($sp)
	ins	$27,$0,0,5
	mtc0	$27,$12
	sw	$3,4($sp)
	sw	$2,0($sp)
 #APP
 # 9 "main.c" 1
	mfc0 $2,$13,0
 # 0 "" 2
 #NO_APP
	andi	$3,$2,0x400
	.set	noreorder
	.set	nomacro
	bne	$3,$0,.L9
	andi	$2,$2,0x800
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L1
	li	$2,1048576			# 0x100000
	.set	macro
	.set	reorder

	sw	$2,%gp_rel(n)($28)
.L1:
	lw	$3,4($sp)
	lw	$2,0($sp)
	lw	$27,12($sp)
	mtc0	$27,$14
	lw	$27,8($sp)
	addiu	$sp,$sp,16
	mtc0	$27,$12
	eret
.L9:
	lw	$3,4($sp)
	lw	$2,0($sp)
	lw	$27,12($sp)
	sw	$0,%gp_rel(n)($28)
	mtc0	$27,$14
	lw	$27,8($sp)
	addiu	$sp,$sp,16
	mtc0	$27,$12
	eret
	.end	general_exception_handler
	.size	general_exception_handler, .-general_exception_handler
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,-1082130432			# 0xffffffffbf800000
	lw	$2,8($2)
	andi	$2,$2,0x4
	beq	$2,$0,.L11
	sw	$0,%gp_rel(n)($28)
	li	$4,-1082130432			# 0xffffffffbf800000
	.set	noreorder
	.set	nomacro
	b	.L14
	li	$5,1048576			# 0x100000
	.set	macro
	.set	reorder

.L19:
	sw	$0,%gp_rel(n)($28)
.L13:
	lw	$3,%gp_rel(n)($28)
	lw	$2,%gp_rel(n)($28)
	sra	$3,$3,8
	ins	$3,$0,0,8
	andi	$2,$2,0xff
	or	$2,$3,$2
	sw	$2,16($4)
	lw	$2,%gp_rel(n)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(n)($28)
.L14:
	lw	$2,12($4)
	andi	$3,$2,0x1
	.set	noreorder
	.set	nomacro
	bne	$3,$0,.L19
	andi	$2,$2,0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bnel	$2,$0,.L13
	sw	$5,%gp_rel(n)($28)
	.set	macro
	.set	reorder

	b	.L13
.L11:
 #APP
 # 44 "main.c" 1
	mfc0 $2,$12,0
 # 0 "" 2
 #NO_APP
	ins	$2,$0,22,1
 #APP
 # 44 "main.c" 1
	.set push 
.set noreorder
mtc0 $2,$12,0
ehb
.set pop
 # 0 "" 2
 # 49 "main.c" 1
	mfc0 $2,$12,0
 # 0 "" 2
 #NO_APP
	ori	$2,$2,0xfc01
 #APP
 # 49 "main.c" 1
	.set push 
.set noreorder
mtc0 $2,$12,0
ehb
.set pop
 # 0 "" 2
 #NO_APP
	li	$4,-1082130432			# 0xffffffffbf800000
	sw	$0,%gp_rel(n)($28)
.L15:
	lw	$3,%gp_rel(n)($28)
	lw	$2,%gp_rel(n)($28)
	sra	$3,$3,8
	ins	$3,$0,0,8
	andi	$2,$2,0xff
	or	$2,$3,$2
	sw	$2,16($4)
 #APP
 # 55 "main.c" 1
	di
 # 0 "" 2
 #NO_APP
	lw	$2,%gp_rel(n)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(n)($28)
 #APP
 # 57 "main.c" 1
	ei
 # 0 "" 2
 #NO_APP
	b	.L15
	.end	main
	.size	main, .-main

	.comm	n,4,4
	.ident	"GCC: (Codescape GNU Tools 2016.05-03 for MIPS MTI Bare Metal) 4.9.2"
