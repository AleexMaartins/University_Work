#mapa de registos
#res = $t0
#i = $t1
#mdor = $t2
#mdo = $t3

	.data
str1:	.asciiz "Introduza dois numeros: "
	
	.eqv	read_int,5
	.eqv 	print_string,4
	.eqv	print_int10,1
	.text
	.globl main
	
main:
	li	$t0,0
	li	$t1,0
	
	li $a0,
	
