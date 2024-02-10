# Mapa de registos:
# f1: $s3
# k: $s0
# av: $s2
# i: $s1
# res: $t0

	.data
	.eqv print_int10, 1
	.eqv print_string, 4
	.eqv SIZE, 15
str:	.asciiz "Invalid argc"
	.text
	
func2:
	addiu $sp, $sp, -20
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $s3, 16($sp)

if:	blt $s0, 2, else # (k >= 2)
	bgt $s0, SIZE, else # (k <= SIZE)
	
	li $s1, 2 # $s1 = i = 2

do:
	sll $t1, $s1, 2 # $t1 = i*4 (4 em 4 porque estamos a percorrer um array de ponteiros)
	addu $t1, $s2, $t1
	lw $a0, 0($t1) # $a0 = av[i]
	
	jal toi # toi(av[i])
	
	sll $t2, $s1, 2 # $t2 = i*4
	addu $t2, $s3, $t2 # $t2 = fl[i]
	sw $v0, 0($t2) # fl[i] = toi(argv[i])
	
	addi $s1, $s1, 1 # i++

while:	blt $s1, $s0, do
	
	move $a0, $s3 
	move $a1, $s0
	jal avz
	move $t0, $v0 # res = avz(fl, k)
	
	move $a0, $t0
	ori $v0, $0, print_int10
	syscall
	
	j endif
else:
	la $a0, str
	ori $v0, $0, print_string
	syscall # print_string("Invalid argc")
	
	li $t0, -1 # $t0 = res = -1

endif:
	move $v0, $t0 # return res
	
	
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	lw $s3, 16($sp)
	addiu $sp, $sp, 20
	
	jr $ra