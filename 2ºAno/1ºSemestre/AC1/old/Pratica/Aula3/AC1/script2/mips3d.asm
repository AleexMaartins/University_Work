# Mapa de Registos: a = $t0; b = $t1
	
	.data
str1:	.asciiz	"Introduza 2 numeros\n"
str2:	.asciiz "A soma dos dois numeros e': "
	.eqv	print_string, 4
	.eqv	read_int, 5
	.eqv 	print_int10, 1
	
	.text
	.globl main
main:
	la	$a0, str1
	ori	$v0, $0, print_string
	syscall				# print_string(str1);
	
	ori	$v0, $0, read_int
	syscall
	or	$t0, $v0, $0		# a = read_int();
	
	ori	$v0, $0, read_int
	syscall
	or	$t1, $v0, $0		# b = read_int();
	
	la	$a0, str2
	ori	$v0, $0, print_string
	syscall				# print_string(str2);
	
	add	$a0, $t1, $t0
	ori	$v0, $0, print_int10
	syscall				# print_int10(a + b);
	
	jr	$ra