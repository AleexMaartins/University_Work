# Mapa de registos
# p		: $t0
# i		: $t1
# soma		: $t2

	.data
array:	.word	7692, 23, 5, 234
	.eqv	print_int10, 1
	.eqv	SIZE, 4
	.text
	.globl 	main
main:	
	li	$t2, 0		# soma = 0;
	li	$t1, 0		# i = 0
	
while:	bge	$t1, SIZE, endw	# while(i < SIZE)
	
	la	$t0, array	# p = array;
	
	sll	$t3, $t1, 2	# $t3 = i*4;
	addu	$t3, $t0, $t3	# $t3 = &array[i]
	
	lw	$t3, 0($t3)	# $t3 = array[i]
	add	$t2, $t2, $t3	# soma = soma + array[i];
	
	addi	$t1, $t1, 1	# i++;
	j 	while
	
endw:
	move	$a0, $t2
	li	$v0, print_int10
	syscall			# print_int10(soma);
	
	jr	$ra
