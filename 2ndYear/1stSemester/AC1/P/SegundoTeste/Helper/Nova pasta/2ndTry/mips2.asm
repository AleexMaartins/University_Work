#mapa de registos
#array	= $a0
#thd	= $f14
#val	= $f16
#n	= $a1
#i	= $t0	
#aux	= $f2
#sum	= $f4

	.data
sum:	.double	0.0
	.text
proc:
	la	$t0,sum
	l.d	$f4,0($t0)	# sum= 0.0
	
	li	$t0,0		# i= 0	
for:
	bge	$t0,$a1,endfor

	sll	$t0,$t0,3	#i*8
	addu	$t2,$a0,$t0	#&array[i]
	l.d	$f2,0($t2)	#array[i]
	add.d	$f2,$f2,$f16	#aux = array[i] + val;
if:
	c.le.d	$f2,$f14	
	bc1f	else
	
	s.d	$f14,0($t2)
	add.d	$f4,$f4,$f14
	
	j	endif
else:
	s.d	$f2,0($t2)
	add.d	$f4,$f4,$f2
endif:
	addi	$t0,$t0,1	# i++
	j	for
endfor:
	mtc1	$a1,$f6
	cvt.d.w	$f6,$f6
	
	div.d	$f0,$f4,$f6
	jr	$ra