#mapa de registos
#i:$t0
#v:$t1
#&(val[0]):$t2
#val: $t3
#SIZE: $t4
#SIZE/2: $t5

	.data
	.text
	.globl main
val:	.word 8,4,15,-1987,327,-9,27,16
str1:	.asciiz "Result is: "
	.eqv SIZE,8
	.eqv print_string,4
	.eqv print_int10,1
	.eqv print_char,11
main:	
	li $t0,0	#i=0
	li $t4,SIZE	#SIZE = 8
	srl $t5,$t4,1		#SIZE/2
do:	
	la $t1,val		#v=val
	sll $t9,$t0,2		#i*4
	addu $t1,$t1,$t9 	#val[i]
	lw $t2,0($t1)		#v=val[i]
	#1#
	
	addi $t5,$t5,1		#1 + SIZE/2
	addu $t1,$t1,$t5 	#val[1 + SIZE/2]
	move
	
	
	lw $t1,$t3
enddo:
	
