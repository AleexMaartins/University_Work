#mapa de registos
#ft:$f0
#ct:$f2
	.data
fct1:	.double 0.0, 100.0, 5.0, 9.0, 32.0

	.text

	.globl main
main:				#int main(){
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)	#prologo
	la	$t0,fct1
	l.d	$f2,0($t0)	#ct = 0.0
	l.d	$f4,8($t0)	#dtmp = 100.0

while:	
	l.d	$f4,8($t0)	#dtmp = 100.0
	c.lt.d	$f2,$f4
	bc1f	endw		#while(ct <= 100.0){
	li	$v0,7
	syscall			#	ft = read_double()	
	mov.d	$f12,$f0
	jal	f2c

	mov.d	$f2,$f0		#	ct = f2c(ft)
	mov.d	$f12,$f2
	li	$v0,3
	syscall			# print_double(ct);
	j	while
endw:
	lw	$ra,0($sp)	#epilogo
	addiu	$sp,$sp,4
	li	$v0,0		#return 0
	jr	$ra		#}
	
###############################
f2c:				# double f2c(double ft) 

	la	$t0,fct1		
	l.d	$f2,16($t0)	#fct1 = 5.0
	l.d	$f4,24($t0)	#fct1 = 9.0
	l.d	$f6,32($t0)	#fct1 = 32.0
	sub.d	$f0,$f12,$f6	#fctm = ft - 32.0
	mul.d	$f0,$f0,$f2	#fctm = 5.0 * (ft - 32.0)
	div.d	$f0,$f0,$f4 	#5.0 * (ft - 32.0) / 9.0
	jr	$ra
	


