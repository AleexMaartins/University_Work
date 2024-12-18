#mapa de registos
#array	= $a0 	=> $s0
#low	= $a1
#i	= $t0 	=> $s1
#high	= $a2 	=> $s2
#npr	= $t1 	=> $s3
#p	= $t2 	=> $s4

	.data
	.text
	
primes:	
	addi	$sp,$sp,-24
	sw	$ra,0($sp)
	sw	$s0,4($sp)	#array
	sw	$s1,8($sp)	#i
	sw	$s2,12($sp)	#high
	sw	$s3,16($sp)	#npr
	sw	$s4,20($sp)	#p
	
	move	$s0,$a0		#array
	addi	$s1,$a1,1	#i = low +1
	move	$s2,$a2		#high
	li	$s3,0		#npr
	move	$s4,$s0		#p
	
for:
	bge	$s1,$s2,endfor
	
	move	$a0,$s1
	jal	checkp		#checkp(i)
if:	bne	$v0,1,endif	#checkp(i) == 1
	
	sw	$s1,0($s0)	#*array = i
	addi	$s0,$s0,4	#array++
	addi	$s3,$s3,1	#npr++
	
endif:
	addi	$s1,$s1,1	#i++
	j	for
endfor:
	sll	$t1,$s3,2	#npr*4
	add	$t1,$s4,$t1	#(p + npr*4)
	sw	$s3,0($t1)	#*(p+npr)=npr
	
	move	$v0,$s3		#return npr
	
	lw	$ra,0($sp)
	lw	$s0,4($sp)	#array
	lw	$s1,8($sp)	#i
	lw	$s2,12($sp)	#high
	lw	$s3,16($sp)	#npr
	lw	$s4,20($sp)	#p
	addi	$sp,$sp,24