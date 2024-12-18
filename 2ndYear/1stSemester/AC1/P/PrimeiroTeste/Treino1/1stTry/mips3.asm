#mapa de registos
# n_even : $t0
# n_odd : $t1
# p1 : $t2
# p2 : $t3
# a+N : $t4
	.eqv SIZE,5 #5 inves de 35 para pedir menos
	.eqv read_int,5
	.eqv print_int10,1
	
	.data
array_a:	.space 20 #SIZE*4
array_b:	.space 20 #SIZE*4

	.text	
	.globl main
main:
	li $t0,0 # n_even = 0
	li $t1,0 # n_odd = 0
	
	#setup for1
	la $t2,array_a # p1 = a
	li $t4,SIZE
	sll $t4,$t4,2 # SIZE*4 
	addu $t4,$t4,$t2 # $t4 = a+N = maximo	
for1:
	bge $t2,$t4,endfor1 #p1<(a+N)
	#read_int()
	li $v0,read_int
	syscall
	sw $v0,0($t2)
	
	addiu $t2,$t2,4	#p1++
	j for1
endfor1:
	#setup for2 
	la $t2,array_a #p1 = a
	la $t3,array_b #p2 = b
	li $t4,SIZE
	sll $t4,$t4,2
	addu $t4,$t4,$t2 # $t4 = a+N = maximo		
for2:
	bge $t2,$t4,endfor2 #p1<(a+N)
	#if(*p1%2 != 0){	
	lw $t5,0($t2) #$t5 = *p1
	rem $t9,$t5,2 #$t9 = *p1%2
	beq $t9,$0,else # *p1%2 != 0
	
	#*p2++ = *p1
	sw $t5,0($t3) 	#*p2 = *p1
	addiu $t3,$t3,4	#*p2++
	addi $t1,$t1,1	#n_even++
	j endif
else:	#}else{
	addi $t0,$t0,1 #n_even++
endif:	#}
	addi $t2,$t2,4 # p1++
	j for2
endfor2:
	#setup for3
	la $t3,array_b #p2 = b
	sll $t1,$t1,2 
	addu $t4,$t3,$t1 # $t4 = b+n_odd
for3:
	bge $t3,$t4,endfor3 #p2<(b+N)
	li $v0,print_int10
	lw $a0,0($t3)
	syscall
	
	addiu $t3,$t3,4 # p2++
	j for3
endfor3:
	jr $ra
