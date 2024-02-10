	.data
str1:	.asciiz "\nIntroduza um valor:"
str2:	.asciiz "\n"
	.eqv arr_size, 5
sum:	.double 0.0
	.align 3
array:	.space 40 # 5 doubles (8bytes)
	.text
	.globl main
main:
	
	li $t0, 0 # $t0 = i =0
for:	bge $t0, arr_size, endfor      # for(int i = 0; i< arr_size; i++)
	la $t1, array # $t1 = &array[i]
	sll $t2, $t0, 3 # $t2 = i *8
	addu $t3, $t1, $t2
	
	la $a0, str1
	ori $v0, $0, 4
	syscall # print_string("\nIntroduza um valor:")
	
	ori $v0, $0, 7 
	syscall # $f0 vai ter o double lido
	
	s.d $f0, 0($t3)
	
	addiu $t0, $t0, 1 # i++
	j for
endfor:
	
	la $a0, array
	li $a1, arr_size
	
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal average
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	mov.d $f12, $f0
	ori $v0, $0, 3
	syscall # media
	
	la $a0, str2
	ori $v0, $0, 4
	syscall
	
	la $a0, array
	li $a1, arr_size
	
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal max
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	mov.d $f12, $f0
	ori $v0, $0, 3
	syscall
	
	jr $ra
	
	
############## funct average ##############

average:
	mtc1 $a0, $f2 # $f2 = *array
	move $t1, $a1 # $t1 = n
	
	addi $t2, $t1, -1 # $t2 = n -1
	la $t3, sum
	l.d $f4, 0($t3) # $f4 = sum
	
for2:	blt $t2, 0, endfor2
	sll $t6, $t2, 3 # i * 8
	la $t4, array  # $t4 = &array[i]
	addu $t7, $t4, $t6
	
	l.d $f6, 0($t7)
	
	add.d $f4, $f4, $f6 # sum += array[i]
	
	addi $t2,$t2,-1 # i--
	j for2
endfor2:
	
	mtc1 $t1, $f8
	cvt.d.w $f8, $f8 # $f8 = (double)n
	
	div.d $f0, $f4, $f8 # $f0 = return sum / (double)n; 

	jr $ra
	
############## funct max ##############

max:	move $t0, $a0 # $t0 = *p
	move $t1, $a1 # $t1 = n
	
	sll $t1, $t1, 3 # $t1 = n * 8
	addiu $t1, $t1, -8 # $t1 = (n * 8) -1
	addu $t1, $t1, $t0 # $t1 = *u = p + n - 1
	
	l.d $f2, 0($t0) # $f2 = max = *p
	
	addiu $t0, $t0, 8 # p++
	
for3:	bgt $t0, $t1, endfor3
	l.d $f4, 0($t0) # $f4 = *p
if:	c.le.d $f4, $f2
	bc1t endif
	mov.d $f2, $f4 # max = *p

endif:

	addiu $t0, $t0, 8 # p++
	j for3
endfor3:
	mov.d $f0, $f2

	jr $ra
