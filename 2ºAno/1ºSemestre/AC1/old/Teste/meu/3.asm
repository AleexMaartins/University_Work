#Mapa de registos
#->(passa para)
#$t0 = n_even
#$t1 = n_odd
#$t2 = a = p1 
#$t3 = b = p2  
#$t4 = N	->	 Nx4
#$t5 = a + N
#$t6 = p1*
#$t7 = p2*
	.data
	
	.eqv	N,5
	.eqv	Nx4,20
	.eqv	read_int,5
	.eqv	print_int10,1
a:	.space 20
b:	.space 20

	.text
	.globl
	
main:	
	li	$t0,0		#n_even = 0
	li	$t1,0		#n_odd = 0
	
	la	$t2,a		#p1 = a
	li	$t4,N	
	sll	$t4,$t4,2	#Nx4	
	addu	$t4,$t2,$t4	#a+N

for1:
	bge	$t2,$t4,for2
	li	$v0, read_int
	syscall
	sw	$v0,0($t2)	#*p1 =  read_int
	
	addi
	
for2:
		
		
		
		.data
.eqv		read_int,5


		.text
		.globl
		
main:		
		
	
