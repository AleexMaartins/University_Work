	.data
	# nada a colocar aqui, de momento

	.text
	.globl main
main:	ori $t0,$0,15 # $t0 = x (substituir val_x pelo
				# valor de x pretendido)
	ori $t2,$0,8 # $t2 = 8
	add $t1,$t0,$t0 # $t1 = $t0 + $t0 = x + x = 2 * x
	sub $t1,$t1,$t2 # $t1 = $t1 + $t2 = y = 2 * x - 8
	
	#li	$t0,2
	#mtc1	$t0,$f0
	#mov.s	$f4,$f0
	
	#li	$t2,2
	#mtc1	$t2,$f4
	
	#lui	$t0,0x4000
	#mtc1	$t0,$f4
	
	#li	$v0,5
	#syscall
	#move	$t0,$v0		#val = read_int();
	#mtc1	$t0,$f2		#$f2 = $t0
	#cvt.s.w	$f2,$f2		#float ftmp = (float)val;
	
	#0100 0000 0000 0000 | 0000 0000 0000 0000
	#sinal:0 expoente:1 mantissa:1,000000
	#1,000 *2^1
	#10,0000
	#2.0
	li	$v0,2
	mov.s	$f12,$f2
	syscall 
	
	jr $ra # fim do programa
