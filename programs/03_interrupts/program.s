
program.elf:     file format elf32-tradlittlemips


Disassembly of section .exceptions:

80000000 <general_exception_vector-0x180>:
	...

80000180 <general_exception_vector>:
80000180:	08000469 	j	800011a4 <general_exception_handler>
80000184:	00000000 	nop
	...

Disassembly of section .eh_frame:

8000018c <__EH_FRAME_BEGIN__>:
8000018c:	00000000 	nop

Disassembly of section .reset:

9fc00000 <start>:
9fc00000:	40804800 	mtc0	zero,c0_count

9fc00004 <init_gpr>:
9fc00004:	3c01dead 	lui	at,0xdead
9fc00008:	3421beef 	ori	at,at,0xbeef
9fc0000c:	401d6002 	mfc0	sp,c0_srsctl
9fc00010:	7fbe1e80 	ext	s8,sp,0x1a,0x4

9fc00014 <next_shadow_set>:
9fc00014:	7fdd4984 	ins	sp,s8,0x6,0x4
9fc00018:	409d6002 	mtc0	sp,c0_srsctl
9fc0001c:	41c10800 	wrpgpr	at,at
9fc00020:	41c11000 	wrpgpr	v0,at
9fc00024:	41c11800 	wrpgpr	v1,at
9fc00028:	41c12000 	wrpgpr	a0,at
9fc0002c:	41c12800 	wrpgpr	a1,at
9fc00030:	41c13000 	wrpgpr	a2,at
9fc00034:	41c13800 	wrpgpr	a3,at
9fc00038:	41c14000 	wrpgpr	t0,at
9fc0003c:	41c14800 	wrpgpr	t1,at
9fc00040:	41c15000 	wrpgpr	t2,at
9fc00044:	41c15800 	wrpgpr	t3,at
9fc00048:	41c16000 	wrpgpr	t4,at
9fc0004c:	41c16800 	wrpgpr	t5,at
9fc00050:	41c17000 	wrpgpr	t6,at
9fc00054:	41c17800 	wrpgpr	t7,at
9fc00058:	41c18000 	wrpgpr	s0,at
9fc0005c:	41c18800 	wrpgpr	s1,at
9fc00060:	41c19000 	wrpgpr	s2,at
9fc00064:	41c19800 	wrpgpr	s3,at
9fc00068:	41c1a000 	wrpgpr	s4,at
9fc0006c:	41c1a800 	wrpgpr	s5,at
9fc00070:	41c1b000 	wrpgpr	s6,at
9fc00074:	41c1b800 	wrpgpr	s7,at
9fc00078:	41c1c000 	wrpgpr	t8,at
9fc0007c:	41c1c800 	wrpgpr	t9,at
9fc00080:	41c1d000 	wrpgpr	k0,at
9fc00084:	41c1d800 	wrpgpr	k1,at
9fc00088:	41c1e000 	wrpgpr	gp,at
9fc0008c:	13c00005 	beqz	s8,9fc000a4 <init_cp0>
9fc00090:	41c1e800 	wrpgpr	sp,at
9fc00094:	41c1f000 	wrpgpr	s8,at
9fc00098:	41c1f800 	wrpgpr	ra,at
9fc0009c:	1000ffdd 	b	9fc00014 <next_shadow_set>
9fc000a0:	23deffff 	addi	s8,s8,-1

