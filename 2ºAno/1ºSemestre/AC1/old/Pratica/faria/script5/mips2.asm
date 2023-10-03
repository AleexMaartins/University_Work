# Mapa de Registos
# p		: $t0
# *p		: $t1
# lista+Size 	: $t2
	
	.data
str1:	.asciiz "; "
str2:	.asciiz "\nConteudo do array:\n"	
lista:	.word	8, -4, 3, 5, 124, -15, 87, 9, 27, 15
	
	.eqv	print_int10, 1
	.eqv	print_string, 4
	.eqv	SIZE, 10	
	
	.text
	.globl 	main
main:	
	la	$a0, str2		#
	li	$v0, print_string	#
	syscall				# print_string(str2);
			
	la	$t0, lista		# $t0 = &lista[0]
	
	li	$t2, SIZE		# $t2 = SIZE
	sll	$t2, $t2, 2		# $t2 = SIZE * 4
	addu	$t2, $t2, $t0		# $t2 = lista+SIZE

for:	bge	$t0, $t2, endf		# for(p = lista; p < lista + SIZE; ...)
	
	lw	$a0, 0($t0)		#
	li	$v0, print_int10	#
	syscall				# print_int10(*p);
	
	la	$a0, str1		#
	li	$v0, print_string	#
	syscall				# print_string(str1);	
		
	addiu	$t0, $t0, 4		# p++ 
	j	for
endf:	
	jr	$ra	