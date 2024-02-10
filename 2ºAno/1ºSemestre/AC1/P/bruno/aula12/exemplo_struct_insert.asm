	.data
	.align 3
uvw:	.space 160
flt:	.float 3.3
	.text
	.globl main
main:
	li $t0, 2
	
	la $t1, uvw
	li $t2, 40
	mult $t0, $t2
	mflo $t3 # 80
	
	add $t4, $t1, $t3
	
	la $t5, flt
	l.s $f12, 0($t5)
	s.s $f12, 36($t4)
	
	jr $ra
	
	