9fc000a4 <init_cp0>:
9fc000a4:	3c030040 	lui	v1,0x40
9fc000a8:	34630004 	ori	v1,v1,0x4
9fc000ac:	40836000 	mtc0	v1,c0_status
9fc000b0:	40028001 	mfc0	v0,c0_config1
9fc000b4:	7c4300c0 	ext	v1,v0,0x3,0x1
9fc000b8:	1060001f 	beqz	v1,9fc00138 <done_wr>
9fc000bc:	24030007 	li	v1,7
9fc000c0:	40839800 	mtc0	v1,c0_watchhi
9fc000c4:	40029800 	mfc0	v0,c0_watchhi
9fc000c8:	0441001b 	bgez	v0,9fc00138 <done_wr>
9fc000cc:	40809000 	mtc0	zero,c0_watchlo
9fc000d0:	40839801 	mtc0	v1,c0_watchhi,1
9fc000d4:	40029801 	mfc0	v0,c0_watchhi,1
9fc000d8:	04410017 	bgez	v0,9fc00138 <done_wr>
9fc000dc:	40809001 	mtc0	zero,c0_watchlo,1
9fc000e0:	40839802 	mtc0	v1,c0_watchhi,2
9fc000e4:	40029802 	mfc0	v0,c0_watchhi,2
9fc000e8:	04410013 	bgez	v0,9fc00138 <done_wr>
9fc000ec:	40809002 	mtc0	zero,c0_watchlo,2
9fc000f0:	40839803 	mtc0	v1,c0_watchhi,3
9fc000f4:	40029803 	mfc0	v0,c0_watchhi,3
9fc000f8:	0441000f 	bgez	v0,9fc00138 <done_wr>
9fc000fc:	40809003 	mtc0	zero,c0_watchlo,3
9fc00100:	40839804 	mtc0	v1,c0_watchhi,4
9fc00104:	40029804 	mfc0	v0,c0_watchhi,4
9fc00108:	0441000b 	bgez	v0,9fc00138 <done_wr>
9fc0010c:	40809004 	mtc0	zero,c0_watchlo,4
9fc00110:	40839805 	mtc0	v1,c0_watchhi,5
9fc00114:	40029805 	mfc0	v0,c0_watchhi,5
9fc00118:	04410007 	bgez	v0,9fc00138 <done_wr>
9fc0011c:	40809005 	mtc0	zero,c0_watchlo,5
9fc00120:	40839806 	mtc0	v1,c0_watchhi,6
9fc00124:	40029806 	mfc0	v0,c0_watchhi,6
9fc00128:	04410003 	bgez	v0,9fc00138 <done_wr>
9fc0012c:	40809006 	mtc0	zero,c0_watchlo,6
9fc00130:	40839807 	mtc0	v1,c0_watchhi,7
9fc00134:	40809007 	mtc0	zero,c0_watchlo,7

9fc00138 <done_wr>:
9fc00138:	40806800 	mtc0	zero,c0_cause
9fc0013c:	40805800 	mtc0	zero,c0_compare

9fc00140 <init_tlb>:
9fc00140:	40038000 	mfc0	v1,c0_config
9fc00144:	7c6311c0 	ext	v1,v1,0x7,0x3
9fc00148:	24070001 	li	a3,1
9fc0014c:	1467000e 	bne	v1,a3,9fc00188 <init_icache>
9fc00150:	40028001 	mfc0	v0,c0_config1
9fc00154:	7c432e40 	ext	v1,v0,0x19,0x6
9fc00158:	40801000 	mtc0	zero,c0_entrylo0
9fc0015c:	40801800 	mtc0	zero,c0_entrylo1
9fc00160:	40802800 	mtc0	zero,c0_pagemask
9fc00164:	40803000 	mtc0	zero,c0_wired
9fc00168:	3c048000 	lui	a0,0x8000

9fc0016c <next_tlb_entry>:
9fc0016c:	40830000 	mtc0	v1,c0_index
9fc00170:	40845000 	mtc0	a0,c0_entryhi
9fc00174:	000000c0 	ehb
9fc00178:	42000002 	tlbwi
9fc0017c:	20844000 	addi	a0,a0,16384
9fc00180:	1460fffa 	bnez	v1,9fc0016c <next_tlb_entry>
9fc00184:	2063ffff 	addi	v1,v1,-1

