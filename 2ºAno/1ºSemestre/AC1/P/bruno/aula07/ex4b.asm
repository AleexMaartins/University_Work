	.data
str1:	.asciiz "Arquitetura de "
str2:	.space 50
str3:	.asciiz "\n"
str4:	.asciiz "Computadores I"
	.eqv print_string, 4
	.text
	.globl main
main:
	la $a0, str2
	la $a1, str1
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal strcpy  # strcpy(str2, str1)
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	la $a0, str2 # ou $v0
	ori $v0, $0, print_string
	syscall #print_string(str2)
	
	la $a0, str3
	ori $v0, $0, print_string
	syscall #print_string("\n")
	
	la $a0, str2 # $a0 dest
	la $a1, str4 # $a1 src
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal strcat  # strcat(str2, "Computadores I")
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	la $a0, str2
	ori $v0, $0, print_string
	syscall #print_string( strcat(str2, "Computadores I") ); 
	
	la $a0, str3
	ori $v0, $0, print_string
	syscall #print_string("\n")
	
	li $a0, 0
	ori $v0, $0, 1
	syscall #return 0
	
	jr $ra
	
################# funcao strcat ###################	
strcat:
	move $t0, $a0 # $t0 = *p = dst
	move $t3, $a1
	
while:	lb $t1, 0($t0)
	beq $t1, '\0', endww
	addiu $t0, $t0, 1 # p++
	j while
endww:
	
	move $a0, $t0
	move $a1, $t3
	
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal strcpy
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra
	
	
########## funcao strcpy #################
strcpy:
	move $v0, $a0  # valor de retorno 
	move $t1, $a1  # &str4
	li $t2, 0 # $t2 = i = 0
	
do:	
	lb $t3, 0($t1)
	sb $t3, 0($a0)
	
	beq $t3, '\0', endw
	addiu $t2, $t2, 1
	addiu $t1, $t1, 1
	addiu $a0, $a0, 1
	j do
endw:
	jr $ra
