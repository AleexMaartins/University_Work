	.data
	.text
	.globl main
main:	ori	$t0,$0, 5	#0000 0101
	ori	$t1,$0, 2	#0000 0010
	and	$t2,$t0,$t1	#0000 0000
	or	$t3,$t0,$t1	#0000 0111
	nor	$t4,$t0,$t1	#1111 1000
	xor	$t5,$t0,$t1	#0000 0111
	
	ori	$t6,$0, 0x0F1E	#0000 1111 0001 1110
	nor	$t7,$t6,$0	#1111 0000 1110 0001 = F0E1 (negaçao bit a bit)
	
	#ori	$t6,$0, 0x0614
	#nor	$t7,$t6,$0	
	
	#ori	$t6,$0,	0xE543
	#nor	$t7,$t6,$0	
	
	
	
	jr	$ra
	
	