9fc00188 <init_icache>:
9fc00188:	40028001 	mfc0	v0,c0_config1
9fc0018c:	7c4314c0 	ext	v1,v0,0x13,0x3
9fc00190:	10600010 	beqz	v1,9fc001d4 <done_icache>
9fc00194:	00000000 	nop
9fc00198:	24060002 	li	a2,2
9fc0019c:	00661804 	sllv	v1,a2,v1
9fc001a0:	7c441580 	ext	a0,v0,0x16,0x3
9fc001a4:	24060040 	li	a2,64
9fc001a8:	00862004 	sllv	a0,a2,a0
9fc001ac:	7c451400 	ext	a1,v0,0x10,0x3
9fc001b0:	20a50001 	addi	a1,a1,1
9fc001b4:	70852002 	mul	a0,a0,a1
9fc001b8:	3c068000 	lui	a2,0x8000
9fc001bc:	4080e000 	mtc0	zero,c0_taglo
9fc001c0:	00803825 	move	a3,a0

9fc001c4 <next_icache_tag>:
9fc001c4:	bcc80000 	cache	0x8,0(a2)
9fc001c8:	20e7ffff 	addi	a3,a3,-1
9fc001cc:	14e0fffd 	bnez	a3,9fc001c4 <next_icache_tag>
9fc001d0:	00c33020 	add	a2,a2,v1

9fc001d4 <done_icache>:
9fc001d4:	40028000 	mfc0	v0,c0_config
9fc001d8:	24030003 	li	v1,3
9fc001dc:	7c621004 	ins	v0,v1,0x0,0x3
9fc001e0:	40828000 	mtc0	v0,c0_config
9fc001e4:	3c069fc0 	lui	a2,0x9fc0
9fc001e8:	24c601f4 	addiu	a2,a2,500
9fc001ec:	00c00008 	jr	a2
9fc001f0:	000000c0 	ehb

9fc001f4 <init_dcache>:
9fc001f4:	40028001 	mfc0	v0,c0_config1
9fc001f8:	7c431280 	ext	v1,v0,0xa,0x3
9fc001fc:	10600011 	beqz	v1,9fc00244 <done_dcache>
9fc00200:	00000000 	nop
9fc00204:	24060002 	li	a2,2
9fc00208:	00661804 	sllv	v1,a2,v1
9fc0020c:	7c441340 	ext	a0,v0,0xd,0x3
9fc00210:	24060040 	li	a2,64
9fc00214:	00862004 	sllv	a0,a2,a0
9fc00218:	7c4511c0 	ext	a1,v0,0x7,0x3
9fc0021c:	20a50001 	addi	a1,a1,1
9fc00220:	70852002 	mul	a0,a0,a1
9fc00224:	3c068000 	lui	a2,0x8000
9fc00228:	4080e000 	mtc0	zero,c0_taglo
9fc0022c:	4080e002 	mtc0	zero,c0_taglo1
9fc00230:	00803825 	move	a3,a0

9fc00234 <next_dcache_tag>:
9fc00234:	bcc90000 	cache	0x9,0(a2)
9fc00238:	20e7ffff 	addi	a3,a3,-1
9fc0023c:	14e0fffd 	bnez	a3,9fc00234 <next_dcache_tag>
9fc00240:	00c33020 	add	a2,a2,v1

9fc00244 <done_dcache>:
9fc00244:	3c1f9fc0 	lui	ra,0x9fc0
9fc00248:	27ff0274 	addiu	ra,ra,628
9fc0024c:	00002025 	move	a0,zero
9fc00250:	3c028000 	lui	v0,0x8000
9fc00254:	24421270 	addiu	v0,v0,4720
9fc00258:	4082f000 	mtc0	v0,c0_errorepc
9fc0025c:	000000c0 	ehb
9fc00260:	3c1d8004 	lui	sp,0x8004
9fc00264:	27bd0000 	addiu	sp,sp,0
9fc00268:	3c1c8001 	lui	gp,0x8001
9fc0026c:	279c9380 	addiu	gp,gp,-27776
9fc00270:	42000018 	eret

