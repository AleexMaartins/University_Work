# Mapa de registos
# i: $t0
# v: $t1
# val: $t2
# $val[i] : $t3
# &val[i+SIZE/2]: $t4

	.data						#
	
str1:	.asciiz "Result is: "				#
val:	.word	8, 4, 15, -1987, 327, -9, 27, 16	#
	.eqv 	SIZE, 8					#
	#.eqv	HalfSIZE, 4
	.eqv 	print_string, 4				#
	.eqv	print_int10, 1				#
	.eqv 	print_char, 11				#
	
	.text
	.globl 	main
main:
	li	$t0, 0			#i = 0
	
do:	la 	$t2,val			#t2 = val
	sll	$t3,$t0,2		#i * 4
	addu	$t3,$t3,$t2		#&val[i]	
	lw	$t1,0($t3)		#$t1 = val[i]
	
	
	la 	$t2,val			#t2 = val
	li 	$t4,SIZE		
	srl	$t4,$t4,1		#SIZE /2
	add	$t4,$t4,$t0		#i + SIZE /2
	sll	$t4,$t4,2		#(i + SIZE/2) * 4
	addu	$t4,$t4,$t2		#&val[i + SIZE/2]
	lw	$t5, 0($t4)		#$t5 = val[i + SIZE/2]
	sw	$t5,0($t3)		#val[i] = val[i + SIZE/2]
	
	sw	$t1,0($t4)		#val[i + SIZE/2] = v
	
	addi	$t0,$t0,1 		#i++
	li 	$t4,SIZE		
	srl	$t4,$t4,1		#SIZE /2
	blt	$t0,$t4,do		#while(...)
	la	$a0,str1
	li	$v0,print_string
	syscall
	li	$t0,0			#i=0

do1:	la 	$t2,val			#t2 = val
	sll	$t3,$t0,2		#i * 4
	addu	$t3,$t3,$t2		#&val[i]
	lw	$a0,0($t3)		#$t1 = val
	li	$v0,print_int10
	syscall
	addi	$t0,$t0,1
	li	$a0,','
	li	$v0, print_char
	syscall
	blt	$t0, SIZE,do1
	jr	$ra
