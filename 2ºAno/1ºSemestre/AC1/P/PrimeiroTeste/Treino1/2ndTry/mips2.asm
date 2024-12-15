#mapa de registos
#i: $t0
#v: $t1
#&(val[0]): $t2
#&val[i] : $t3

	.eqv print_string,4
	.eqv print_int10,1
	.eqv print_char,11
	.eqv SIZE,8
	.data
		
val:	.word 8,4,15,-1987,327,-9,27,16
str1:	.asciiz "Result is: "
	
	.text
	.globl main
main:
	li $t0,0 # i = 0
do1:	
	# v = val[i]
	la $t2,val # $t2 = &(val[0])
	sll $t9,$t0,2 #$t0 = i*4
	
	addu $t3,$t2,$t9 #val[i]
	lw $t1,0($t3) # v = val[i] 
	
	# val[i] = val[i+SIZE/2]
	li $t4,SIZE
	sll $t4,$t4,2 #SIZE*4
	srl $t4,$t4,1 #(SIZE*4)/2
	addu $t5,$t4,$t3 #val[i+SIZE/2]
	lw $t6,0($t5) # valor de #val[i+SIZE/2]
	sw $t6,0($t3) # val[i] = val[i+SIZE/2]
	
	# val[i+SIZE/2] = v
	sw $t1,0($t5)# val[i+SIZE/2] = v
	
	addi $t0,$t0,1 	#++i
	li $t4,4
	blt $t0,$t4,do1 #	++i <(SIZE/2)
#enddo1:
	#print_string("result is: ")
	li $v0,print_string
	la $a0,str1
	syscall
	
	li $t0,0 # i=0
do2:	

	la $t2,val # $t2 = &(val[0])
	sll $t9,$t0,2 #$t0 = i*4
	addu $t3,$t2,$t9 #val[i]
	lw $a0,0($t3)
	li $v0,print_int10
	syscall #print_int10(val[i])
	
	addi $t0,$t0,1 	#i++
	
	#print_char(',')
	li $v0,print_char
	li $a0,','
	syscall
	
	blt $t0,SIZE,do2
#enddo2
	jr $ra
	
	
	
	
	
	
	
