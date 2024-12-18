# mapa de registos
# array	= $s0
# low 	= $a0
# high 	= $s3
# i 	= $s1
# npr 	= $s2
# p 	= $s4
	
	.data
	.text
primes:	
	addi	$sp,$sp,-24
	sw	$ra,0($sp)	
	sw	$s0,4($sp)	#array
	sw	$s1,8($sp)	#i
	sw	$s2,12($sp)	#npr
	sw	$s3,16($sp)	#high
	sw	$s4,20($sp)	#p
	
	move	$s0,$a0		#$s0 = array	
	addi	$s1,$a1,1	#$s1 = i = low +1
	li	$s2,0		#$s2 = npr = 0
	move	$s3,$a2		#$s3 = high
	
	move	$s4,$s0		# p = array

for:
	bge	$s1,$s3,endfor
if:
	move	$a0,$s1		
	jal	checkp		#checkp(i)
	
	bne	$v0,1,endif	#checkp(i) == 1
	
	sw	$s1,0($s0)	#*array = i
	addi	$s0,$s0,4	#array++ 
	addi	$s2,$s2,1	#npr++
endif:	
	addi	$s1,$s1,1	#i++
	j	for
endfor:
	sll	$t0,$s2,2	#npr*4
	add	$t0,$s4,$t0,	#(p + npr*4)
	sw	$s2,0($t0)	#*(p + npr) = npr	

	move	$v0,$s2		#return	npr
		
	lw	$ra,0($sp)	
	lw	$s0,4($sp)	#array
	lw	$s1,8($sp)	#i
	lw	$s2,12($sp)	#npr
	lw	$s3,16($sp)	#high
	lw	$s4,20($sp)	#p
	addi	$sp,$sp,24
	
	jr	$ra
