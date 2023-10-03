#Mapa de registos:
#val	:$t0	
#n	:$t1		
#min	:$t2	
#max	:$t3

	.data
.eqv	print_string,4
.eqv	read_int,5
.eqv	print_char,11
.eqv	print_int10,1
str1:	.asciiz	"Digite ate 5 inteiros (zero paraterminar): "
str2:	.asciiz	"Maximo/minimo sao: "
	
	.text
	.globl main

main:
	li	$t1,0		#n=0
	ori	$t2,$0,0x7FFFFFFF	#min = 0x7FFFFFFF
	ori	$t3,$0,0x80000000	#max = 0x80000000
	
	la	$a0,str1	#print "Digite ate 5 inteiros (zero paraterminar): "
	li	$v0,print_string	
	syscall	
	
do:
	li	$v0,read_int	#val = read_int()
	syscall
	move	$t0,$v0
	
	j	if
	
	if:
		beqz	$t0,endif
		j	if1
		
		if1:
			bge	$t3,$t0,if2
			move	$t3,$t0
			j 	if2
				
		if2:
			bge	$t0,$t2,endif
			move	$t2,$t0
			j 	endif
	endif:
		addiu	$t1,$t1,1	#n++
		bgt	$t1,5,enddo
		beqz	$t0,enddo
		j 	do
		
enddo:
	la	$a0,str2
	li	$v0,print_string
	syscall
	
	move	$a0,$t3
	li	$v0,print_int10
	syscall	
	
	li	$a0,':'
	li	$v0,print_char
	syscall
	
	move	$a0,$t2
	li	$v0,print_int10
	syscall	

	jr	$ra

	
