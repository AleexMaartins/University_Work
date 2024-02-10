	.data
	.eqv print_int10, 1
str:	.asciiz "2020 e 2024 sao anos bissextos"
	.text
	.globl main
	
main:	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	la $a0, str 
	jal atoi
	move $a0, $v0
	li $v0, print_int10
	syscall
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	jr $ra
	
	
atoi: 	li $v0,0 # res = 0;
while: 	lb $t0,0($a0) # while(*s >= ...)
 	blt $t0, '0', endw #
 	bgt $t0, '9', endw # {
 	
 	li $t2, '0'  # 
 	sub $t1, $t0, $t2
 	addiu $a0, $a0, 1 # *s++
 	
 	mulu $v0,$v0,10 # res = 10 * res;
 	addu $v0, $v0, $t1 # res = 10 * res + digit;
	j while # }
endw: 	jr $ra # termina sub-rotina 
