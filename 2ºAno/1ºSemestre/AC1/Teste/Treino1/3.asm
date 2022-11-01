# Mapa de registos
# n_even: $t0
# n_odd: $t1
# p1: $t2
# p2 : $t3
# a + N: $t4
# a : $t5
# *p1 : $t6
# *p1%2 : $t7
# b+n_odd : $t8

.eqv	N,5
.eqv	Nx4,20
.eqv	print_int10, 1
.eqv	read_int, 5

	.data
a: 	.space	Nx4
b:	.space 	Nx4
	.text
	.globl main

main:	
	
	la	$t2,a	#p1 = a
	li	$t4,N		
	sll	$t4,$t4,2
	addu	$t4,$t4,$t2
for0:
	bge	$t2,$t4,efor0
	li	$v0,read_int
	syscall
	sw	$v0,0($t2)	#*p1 = read_int
	addiu	$t2,$t2,4	#p1++
	j	for0
	
efor0:
	la	$t2,a	#p1 = a
	la	$t3,b	#p2 = b	
		
	
for1:
	li	$t4,N
	sll	$t4,$t4,2
	la	$t5,a
	addu	$t4,$t4,$t5	#a + N
	bge	$t2,$t4,efor1
	
	lw	$t6,0($t2)	#*p1
	rem	$t7, $t6,1	#*p1%2
	beq	$t7, $0,else	#*p1%2
	sw	$t6,0($t3)	#*p2 = *p1
	addiu	$t3,$t3,4	#p2++
	addi	$t1,$t1,1	#n_odd+	
		
	j eif
else:
	addi	$t0,$t0,1	#n_even ++
eif:	
	addiu	$t2,$t2,4	#p1++
	j 	for1
		
efor1:	
	la	$t3,b		#p2 = b
	move	$t8,$t1		#$t8 = n_odd	
	sll	$t8,$t8,2	#n_odd * 4
	addu	$t8,$t8,$t3	#
for2:
	bge	$t3,$t8,efor2
	lw	$a0,0($t3)
	li	$v0,print_int10
	syscall
	
	addiu	$t3,$t3,4	#p2++
	j 	for2
	
efor2:	
	jr	$ra
		
