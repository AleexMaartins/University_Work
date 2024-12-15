#mapa de registos
#i: $t0
#v: $t1
#&(val[0]:$t2

	.eqv SIZE,8
	.eqv print_string,4
	.eqv print_char,11
	.eqv print_int10,1
	.data
	
val:	.word 8,4,15,-1987,327,-9,27,16
str1:	.asciiz "Result is: "
	
	.text
	.globl main
main:
	li $t0,0
do1:	
	#val = val[i]
	la $t2,val 
	sll $t9,$t0,2 #i*4
	addu $t1,$t2,$t9 #  &val[i]
	lw $t7,0($t1) # v = val[i]
	
	#val[i] = val[i+SIZE/2]
	li $t4,SIZE
	srl $t4,$t4,1 # SIZE/2
	sll $t5,$t4,2 # (SIZE/2)*4 
	addu $t3,$t1,$t5 # $t3 = &(val[i+SIZE/2])
	
	lw $t5,0($t3) #$t5 = (val[i+SIZE/2])
	sw $t5,0($t1) # val[i] = (val[i+SIZE/2])
	
	#(val[i+SIZE/2])=v
	sw $t7,0($t3)
	
	addi $t0,$t0,1 #++i
	blt $t0,$t4,do1
enddo1:
	#print string
	li $v0,print_string
	la $a0,str1
	syscall
	
	li $t0,0 # i=0
do2:	
	#print_int10
	la $t2,val
	sll $t9,$t0,2 #i*4
	addu $t1,$t2,$t9 #  &val[i]

	lw $a0,0($t1)
	li $v0,print_int10
	syscall
	
	addi $t0,$t0,1
	
	#print char
	li $v0,print_char
	li $a0,','
	syscall
	
	blt $t0,SIZE,do2
	jr $ra