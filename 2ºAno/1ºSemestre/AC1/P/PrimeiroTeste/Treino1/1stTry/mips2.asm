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
	li $t0,0 # $t0 = i = 0
do:	
	la $t2, val  # $t1 = &val[0]
	sll $t9,$t0,2 # $t9 = i*4
	
	addu $t3,$t2,$t9 # t1 = val[i]
	lw $t1,0($t3) # v = val[i]
	
	li $t4,SIZE # $t4 = SIZE
	sll $t4,$t4,2 # $t4 = SIZE*4
	srl $t4,$t4,1 # $t4 = (SIZE*4)/2
	addu $t5,$t4,$t3 # $t6 = &val[i+SIZE/2]
	lw $t6,0($t5) 
	sw $t6,0($t3) # val[i] = val[i+SIZE/2]
	
	sw $t1,0($t5) # val[i+SIZE/2} = v
	
	addi $t0,$t0,1# i++
	li $t4, 4 # $t4 = SIZE/2
	blt $t0, $t4,do 
#endwhile
	
	#print_string("Result is:")
	la $a0,str1
	li $v0,print_string
	syscall
	
	li $t0,0 #$t0 = i = 0
	
do2:	
	la $t2,val #$t2 = val
	sll $t9,$t0,2 #i*2
	addu $t3, $t2,$t9 #$t3 = &val[i]
	lw $t6,0($t3) 

	#print_int10
	move $a0,$t6
	li $v0,print_int10
	syscall
	
	addi $t0,$t0,1 # i++

	#print_char(',')
	li $a0,','
	li $v0,print_char
	syscall
	
	blt $t0,SIZE,do2
#endwhile
	jr $ra