9fc00274 <all_done>:
9fc00274:	1000ffff 	b	9fc00274 <all_done>
9fc00278:	00000000 	nop
9fc0027c:	00000000 	nop

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	800011a4 	lb	zero,4516(zero)
   4:	0000000c 	syscall
   8:	fffffff4 	sdc3	$31,-12(ra)
	...
  14:	00000010 	mfhi	zero
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	80001270 	lb	zero,4720(zero)
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	00000f41 	0xf41
   4:	756e6700 	jalx	5b99c00 <__memory_size+0x5b7a400>
   8:	00070100 	sll	zero,a3,0x4
   c:	03040000 	0x3040000

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	xori	v1,s2,0x4347
   4:	6f432820 	0x6f432820
   8:	63736564 	0x63736564
   c:	20657061 	addi	a1,v1,28769
  10:	20554e47 	addi	s5,v0,20039
  14:	6c6f6f54 	0x6c6f6f54
  18:	30322073 	andi	s2,at,0x2073
  1c:	302e3631 	andi	t6,at,0x3631
  20:	33302d35 	andi	s0,t9,0x2d35
  24:	726f6620 	0x726f6620
  28:	50494d20 	beql	v0,t1,134ac <__memory_size-0xc354>
  2c:	544d2053 	bnel	v0,t5,817c <__memory_size-0x17684>
  30:	61422049 	0x61422049
  34:	4d206572 	0x4d206572
  38:	6c617465 	0x6c617465
  3c:	2e342029 	sltiu	s4,s1,8233
  40:	00322e39 	0x322e39

Disassembly of section .text_ram:

80001000 <deregister_tm_clones>:
80001000:	3c048000 	lui	a0,0x8000
80001004:	3c028000 	lui	v0,0x8000
80001008:	2484139c 	addiu	a0,a0,5020
8000100c:	2442139f 	addiu	v0,v0,5023
80001010:	00441023 	subu	v0,v0,a0
80001014:	2c420007 	sltiu	v0,v0,7
80001018:	14400006 	bnez	v0,80001034 <deregister_tm_clones+0x34>
8000101c:	3c190000 	lui	t9,0x0
80001020:	27390000 	addiu	t9,t9,0
80001024:	13200003 	beqz	t9,80001034 <deregister_tm_clones+0x34>
80001028:	00000000 	nop
8000102c:	03200008 	jr	t9
80001030:	00000000 	nop
80001034:	03e00008 	jr	ra
80001038:	00000000 	nop

8000103c <register_tm_clones>:
8000103c:	3c048000 	lui	a0,0x8000
80001040:	3c028000 	lui	v0,0x8000
80001044:	2484139c 	addiu	a0,a0,5020
80001048:	2442139c 	addiu	v0,v0,5020
8000104c:	00441023 	subu	v0,v0,a0
80001050:	00021083 	sra	v0,v0,0x2
80001054:	00022fc2 	srl	a1,v0,0x1f
80001058:	00a22821 	addu	a1,a1,v0
8000105c:	00052843 	sra	a1,a1,0x1
80001060:	10a00006 	beqz	a1,8000107c <register_tm_clones+0x40>
80001064:	3c190000 	lui	t9,0x0
80001068:	27390000 	addiu	t9,t9,0
8000106c:	13200003 	beqz	t9,8000107c <register_tm_clones+0x40>
80001070:	00000000 	nop
80001074:	03200008 	jr	t9
80001078:	00000000 	nop
8000107c:	03e00008 	jr	ra
80001080:	00000000 	nop

