# Mapa de registos
# a: $a0 (ponteiro para float)
# t: $f12 (float)
# n: $a1 (int)
# oldg: $f8
# g: $f6
# s: $f4
# k: $t0
	
		
				
	.data
oldg:	.float -1.0
g:	.float 1.0
s:	.float 0.0
	
	
	.text
	
func3: #devolve float
	
	la $t5, oldg
	la $t6, g
	la $t7, s
	
	l.s $f8, 0($t5) # $f8 = oldg
	l.s $f6, 0($t6) # $f6 = g
	l.s $f4, 0($t7) # f4 = s
	
	li $t0, 0 # k = 0
	
for:	bge $t0, $a1, endfor
	sub.s $f10, $f6, $f8 # $f10 = (g - oldg)
while:	c.le.s  $f10, $f12   #   fazer isto n funfa -> ble $f10, $f12, endw 
	bc1t endw                       
	mov.s $f8, $f6 # oldg = g
	
	sll $t2, $t0, 2 # $t2 = k*4
	addu $t2, $a0, $t2 # $t2 = a[k]
	l.s $f14, 0($t2) 
	
	add.s $f14, $f14, $f6 # $f14 = (a[k] + g)
	div.s $f6, $f14, $f12 # g = (a[k] + g) / t
	j while
endw:
	add.s $f4, $f4, $f6 # s = s + g
	sll $t1, $t0, 2 # $t1 = k*4
	addu $t1, $a0, $t1 # $t1 = a[k]
	s.s $f6, 0($t1) # a[k] = g 

	addi $t0, $t0, 1 # k++
	j for
endfor:
	mtc1 $a1, $f2 # $f2 = n
	cvt.s.w $f2, $f2  # $f2 = (float) n
	div.s $f0, $f4, $f2 # return s / (float) n
	
	jr $ra
	
