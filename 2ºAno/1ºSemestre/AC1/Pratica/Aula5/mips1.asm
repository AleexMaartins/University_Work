# Mapa de Registos
# i		: $t0
# lista		: $t1
# lista+i	: $t2

	.data
	.eqv 	SIZE, 5
	.eqv	print_string, 4
	.eqv	read_int, 5
str:	.asciiz	"\nIntroduza um numero: "
	.align 	2		# garantir que o 1º endereço do array é multiplo de 4
lista:	.space	20
	
	.text
	.globl 	main
main:	
	li	$t0, 0			# i = 0;
for:	bge	$t0, SIZE, endf		#
	
	la	$a0, str		#
	li	$v0, print_string	#
	syscall				# print_string(str);
	
	la	$t1, lista		# $t1 = &lista[0]
	
	sll	$t2, $t0, 2		#
	addu	$t2, $t1, $t2		# $t2 = &lista[i]
	
	li	$v0, read_int		#
	syscall				# 				
	sw	$v0, 0($t2)		# lista[i] = read_int();

	addi	$t0, $t0, 1		# i++
	j	for

endf:
	jr	$ra