80001084 <__do_global_dtors_aux>:
80001084:	27bdffd8 	addiu	sp,sp,-40
80001088:	afb10018 	sw	s1,24(sp)
8000108c:	3c118000 	lui	s1,0x8000
80001090:	afbf0024 	sw	ra,36(sp)
80001094:	afb30020 	sw	s3,32(sp)
80001098:	afb2001c 	sw	s2,28(sp)
8000109c:	afb00014 	sw	s0,20(sp)
800010a0:	922213a0 	lbu	v0,5024(s1)
800010a4:	14400020 	bnez	v0,80001128 <__do_global_dtors_aux+0xa4>
800010a8:	3c028000 	lui	v0,0x8000
800010ac:	3c108000 	lui	s0,0x8000
800010b0:	24421390 	addiu	v0,v0,5008
800010b4:	26101394 	addiu	s0,s0,5012
800010b8:	3c138000 	lui	s3,0x8000
800010bc:	02028023 	subu	s0,s0,v0
800010c0:	00409025 	move	s2,v0
800010c4:	00108083 	sra	s0,s0,0x2
800010c8:	2610ffff 	addiu	s0,s0,-1
800010cc:	8e6213a4 	lw	v0,5028(s3)
800010d0:	0050182b 	sltu	v1,v0,s0
800010d4:	10600009 	beqz	v1,800010fc <__do_global_dtors_aux+0x78>
800010d8:	24420001 	addiu	v0,v0,1
800010dc:	ae6213a4 	sw	v0,5028(s3)
800010e0:	00021080 	sll	v0,v0,0x2
800010e4:	02421021 	addu	v0,s2,v0
800010e8:	8c420000 	lw	v0,0(v0)
800010ec:	0040f809 	jalr	v0
800010f0:	00000000 	nop
800010f4:	1000fff6 	b	800010d0 <__do_global_dtors_aux+0x4c>
800010f8:	8e6213a4 	lw	v0,5028(s3)
800010fc:	0c000400 	jal	80001000 <deregister_tm_clones>
80001100:	00000000 	nop
80001104:	3c020000 	lui	v0,0x0
80001108:	24420000 	addiu	v0,v0,0
8000110c:	10400005 	beqz	v0,80001124 <__do_global_dtors_aux+0xa0>
80001110:	24020001 	li	v0,1
80001114:	3c048000 	lui	a0,0x8000
80001118:	0c000000 	jal	80000000 <__app_start>
8000111c:	2484018c 	addiu	a0,a0,396
80001120:	24020001 	li	v0,1
80001124:	a22213a0 	sb	v0,5024(s1)
80001128:	8fbf0024 	lw	ra,36(sp)
8000112c:	8fb30020 	lw	s3,32(sp)
80001130:	8fb2001c 	lw	s2,28(sp)
80001134:	8fb10018 	lw	s1,24(sp)
80001138:	8fb00014 	lw	s0,20(sp)
8000113c:	03e00008 	jr	ra
80001140:	27bd0028 	addiu	sp,sp,40

80001144 <frame_dummy>:
80001144:	3c020000 	lui	v0,0x0
80001148:	27bdffe8 	addiu	sp,sp,-24
8000114c:	24420000 	addiu	v0,v0,0
80001150:	10400006 	beqz	v0,8000116c <frame_dummy+0x28>
80001154:	afbf0014 	sw	ra,20(sp)
80001158:	3c048000 	lui	a0,0x8000
8000115c:	3c058000 	lui	a1,0x8000
80001160:	2484018c 	addiu	a0,a0,396
80001164:	0c000000 	jal	80000000 <__app_start>
80001168:	24a513a8 	addiu	a1,a1,5032
8000116c:	3c048000 	lui	a0,0x8000
80001170:	24841398 	addiu	a0,a0,5016
80001174:	8c820000 	lw	v0,0(a0)
80001178:	10400008 	beqz	v0,8000119c <frame_dummy+0x58>
8000117c:	8fbf0014 	lw	ra,20(sp)
80001180:	3c020000 	lui	v0,0x0
80001184:	24420000 	addiu	v0,v0,0
80001188:	10400004 	beqz	v0,8000119c <frame_dummy+0x58>
8000118c:	00000000 	nop
80001190:	0040f809 	jalr	v0
80001194:	00000000 	nop
80001198:	8fbf0014 	lw	ra,20(sp)
8000119c:	0800040f 	j	8000103c <register_tm_clones>
800011a0:	27bd0018 	addiu	sp,sp,24

