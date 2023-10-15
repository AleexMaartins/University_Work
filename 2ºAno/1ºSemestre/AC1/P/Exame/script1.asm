#Mapa de registos	
#rv 	: $t0
#n 	: $t1	
#sum	: $t2	
#nit	: $t3
#pt	: $t4
#*pt	: $t5

	.data		
list:	.space 32	#8 posiçoes em que cada int ocupa 4 bytes
	.eqv	SIZE,8
	.eqv	read_int, 5
	.eqv	print_int10, 1
	.eqv	print_string, 4
	
str:	.asciiz	"Media invalida!\n"	
	.text	
	.globl main

main:	
	la	$t4,list	#pt=list
	li	$t5,SIZE	#$t5 = SIZE
	li	$t2,0		#sum = 0
	li	$t3,0		#nit = 0
	sll	$t5,$t5,2	#t5=SIZE*4
	
for:	move 
	