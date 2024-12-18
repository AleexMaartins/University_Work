#mapa de registos
# i 	= $t0
# aux	= $f8
# sum	= $f10
# n	= $a1
# array	= $a0
# val	= $f16
# thd	= $f14


	
	.data	
sum:	.double	0.0
	.text
proc:	
	
	la	$t0,sum
	l.d	$f10,0($t0)

	li	$t0,0		#i = 0
for:	
	bge	$t0,$a1,endfor	#for(i<n)
	#aux = array[i] + val
	sll	$t1,$t0,3	#$t1 = i*8 porque é um array de doubles
	addu	$t2,$a0,$t1	#$t2 = &array[i]
	l.d	$f20,0($t2)	#$t3 = array[i]
	
	add.d	$f8,$f20,$f16	#aux = array[i] + val
if:	
	c.le.d 	$f8,$f14
	bc1t	else	#if (aux > thd) {
	
	s.d	$f14,0($t2)	#array[i] = thd;
	add.d	$f10,$f10,$f14	#sum += thd;
	
	j	endif
else:
	s.d	$f8,0($t2)	#array[i] = aux;
	add.d	$f10,$f10,$f8	#sum += aux;
endif:	
	addi	$t0,$t0,1	#i++
	j	for
endfor:
	mtc1	$a1,$f16		# n para $f22 (register de float)
	cvt.d.s	$f16,$f16	# converter n para double
	
	div.d	$f0,$f10,$f16	#return sum/(double)n

	jr	$ra
