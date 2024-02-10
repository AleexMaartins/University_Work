# exit_value -> $t7

	.data
str1:	.asciiz "ITED - orievA ed edadisrevinU"
str2: 	.space 31
str3:	.asciiz "\n"
str4:	.asciiz "String too long: "
	.eqv max_size, 30
	.eqv print_string, 4
	.eqv print_int10, 1
	.text
	.globl main
main:	

	la $a0, str1
	
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal strlen
	lw $ra, 0($sp)
	addiu $sp, $sp, 4

if:	bgt $v0, max_size,else
	
	la $a0, str2
	la $a1, str1
	
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal strcpy # strcpy(str2, str1)
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	la $a0, str2 #tmb podiamos meter o $v0
	ori $v0, $0, print_string
	syscall # print_string(str2)
	
	la $a0, str3
	ori $v0, $0, print_string
	syscall #print_string("\n")
	
	la $a0, str2
	addiu $sp,$sp,-16 	# reserva espaço na stack
 	sw $ra,0($sp) 		# guarda endereço de retorno
 	sw $s0,4($sp) 		# guarda valor dos registos
 	sw $s1,8($sp) 		# $s0, $s1 e $s2
 	sw $s2,12($sp) 		#
 	jal strrev		#
 	lw $ra,0($sp) 		# repõe endereço de retorno
 	lw $s0,4($sp) 		# repõe o valor dos registos
 	lw $s1,8($sp) 		# $s0, $s1 e $s2
 	lw $s2,12($sp) 		#
 	addiu $sp,$sp,16 	# liberta espaço da stack
 	
 	move $a0, $v0
 	ori $v0, $0, print_string
 	syscall # print_string(strrev(str2))
 	
 	la $a0, str3
	ori $v0, $0, print_string
	syscall #print_string("\n")
 	
 	li $t7, 0  # $t7 = exit_value = 0
 	
 	j endif

else:   la $a0, str4
	ori $v0, $0, print_string
	syscall #print_string(str4)
	
	la $a0, str1
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal strlen    # strlen(str1)
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	move $a0, $v0
	ori $v0, $0, print_int10
	syscall # print_int10(strlen(str1))
	
	la $a0, str3
	ori $v0, $0, print_string
	syscall #print_string("\n")
	
	li $t7, -1 # exit_value = -1

endif:	
	move $a0, $t7
	ori $v0, $0, print_int10
	syscall #print_int10(exit_value)
	
	jr $ra
	

########## funcao strcpy #################

strcpy:
	move $v0, $a0  # valor de retorno (31 bytes)
	move $t1, $a1  # &str1
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
	
########## funcao strlen #################	
	
strlen: li $t1,0 		# len = 0;
while: 	lb $t0,0($a0) 		# while(*s++ != '\0')
 	addiu $a0,$a0,1 	#
 	beq $t0,'\0',endww 	# {
 	addi $t1,$t1,1 		# len++;
 	j while 		# }
endww:	move $v0,$t1 		# return len;
 	jr $ra	 		
 	
########## funcao strrev #################

strrev: 	
 		move $s0,$a0 		# registo "callee-saved"
 		move $s1,$a0 		# p1 = str
 		move $s2,$a0 		# p2 = str
 					#
 					#
while1:		lb $t2, 0($s2)		#
 		beq $t2, '\0', endw1	# while( *p2 != '\0' ) {
 		addiu $s2, $s2, 1 	# p2++;
 		j while1 		# }
endw1:		addiu $s2, $s2, -1	# p2--;
					#
while2: 	bge $s1, $s2, endw2	#	# while(p1 < p2) {
 		move $a0, $s1		#
 		move $a1, $s2 		#
 		addiu $sp, $sp, -4      #
 		sw $ra, 0($sp)          #
 		jal exchg               # exchange(p1,p2)
 		lw $ra, 0($sp)          #
 		addiu $sp, $sp, 4	#	 
 		addiu $s1, $s1, 1	#
 		addiu $s2, $s2, -1	#
 		j while2 		#
					# }
endw2: 		move $v0,$s0 		# return str
 		jr $ra 			# termina a sub-rotina 
 		
########## funcao exchg #################
exchg:		lb $t0,	0($a0)
		lb $t1, 0($a1)
		sb $t1, 0($a0)
		sb $t0, 0($a1)
		jr $ra
	