800011a4 <general_exception_handler>:
800011a4:	401b7000 	mfc0	k1,c0_epc
800011a8:	27bdfff0 	addiu	sp,sp,-16
800011ac:	afbb000c 	sw	k1,12(sp)
800011b0:	401b6000 	mfc0	k1,c0_status
800011b4:	afbb0008 	sw	k1,8(sp)
800011b8:	7c1b2004 	ins	k1,zero,0x0,0x5
800011bc:	409b6000 	mtc0	k1,c0_status
800011c0:	afa30004 	sw	v1,4(sp)
800011c4:	afa20000 	sw	v0,0(sp)
800011c8:	40026800 	mfc0	v0,c0_cause
800011cc:	30430400 	andi	v1,v0,0x400
800011d0:	1460000c 	bnez	v1,80001204 <general_exception_handler+0x60>
800011d4:	30420800 	andi	v0,v0,0x800
800011d8:	10400002 	beqz	v0,800011e4 <general_exception_handler+0x40>
800011dc:	3c020010 	lui	v0,0x10
800011e0:	af82801c 	sw	v0,-32740(gp)
800011e4:	8fa30004 	lw	v1,4(sp)
800011e8:	8fa20000 	lw	v0,0(sp)
800011ec:	8fbb000c 	lw	k1,12(sp)
800011f0:	409b7000 	mtc0	k1,c0_epc
800011f4:	8fbb0008 	lw	k1,8(sp)
800011f8:	27bd0010 	addiu	sp,sp,16
800011fc:	409b6000 	mtc0	k1,c0_status
80001200:	42000018 	eret
80001204:	8fa30004 	lw	v1,4(sp)
80001208:	8fa20000 	lw	v0,0(sp)
8000120c:	8fbb000c 	lw	k1,12(sp)
80001210:	af80801c 	sw	zero,-32740(gp)
80001214:	409b7000 	mtc0	k1,c0_epc
80001218:	8fbb0008 	lw	k1,8(sp)
8000121c:	27bd0010 	addiu	sp,sp,16
80001220:	409b6000 	mtc0	k1,c0_status
80001224:	42000018 	eret

80001228 <__do_global_ctors_aux>:
80001228:	27bdffe0 	addiu	sp,sp,-32
8000122c:	afb00014 	sw	s0,20(sp)
80001230:	3c108000 	lui	s0,0x8000
80001234:	afb10018 	sw	s1,24(sp)
80001238:	2411ffff 	li	s1,-1
8000123c:	26101388 	addiu	s0,s0,5000
80001240:	afbf001c 	sw	ra,28(sp)
80001244:	8e020000 	lw	v0,0(s0)
80001248:	10510005 	beq	v0,s1,80001260 <__do_global_ctors_aux+0x38>
8000124c:	8fbf001c 	lw	ra,28(sp)
80001250:	0040f809 	jalr	v0
80001254:	2610fffc 	addiu	s0,s0,-4
80001258:	1000fffb 	b	80001248 <__do_global_ctors_aux+0x20>
8000125c:	8e020000 	lw	v0,0(s0)
80001260:	8fb10018 	lw	s1,24(sp)
80001264:	8fb00014 	lw	s0,20(sp)
80001268:	03e00008 	jr	ra
8000126c:	27bd0020 	addiu	sp,sp,32

