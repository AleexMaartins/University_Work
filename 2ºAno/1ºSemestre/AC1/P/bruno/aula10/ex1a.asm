	
	.data
	.eqv print_float,2
	.eqv read_float, 6
	.eqv read_int, 5
one_z:	.float 1.0
	
	.text
	.globl main
	
main:

	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	
	li $v0, read_float
	syscall
	mov.s $f12, $f0
	li $v0, read_int
	syscall
	move $a0, $v0
	jal xtoy #devolve valor em $f0
	mov.s $f12, $f0
	li $v0, print_float
	syscall
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	jr $ra
	
xtoy:	addiu $sp, $sp, -20
	sw $ra, 0($sp)
	sw $s0, 4($sp) # i
	sw $s1, 8($sp) # y
	s.s $f20, 12($sp) # x
	s.s $f22, 16($sp) # result
	
	mov.s $f20, $f12 # x
	move $s1, $a0 # y
	li $s0, 0 # i = 0
	la $t0, one_z
	l.s $f22, 0($t0) # result = 1.0
	
for_xtoy:	move $a0, $s1
	jal abs
	bge $s0, $v0, endfor_xtoy
	ble $s1, $0, else_xtoy
	mul.s $f22, $f22, $f20
	j endif_xtoy
	
else_xtoy: div.s $f22, $f22, $f20

endif_xtoy: addi $s0, $s0, 1
	  j for_xtoy

endfor_xtoy: mov.s $f0, $f22
	lw $ra, 0($sp)
	lw $s0, 4($sp) # i
	lw $s1, 8($sp) # y
	l.s $f20, 12($sp) # x
	l.s $f22, 16($sp) # result
	addiu $sp, $sp, 20
	jr $ra
	
abs:	bgez $a0, eif_abs
	sub $a0, $0, $a0
	
eif_abs: move $v0, $a0
	 jr $ra