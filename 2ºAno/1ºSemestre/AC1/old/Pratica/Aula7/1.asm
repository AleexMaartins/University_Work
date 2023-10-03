	.data
str:	.asciiz "Arquitetura de Computadores I"
str1:	.asciiz " has length = "
	.eqv	print_int10, 1
	.eqv	print_string, 4
	.eqv	print_char, 11
	.text
	.globl 	main
main:
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)
	
	li	$a0, '"'
	li	$v0, print_char		# print_char(");
	syscall
	
	la	$a0, str
	li	$v0, print_string	# print_string(str);
	syscall
	
	li	$a0, '"'
	li	$v0, print_char		# print_char(");
	syscall
	
	la	$a0, str1
	li	$v0, print_string
	syscall				# print_string(str1);
		
	la	$a0, str
	jal	strlen
	move	$a0, $v0
	li	$v0, print_int10
	syscall				# print_int10(strlen(str))
	
	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	li	$v0, 0			# return 0
	jr	$ra
	
	
strlen:
	li	$v0, 0			# len = 0
while:
	lb	$t1, 0($a0)		# $t1 = *s
	addiu	$a0, $a0, 1		# s++
	beq	$t1, '\0', endw		# while(*s != '\0')
	
	addi	$v0, $v0, 1		# len++
	
	j	while			#
	
endw:	
	jr	$ra