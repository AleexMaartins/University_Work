# Mapa de registos
# i: $t0
# v: $t1
# &(val[0]): $t2

	.data
	.eqv SIZE, 8
	.eqv read_int, 5
	.eqv print_int10, 1
	
	.text
	.globl main
main:
	la	$a0, val
	li	$a1, SIZE
	li	$v0, read_int
	syscall				#read_int(val,SIZE)	