80001270 <main>:
80001270:	3c02bf80 	lui	v0,0xbf80
80001274:	8c420008 	lw	v0,8(v0)
80001278:	30420004 	andi	v0,v0,0x4
8000127c:	10400018 	beqz	v0,800012e0 <main+0x70>
80001280:	00000000 	nop
80001284:	af80801c 	sw	zero,-32740(gp)
80001288:	3c04bf80 	lui	a0,0xbf80
8000128c:	1000000c 	b	800012c0 <main+0x50>
80001290:	3c050010 	lui	a1,0x10
80001294:	af80801c 	sw	zero,-32740(gp)
80001298:	8f83801c 	lw	v1,-32740(gp)
8000129c:	8f82801c 	lw	v0,-32740(gp)
800012a0:	00031a03 	sra	v1,v1,0x8
800012a4:	7c033804 	ins	v1,zero,0x0,0x8
800012a8:	304200ff 	andi	v0,v0,0xff
800012ac:	00621025 	or	v0,v1,v0
800012b0:	ac820010 	sw	v0,16(a0)
800012b4:	8f82801c 	lw	v0,-32740(gp)
800012b8:	24420001 	addiu	v0,v0,1
800012bc:	af82801c 	sw	v0,-32740(gp)
800012c0:	8c82000c 	lw	v0,12(a0)
800012c4:	30430001 	andi	v1,v0,0x1
800012c8:	1460fff2 	bnez	v1,80001294 <main+0x24>
800012cc:	30420002 	andi	v0,v0,0x2
800012d0:	5440fff1 	bnezl	v0,80001298 <main+0x28>
800012d4:	af85801c 	sw	a1,-32740(gp)
800012d8:	1000ffef 	b	80001298 <main+0x28>
800012dc:	00000000 	nop
800012e0:	40026000 	mfc0	v0,c0_status
800012e4:	7c02b584 	ins	v0,zero,0x16,0x1
800012e8:	40826000 	mtc0	v0,c0_status
800012ec:	000000c0 	ehb
800012f0:	40026000 	mfc0	v0,c0_status
800012f4:	3442fc01 	ori	v0,v0,0xfc01
800012f8:	40826000 	mtc0	v0,c0_status
800012fc:	000000c0 	ehb
80001300:	3c04bf80 	lui	a0,0xbf80
80001304:	af80801c 	sw	zero,-32740(gp)
80001308:	8f83801c 	lw	v1,-32740(gp)
8000130c:	8f82801c 	lw	v0,-32740(gp)
80001310:	00031a03 	sra	v1,v1,0x8
80001314:	7c033804 	ins	v1,zero,0x0,0x8
80001318:	304200ff 	andi	v0,v0,0xff
8000131c:	00621025 	or	v0,v1,v0
80001320:	ac820010 	sw	v0,16(a0)
80001324:	41606000 	di
80001328:	8f82801c 	lw	v0,-32740(gp)
8000132c:	24420001 	addiu	v0,v0,1
80001330:	af82801c 	sw	v0,-32740(gp)
80001334:	1000fff4 	b	80001308 <main+0x98>
80001338:	41606020 	ei
8000133c:	00000000 	nop

Disassembly of section .init:

80001340 <_init>:
80001340:	27bdffe0 	addiu	sp,sp,-32
80001344:	afbf0014 	sw	ra,20(sp)
80001348:	0c000451 	jal	80001144 <frame_dummy>
8000134c:	00000000 	nop
80001350:	0c00048a 	jal	80001228 <__do_global_ctors_aux>
80001354:	00000000 	nop

80001358 <init>:
80001358:	8fbf0014 	lw	ra,20(sp)
8000135c:	03e00008 	jr	ra
80001360:	27bd0020 	addiu	sp,sp,32

Disassembly of section .fini:

80001364 <_fini>:
80001364:	27bdffe0 	addiu	sp,sp,-32
80001368:	afbf0014 	sw	ra,20(sp)
8000136c:	0c000421 	jal	80001084 <__do_global_dtors_aux>
80001370:	00000000 	nop

80001374 <fini>:
80001374:	8fbf0014 	lw	ra,20(sp)
80001378:	03e00008 	jr	ra
8000137c:	27bd0020 	addiu	sp,sp,32

Disassembly of section .data:

80001380 <__dso_handle>:
	...

Disassembly of section .ctors:

80001388 <__CTOR_LIST__>:
80001388:	ffffffff 	sdc3	$31,-1(ra)

8000138c <__CTOR_END__>:
8000138c:	00000000 	nop

Disassembly of section .dtors:

80001390 <__DTOR_LIST__>:
80001390:	ffffffff 	sdc3	$31,-1(ra)

80001394 <__DTOR_END__>:
80001394:	00000000 	nop

Disassembly of section .jcr:

80001398 <__JCR_END__>:
80001398:	00000000 	nop

Disassembly of section .sbss:

8000139c <n>:
8000139c:	00000000 	nop

Disassembly of section .bss:

800013a0 <completed.3449>:
800013a0:	00000000 	nop

800013a4 <dtor_idx.3451>:
800013a4:	00000000 	nop

800013a8 <object.3461>:
	...
