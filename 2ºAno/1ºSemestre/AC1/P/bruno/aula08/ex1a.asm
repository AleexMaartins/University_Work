# Mapa de registos
# res: $v0
# s: $a0
# *s: $t0
# digit: $t1
# Sub-rotina terminal: não devem ser usados registos $sx
atoi: 	li $v0,0 # res = 0;
while:  lb $t0,0($a0) # while(*s >= ...)
 	blt $t0, '0', endw #
 	bgt $t0, '9', endw # {
 	
 	li $t2, '0'  # 
 	sub $t1, $t0, $t2
 	addiu $a0, $a0, 1 # *s++
 	
 	mulu $v0,$v0,10 # res = 10 * res;
 	addu $v0, $v0, $t1 # res = 10 * res + digit;
	j while # }
endw:   jr $ra
