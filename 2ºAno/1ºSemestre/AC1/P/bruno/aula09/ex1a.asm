	
	.data
const:	.float 2.59375
	.eqv read_int, 5
	.eqv print_float, 2
	
	.text
	.globl main
	
main:	mtc1 $0, $f4 
	cvt.s.w $f4, $f4

	
do:	li $v0, read_int
	syscall 
	mtc1 $v0, $f0 #escreve o valor de v0 em f0
	cvt.s.w $f0, $f0
	
	la $t0, const
	l.s $f2, 0($t0)
	
	mul.s $f12, $f0, $f2
	li $v0, print_float
	syscall
	
	c.eq.s $f12, $f4
	bc1f do
	
	jr $ra

