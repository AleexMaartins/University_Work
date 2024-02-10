# Mapa de registos
# f1: $s0
# k: $s1
# av: $s2
# i: $s3
# res: $t0

# variaveis de ciclos tipo um i, variáveis de entrada de um função 
# normalmente têm de ser guardados na stack
# temos de guardar k, i, av[], f1[]
	.data
str:	.asciiz "Invalid argc"
	.eqv SIZE,15
	.eqv p_string, 4
	.eqv p_int10, 1
	.text
	
func2:	addiu $sp, $sp, -20
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $s3, 16($sp)

	move $s0, $a0
	move $s1, $a1
	move $s2, $a2
	move $s3, $a3
	
if:	blt $s1, 2, else
	bgt $s1, SIZE, else
	li $s3, 2 # i = 2
	
do:	sll $t1, $s3, 2 # i * 4 array de ponteiros para CHARS!
	addu $t1, $s2, $t1 # &av[i]
	lw $a0, 0($t1)
	jal toi
	sll $t1, $s3, 2
	add $t1, $s0, $t1
	sw $v0, 0($t1)
	
	addi $s3, $s3, 1 # i++
	
	blt $s3, $s1, do # while(i<k)
	
	move $a0, $s0
	move $a1, $s1
	jal avz
	move $t0, $v0
	
	li $v0, p_int10
	move $a0, $t0
	syscall 
	j endif # n esqueceer
	
else:	li $v0, p_string
	la $a0, str
	syscall
	li $t0, -1 # res = -1
endif:	move $v0, $t0
	
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	lw $s3, 16($sp)
	addiu $sp, $sp, 20

	jr $ra