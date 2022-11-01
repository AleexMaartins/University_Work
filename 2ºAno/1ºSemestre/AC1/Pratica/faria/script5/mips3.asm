# Mapa de Registos
# i		: $t0
# lista		: $t1
# lista+i	: $t2
# houveTroca	: $t3
# aux		: $t4

	.data
	.eqv	TRUE, 1
	.eqv	FALSE, 0
	.eqv 	SIZE, 10
	.eqv	print_string, 4
	.eqv	read_int, 5
	.eqv	print_int10, 1
str:	.asciiz "\nIntroduza um numero: "
str1:	.asciiz "; "
str2:	.asciiz "\nConteudo do array:\n"
	.align 	2		# garantir que o 1º endereço do array é multiplo de 4
lista:	.space	40
	
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

do:					# do{
	li	$t3, FALSE		# houveTroca = FALSE;
	li	$t0, 0			# i = 0;
for2:	bge	$t0, 9, endf2		# for(i = 0; i < SIZE - 1; ...)
	
	la	$t1, lista		# 
	sll	$t5, $t0, 2		#
	addu	$t5, $t1, $t5		# $t5 = &lista[i]
	
	lw	$t6, 0($t5)		# $t5 = lista[i]
	lw	$t7, 4($t5)		# $t6 = lista[i+1]

if:	ble	$t6, $t7, endif		# if(lista[i] < lista[i+1])
	sw 	$t7, 0($t5)		# lista[i] = lista[i+1];
	sw	$t6, 4($t5)		# lista[i+1] = aux;
	li	$t3, TRUE		# houveTroca = TRUE;

endif:
	addi	$t0, $t0, 1		# i++;
	j	for2			

endf2:
	beq	$t3, TRUE, do		# }while(houveTroca == TRUE);
	
	la	$a0, str2		#
	li	$v0, print_string	#
	syscall				# print_string(str2);
			
	la	$t0, lista		# $t0 = &lista[0]
	
	li	$t2, SIZE		# $t2 = SIZE
	sll	$t2, $t2, 2		# $t2 = SIZE * 4
	addu	$t2, $t2, $t0		# $t2 = lista+SIZE

for3:	bge	$t0, $t2, endf3		# for(p = lista; p < lista + SIZE; ...)
	
	lw	$a0, 0($t0)		#
	li	$v0, print_int10	#
	syscall				# print_int10(*p);
	
	la	$a0, str1		#
	li	$v0, print_string	#
	syscall				# print_string(str1);	
		
	addiu	$t0, $t0, 4		# p++ 
	j	for3
endf3:	
	jr	$ra
	
	jr	$ra
