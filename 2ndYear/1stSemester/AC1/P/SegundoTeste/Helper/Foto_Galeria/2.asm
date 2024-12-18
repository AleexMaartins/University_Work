# MAPA DE REGISTOS
# f1 =	$s0
# k =	$s1
# av =	$s2
# i =	$s3
# res =	$t0

	.eqv	SIZE,		15
	.eqv	print_string,	4
	.eqv	print_int10,	1

	.data
str:	.asciiz	"Invalid argc"
	
	.text
	.globl	func2
func2:	
	addiu	$sp,$sp,-20
	sw	$ra,0($sp)
	sw	$s0,4($sp)	# f1 
	sw	$s1,8($sp)	# k 
	sw	$s2,12($sp)	# av 
	sw	$s3,16($sp)	# i 
		
	move	$s0,$a0
	move	$s1,$a1
	move	$s2,$a2
	move	$s3,$a3
	
	li	$t4,-1			# int res = -1
	
if:			#if((k>=2) && (k<=SIZE))
	blt	$s1,2,else	# if(k>=2)jj
	bgt	$s1,SIZE,endif	# if(k<=SIZE)
	li	$s3,2		# i = 2
do:				#do{

	sll	$t1,$s3,2	#i*4
	addu	$t1,$s2,$t1	#&av[i]
	lw	$a0,0($t1)
	# f1[i] = toi(av[i]) !!!!!!!!!!!!!!!!!!!!!!!!
	jal	toi
	sll	$t1,$s3,2
	add	$t1,$s0,$t1
	sw	$v0,0($t1)
				
	addi	$s3,$s3,4		# i++
	
while:	blt	$s3,$s1,do	#}while(i<k)

	move	$a0,$s0
	move	$a1,$s1
	jal	avz
	# res = avz(f1,k) !!!!!!!!!!!!!!!!!!!!!!!!
	move	$t0,$v0
	
	li	$v0,print_int10
	move	$a0, $t0
	syscall			#print_int10(res)

	j	endif
else:	
	li	$v0,print_string
	la	$a0, str
	syscall			#print_string("Invalid argc")
	
endif:
	move	$v0,$t0		#return res
	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	lw	$s3,16($sp)
	addiu	$sp,$sp,20
	
	jr	$ra