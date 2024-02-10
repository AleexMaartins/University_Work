	.data
	.align 2 # 2^2
st_array:	.space 176 # 44 x 4
media:	.float 0.0

strm:	.asciiz "\nMedia:"
nmec: 	.asciiz "Nmec: "
pnome:	.asciiz "Primeiro nome:"
unome:	.asciiz "Ultimo nome:"
nota:	.asciiz "Nota: "

	.eqv MAX_STUDENTS, 4
	
	.text
	.globl main
main:
	
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	
	la $a0, st_array
	li $a1, MAX_STUDENTS
	jal r_data
	
	la $a0, st_array
	li $a1, MAX_STUDENTS
	la $a2, media
	jal max
	
	move $t0, $v0 # $t0 vai ter o valor de retorno que vem de v0
	
	#la $a0, strm
	#li $v0, 4
	#syscall # print_strig(media)
	
	#la $t2, media
	#l.s $f12, 0($t2)
	#li $v0, 2
	#syscall
	
	la $a0, st_array
	jal p_std # print_student(pmax)
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4

	jr $ra
	
	
	
########## funct read_data ##############

r_data:	li $t0, 0 # i = 0
	move $t1, $a1 # $t1 = ns
	move $t7, $a0 
	
r_d_for: bge $t0, $t1, e_f_rd
	li $v0, 4
	la $a0, nmec
	syscall
	
	li $v0, 5
	syscall # st[i].id_number = read_int()
	li $t2, 44
	multu $t2, $t0 # [HI|LO] = 44 * i
	mflo $t3 # LO = 44 * i (i = 0, 1 ,2 ,3)
	add $t4, $t7, $t3
	sw $v0, 0($t4)
	
	
	li $v0, 4
	la $a0, pnome
	syscall
	
	#read_string(st[i].first_name, 17)
	li $a1, 17
	addi $a0, $t4, 4
	li $v0, 8
	syscall
	
	# print_string(Ultimo nome:)
	li $v0, 4
	la $a0, unome
	syscall
	# read_string(st[i].last_name, 14)
	li $a1, 14
	addi $a0, $t4, 22
	li $v0, 8
	syscall
	
	#print_string(Nota: )
	li $v0, 4
	la $a0, nota
	syscall
	li $v0, 6
	syscall
	s.s $f0, 40($t4)
	
	
	
	
	addi $t0, $t0, 1
	j r_d_for
e_f_rd:
	
	jr $ra
	
	
########## funct max ##############


max:

	jr $ra


########## funct print_student ##############

p_std:

	jr $ra