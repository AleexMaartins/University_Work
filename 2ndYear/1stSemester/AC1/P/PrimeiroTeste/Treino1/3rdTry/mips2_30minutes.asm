#mapa de registos
# i: $t0
# v: $t1
# &(val[0]): $t2

	.eqv SIZE, 8
	.eqv print_string,4
	.eqv print_int10,1
	.eqv print_char,11
	.data

str1:	.asciiz "Result is: "
val:	.word 8,4,15,-1987,327,-9,27,16

	.text
	.globl main
main:
	li $t0,0 # i = 0
do1:	
	#v = val[i]:
	la $t2,val  #&(val[0])
	sll $t9,$t0,2 # $t9 = i*4
	addu $t4,$t2,$t9 # $t4 = &(val[i])
	lw $t1,0($t4) #v = val[i]

	#val[i] = val[i+SIZE/2]
	li $t5,SIZE #$t5 = SIZE
	srl $t5,$t5,1 #$t5 = SIZE/2
	sll $t7,$t5,2 #$t7 = (SIZE/2)*4
	addu $t7,$t4,$t7 #$t7 = &(val[i+SIZE/2])
	
	lw $t6,0($t7) #$t6 = val[i+SIZE/2])
	sw $t6,0($t4)# val[i] = val[i+SIZE/2])
	
	#val[i+SIZE/2]) = v
	sw $t1,0($t7) 	#val[i+SIZE/2]) = v

	#while(++i < (SIZE/2))
	addi $t0,$t0,1 #++1
	blt $t0, $t5,do1
enddo1:
	#print_string("Result is: ")
	li $v0, print_string
	la $a0, str1
	syscall
	
	#i=0
	li $t0,0	 
do2:	
	#print_int10(val[i++])
	la $t4,val
	sll $t9,$t0,2 #i*4
	addu $t4,$t4,$t9 #&val[i]
	
	lw $a0,0($t4)
	li $v0, print_int10	
	syscall

	addi $t0,$t0,1

	#print_char(',')
	li $v0, print_char
	li $a0, ','
	syscall
	
	#while(i < SIZE)
	blt $t0,SIZE,do2
enddo2:
	jr $ra