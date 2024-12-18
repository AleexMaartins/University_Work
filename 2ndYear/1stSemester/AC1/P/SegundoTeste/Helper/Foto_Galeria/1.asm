#mapa de registos
# rv	= $t0
# n	= $t1
# sum	= $t2
# nit	= $t3
# pt	= $t4

	.eqv	SIZE,8
	.eqv	read_int,5
	.eqv	print_int10,1
	.eqv	print_string,4
	
	.data
lista:	.space	32	#SIZE*4= 8*4 = 32	
str1:	.asciiz	"Media invalida!\n"
	.text
	.globl main
main:
	li	$t2,0		#sum = 0
	li	$t3,0		#nit = 0

	# pt = list
	la	$t4,lista		#&list[0]
	li	$t5,SIZE
	sll	$t5,$t5,2	#SIZE*2
	addu	$t5,$t4,$t5	#&list[SIZE]
##
for1:
	#list+SIZE
	bge	$t4,$t5,endfor1
	#*pt = read_int()
	li	$v0,read_int
	syscall
	sw	$v0,0($t4)
	
	addi	$t4,$t4,4	#pt++
	j	for1

endfor1:
##
	li	$t1,0		#n = 0


####
for2:
	bge	$t1,SIZE,endfor2
	la	$t4,lista		#&list[0]
	sll	$t9,$t1,2	#n*2	
	addu	$t5,$t4,$t9	#&list[n]
	lw	$t6,0($t5)	#list[n]
if1:	#if(list[n] >=0)
	bltz	$t6,endif1
#############################
	li	$v0,print_int10
	move	$a0,$t6
	syscall
#############################

	addu	$t2,$t2,$t6	#sum += list[n]	
	addi	$t3,$t3,1	#nit++
endif1:
	addi	$t1,$t1,1	#n++
	j	for2	

endfor2:
####

if2:	#if(nit>0)
	bltz	$t3,else
	li	$v0,print_int10
	div	$a0,$t2,$t3	#sum/nit
	syscall
	li	$t0,0		#rv=0
	
	j	endif2
else:	
	li	$v0,print_string
	la	$a0,str1
	syscall
	li	$t0,-1		#rv=-1
endif2:
	move	$v0,$t0
	jr	$ra


######