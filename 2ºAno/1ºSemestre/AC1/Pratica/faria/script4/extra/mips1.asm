# Mapa de Registos
# p	: $t0
# *p	: $t1

	.data
str:	.space 21
str1:	.asciiz "Introduza uma string: "	
	.eqv	read_string, 8
	.eqv	print_string, 4
	.eqv	SIZE, 20
	.text
	.globl 	main
main:
	la	$a0, str1		# 
	li	$v0, print_string	#
	syscall				# print_string("Introduza uma string: ");
	
	la	$a0, str		#
	li	$a1, SIZE		#
	li	$v0, read_string	#
	syscall				# read_string(str, SIZE);
	
	la	$t0, str		# p = str;

while:	lb	$t1, 0($t0)		# *p
	beq	$t1, '\0', endw		# while(*p != '\0')

	li	$t2, 'a'
	subu	$t1, $t1, $t2		#
	addiu	$t1, $t1, 'A'		# *p = *p - 'a' + 'A';
	sb	$t1, 0($t0)		# 
	
	addiu	$t0, $t0, 1		# p++;
	j	while

endw:
	la	$a0, str		#
	li	$v0, print_string	#
	syscall				# print_string(str);
	
	