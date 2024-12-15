	.data
str1:	.asciiz "AC1"

	.text
	.globl main
main:	
	addiu 	$sp,$sp,-4
	sw	$ra,0($sp)	#prologo
	la	$a0,str1
	jal	strlen		#int aux = strlen(str1)
	move	$a0,$v0
	li 	$v0,1
	syscall
	li	$v0,0		#return 0
	lw	$ra,0($sp)	#epilogo
	addiu	$sp,$sp,4
	jr	$ra
	
strlen: 
	li $v0,0 # len = 0;
while:
	lb $t0,0($a0) # while(*s++ != '\0')
	addiu $a0,$a0,1 #
 	beq $t0,'\0',endw # {
 	addi $v0,$v0,1 # len++;
	j while # }
endw: 
	jr $ra #
