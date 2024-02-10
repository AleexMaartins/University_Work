#mapa de registos
#a : $a0
#t : $f12
#n : $a1
#oldg : $f8
#g : $f6
#s : $f4
#k :  $t0

	.data
oldg: 	.float -1.0
g:	.float 1.0
s: 	.float 0.0

	.text

func3:	
	la $t5, oldg
	la $t6, g
	la $t7, s
	
	l.s $f8, 0($t5) # $f8 = oldg
	l.s $f6, 0($t6) # $f6 = g
	l.s $f4, 0($t7) # f4 = s

	li $t0,0
	for:	bge $t0,$a1,return
		while: 
		sub.s $f10,$f6,$f8 #$f10 = g - oldg
		c.lt.s $f10,$f12

	return:
	
	