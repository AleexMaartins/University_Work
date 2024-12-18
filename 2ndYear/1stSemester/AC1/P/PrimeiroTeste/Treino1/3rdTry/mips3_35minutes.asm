#mapa de registos
#n_even:$t0
#n_odd:$t1
#p1:$t2
#p2:$t3
#max: $t4
	.eqv SIZE,5
	.eqv read_int,5
	.eqv print_int10,1
	.data
		
array_a:	.space 20 # SIZE*4
array_b:	.space 20 # SIZE*4
	.text
	.globl main
main:
	li $t0,0 # n_even = 0
	li $t1,0 # n_odd = 0
	
	#for setup
	la $t2,array_a # p1 = a
	li $t4,SIZE
	sll $t4,$t4,2 #SIZE*4
	addu $t4,$t2,$t4 #max = a+N
for1:
	bge $t2,$t4,endfor1 # p1 < (a+N)
	
	#*p1 = read_int()
	li $v0,read_int
	syscall
	sw $v0,0($t2) #*p1 = read_int()
	
	addi $t2,$t2,4 # p1++
	j for1
	
endfor1:	
	#for2 setup
	la $t2,array_a # p1 = a
	la $t3,array_b # p2 = b
	li $t4,SIZE
	sll $t4,$t4,2 #SIZE*4
	addu $t4,$t2,$t4 #max = a+N
for2:
	bge $t2,$t4,endfor2 # p1 < (a+N)
	
	#if((*p1%2) != 0)
	lw $t5,0($t2) # $t5 = *p1
	rem $t6,$t5,2 # $t6 = *p1%2
	beq $t6,0,else 	#if((*p1%2) != 0)
	
	#*p2++ = *p1
	sw $t5,0($t3) #*p2 = *p1
	addi $t3,$t3,4 #*p2++
	
	#n_odd++
	addi $t1,$t1,1
	
	addi $t2,$t2,4 # p1++
	j for2
else:	#else
	addi $t2,$t2,4 # p1++
	j for2
	
endfor2:
	#for3 setup
	la $t3,array_b # p2 = b
	sll $t1,$t1,2 #n_odd*4
	addu $t4,$t3,$t1 #$t4 = b+n_odd
for3:
	bge $t3,$t4,endfor3 # p1 < (a+N)
	
	#print_int10(*p2)
	lw $a0,0($t3)
	li $v0,print_int10
	syscall
	
	addi $t3,$t3,4 #p2++
	j for3
endfor3:
	jr $ra


	
	