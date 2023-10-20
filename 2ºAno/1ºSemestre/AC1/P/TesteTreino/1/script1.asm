#Mapa de registos
#val: $t0
#n: $t1
#min: $t2
#max: $t3

	.data
str1:	.asciiz "Digite ate 20 inteiros (0 para terminar): "
str2:	.asciiz "Maximo/minimo sao: "
	.eqv print_string,4  
	.eqv print_int10,1
	.eqv print_char,11
	
	.text
	.globl main
	
main:	
	li $t1, 0
	li $t2, 0x7FFFFFFF
	li $t3, 0x80000000
	