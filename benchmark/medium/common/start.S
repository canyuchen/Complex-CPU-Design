.globl start
.globl global_result
.globl end_loop
.extern _gp 4


start:
	nop
	j real_start

global_result:
	.long 0xffffffff

real_start:
	#la $gp, _gp
	li $sp, 0x4000
	jal main
	sw $zero, global_result

end_loop:
	j end_loop
