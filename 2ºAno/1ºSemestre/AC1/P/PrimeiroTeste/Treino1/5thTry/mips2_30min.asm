#mapa de registos
#i : $t0
#v : $t1
#&(val[0]) : $t2

	.eqv SIZE,8
	.eqv print_string,4
	.eqv print_int10,1
	.eqv print_char,11
	
	.data
val:	.word 8,4,15,-1987,327,-9,27,16
str1:	.asciiz "Result is: "
	
	.text
	.globl main
main:
	li 	$t0,0 		# i = 0	
do1:	#do
	la 	$t2,val 		# $t2 = &(val[0])
	sll 	$t9,$t0,2 	#$t9 = i*4
	addu 	$t4,$t2,$t9 	# $t4 = &(val[i])
	lw 	$t5,0($t4) 	#$t5 = val[i]
	
	move 	$t1,$t5 		#v = val[i]
	
	li 	$t6,SIZE 	#$t6 = SIZE
	srl 	$t6,$t6,1 	# $t6 = SIZE/2
	sll 	$t7,$t6,2 	# $t7 = (SIZE/2)*4

	addu 	$t7, $t4,$t7 	#$t7 = &(val[i+SIZE/2])
	lw 	$t8,0($t7)  	#$t8 = val[i+SIZE/2]
	
	sw 	$t8,0($t4)	#val[i] = val[i+SIZE/2]
	
	sw 	$t1,0($t7)  	#val[i+SIZE/2] = v

	addi $t0,$t0,1 		#++i
	blt $t0, $t6,do1 		# i < (SIZE/2)
enddo1:
	#print_string str1
	li 	$v0,print_string
	la 	$a0,str1
	syscall
	
	li 	$t0,0		#i = 0
do2:
	la 	$t2,val 		# $t2 = &(val[0])
	sll 	$t9,$t0,2 	#$t9 = i*4
	addu 	$t4,$t2,$t9 	# $t4 = &(val[i])
	
	#print_int10 val[i++]:
	li 	$v0,print_int10
	lw 	$a0,0($t4) 	#$a0 = val[i]
	syscall
	addi 	$t0,$t0,1 #i++	

	#print_char ','
	li 	$v0,print_char
	li 	$a0,','
	syscall
	
	blt 	$t0,SIZE,do2 	#i < SIZE
enddo2:
	jr 	$ra
	
