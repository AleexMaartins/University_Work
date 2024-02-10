	.data
	.eqv print_double,3
	.eqv read_double, 7
	.eqv read_int, 5
one_z:	.double 1.0
zero_z:	.double 0.0
pfive:	.double 0.5
	.text
	.globl main
	
main:	

	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	li $v0, read_double
	syscall
	mov.s $f12, $f0
	jal sqrt
	mov.d $f12, $f0
	li $v0, print_double
	syscall
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	jr $ra
	
sqrt:	la $t0, one_z
	l.d $f2, 0($t0) # xn = 1.0 | aux = $f4
	la $t0, zero_z
	l.d $f6, 0($t0)
	la $t0, pfive
	l.d $f8, 0($t0) 
	li $t1, 0 # i = 0
	c.le.d $f12, $f6
	bc1t else
	
do:	mov.d $f4, $f2
	div.d $f10, $f12, $f2
	add.d $f10, $f10, $f2
	mul.d $f2, $f10, $f8
	addi $t1, $t1, 1
	bge $t1, 25, end_do
	c.eq.d $f4, $f2
	bc1f do
	
end_do:	j endif
	
	
else:	mov.d $f2, $f6
endif:	mov.d $f0, $f2
	jr $ra
	