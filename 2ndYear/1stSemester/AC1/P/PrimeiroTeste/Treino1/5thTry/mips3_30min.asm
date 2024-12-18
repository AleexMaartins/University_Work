#mapa de registos
# n_even : $t0
# n_odd : $t1
# p1 : $t2
# p2 : $t3
#a+N : $t4
	.eqv N,5
	.eqv read_int,5
	.eqv print_int10,1
	
	.data
a_array:		.space 20 # N*4
b_array:		.space 20 # N*4
	
	.text
	.globl main
main:
	li 	$t0,0 # n_even = 0
	li 	$t1,0 # n_odd = 0
	
	#setup for1
	la 	$t2,a_array	#p1=a
	li 	$t4,N		
	sll	$t4,$t4,2	#N*4
	addu 	$t4,$t2,$t4	#a+N
for1:
	bge 	$t2,$t4,endfor1 #p1<(a+N)
	
	#*p1 = read_int
	li 	$v0,read_int
	syscall
	sw 	$v0,0($t2)
	
	addi 	$t2,$t2,4 	#p1++
	j 	for1
endfor1:
	#setup for2
	la 	$t2,a_array	#p1=a
	la 	$t3,b_array	#p2=b
	li 	$t4,N		
	sll	$t4,$t4,2	#N*4
	addu 	$t4,$t2,$t4	#a+N
for2:
	bge 	$t2,$t4,endfor2 #p1<(a+N)
	
	#if(*p1%2)!=0)
	lw 	$t5,0($t2) 	#$t5 = *p1
	rem 	$t6,$t5,2 	# *p1 % 2
	beq 	$t6,0,else
	
	#*p2++ = *p1
	sw 	$t5,0($t3)	#*p2 = *p1
	addi 	$t3,$t3,4 	#p2++
	
	addi 	$t1,$t1,1	#n_odd++
	addi 	$t2,$t2,4	#p1++
	
	j 	for2
else:	
	addi 	$t0,$t0,1	#n_even++
	addi 	$t2,$t2,4	#p1++
	
	j 	for2
endfor2:
	#setup for3
	la 	$t3,b_array	#p2=b	
	sll	$t1,$t1,2	#n_odd*4
	addu 	$t1,$t3,$t1	#b+n_odd
for3:	
	bge 	$t3,$t1,endfor3 #p2<(b+n_odd)
	
	#print_int10 *p2
	li $v0, print_int10
	lw $a0,0($t3) 
	syscall
	
	addi 	$t3,$t3,4 	#p2++
	j 	for3
endfor3:
	jr 	$ra
