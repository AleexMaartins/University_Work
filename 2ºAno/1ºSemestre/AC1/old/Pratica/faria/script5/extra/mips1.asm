# Mapa de Registos:
# lista		: $t0
# i		: $t1
# j		: $t2
	.data
	.eqv	SIZE, 10
str1:	.asciiz	"\nIntroduza um numero: "
str2:	.asciiz	"\nConteudo do array:\n"
str3:	.asciiz	"; "
	.align 	2
lista:	.space	40
	.eqv	print_int10, 1
	.eqv	print_string, 4
	.eqv	read_int, 5
	
	.text
	.globl 	main
main:
	la	$a0, str1		#
	li	$v0, print_string	#
	syscall				# print_string(str1);

	li	$t1, 0			# i = 0;
for:	bge	$t1, SIZE, endf		# for(i = 0; i < SIZE; ...)
	
	la	$t0, lista		# $t0 = &lista[0]
	sll 	$t2, $t1, 2		# 
	addu	$t2, $t2, $t0		# $t2 = &lista[i]
	
	li	$v0, read_int		#
	syscall				#
	sw	$v0, 0($t2)		# lista[i] = read_int();
	
	addi	$t1, $t1, 1		# i++
	j	for

endf:	
	li	$t1, 0			# i = 0;
for2: 	bge	$t1, 9, endf2		# for(i = 0; i < SIZE - 1; ...)
	
	addi	$t2, $t1, 1		# j = i+1; 
for3:	bge	$t2, SIZE, endf3	# 
	
	la	$t0, lista		# $t0 = &lista[0]
	sll 	$t3, $t1, 2		# 
	addu	$t3, $t3, $t0		# $t3 = &lista[i]
	
	sll 	$t4, $t2, 2		# 
	addu	$t4, $t4, $t0		# $t4 = &lista[j]
	
	lw	$t5, 0($t3)		# $t4 = lista[i] 
	lw	$t6, 0($t4)		# $t5 = lista[j]	
	
if:	ble	$t5, $t6, endif		# if(lista[i] > lista[j])
	sw	$t6, 0($t3)		# lista[i] = lista[j]
	sw	$t5, 0($t4)		# lista[j] = aux;

endif:		
	addi	$t2, $t2, 1		# j++
	j	for3
				
endf3:
	addi	$t1, $t1, 1		# i++
	j	for2	
	
	# falta imprimir o array, é copy paste do ex.2			
endf2:		
	jr	$ra
