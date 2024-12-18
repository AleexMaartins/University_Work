# typedef struct
# { 		Alignment 	Size 	Offset
# char smp[10];	1		10 	0
# double av;	8 		8 	10 -> 16  
# int ns; 	4 		4 	24
# char id; 	1 		1 	28
# int sum; 	4 		4 	29 -> 32
# } t_cell; 	8 		36			

#MAPA DE REGISTOS
# tc	= $a0
# size	= $a1	
# res	= $f2
# aux	= $f4
# i	= $t0
#divisor	= $f6

	.eqv	smp,0
	.eqv	av,16
	.eqv	ns,24
	.eqv	id,28
	.eqv	sum,32
	.data
	
res:	.double 0.0
divisor:	.double	3.597
	.text
	
prcells:	
	la	$t0,res	
	l.d	$f2,0($t0)	#res = 0.0;
	
	la	$t0,divisor
	l.d	$f6,0($t0)	#divisor = 3.597;
	
	li	$t0,0		#i = 0
for:	
	bge	$t0,$a1,endfor
	
#aux = (double)tc[i].ns / 3.597;
	mul	$t1,$t0,36	# i * 36
	add	$t2,$a0,$t1	#&tc[i]
	
	lw	$t3,ns($t2)	#tc[i].ns
	
	mtc1 	$t3, $f8
	cvt.d.w	$f8,$f8		#(double)tc[i].ns
	
	div.d	$f4,$f8,$f6 	#aux = (double)tc[i].ns / 3.597;
	add.d	$f2,$f2,$f4	#res = res + aux;
	
	s.d	$f4,av($t2)	#tc[i].av = aux;
	
#tc[i].sum = (int)res;
	cvt.w.d 	$f10,$f2
	mfc1	$t4,$f10
	sw	$t4,sum($t2)
		
	addi	$t0,$t0,1	#i++
	j	for
endfor:	
	mov.d	$f0,$f2
	jr	$ra
	
	