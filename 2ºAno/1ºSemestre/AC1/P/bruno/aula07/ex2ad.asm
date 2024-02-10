	.data
	.eqv print_int10, 1
	.eqv print_string, 4
	.eqv read_int, 5
str1:	.asciiz "Size of array : "
str2:	.asciiz "array["
str3:	.asciiz "] = "
str4:	.asciiz "Enter the value to be inserted: "
str5:	.asciiz "Enter the position: "
str6:	.asciiz "\nOriginal array: "
str7:	.asciiz "\nModified array: "
str8:	.asciiz ", "
str9:	.asciiz "\n"
	.align 2
array:	.space 200 # 50 * 4
	.text
	.globl main
main:
	la $a0, str1
	ori $v0, $0, print_string
	syscall # print_string(str1)
	
	ori $v0, $0, read_int
	syscall # array_size = read_int()
	move $t7, $v0 # $t7 = array_size
	li $t0, 0 # $t0 = i = 0
	la $t6, array # $t6 = $array[i]
	
for2:	bge $t0, $t7, endfor2
	la $t6, array #não esquecer 
	sll $t1, $t0, 2 # $t1 = i*4
	addu $t6, $t6, $t1
	
	
	la $a0, str2
	ori $v0, $0, print_string
	syscall # print_string("array[")
	
	move $a0, $t0
	ori $v0, $0, print_int10
	syscall # print_int10(i)
	
	la $a0, str3
	ori $v0, $0, print_string
	syscall # print_string("] = ")
	
	ori $v0, $0, read_int
	syscall
	
	sw $v0, 0($t6) 
	addiu $t0, $t0, 1 # i++
	j for2

endfor2:


	la $a0,str4
	ori $v0, $0, print_string
	syscall # print_string("Enter the value to be inserted: "); 
	
	ori $v0, $0, read_int
	syscall # read_int(); 
	
	move $t6, $v0 # $t6 = insert_value = read_int()
	
	la $a0,str5
	ori $v0, $0, print_string
	syscall # print_string("Enter the position: "); 
	
	ori $v0, $0, read_int
	syscall # read_int(); 
	
	move $t5, $v0 # $t5 = insert_pos = read_int()
	
	
	
	la $a0, str6
	ori $v0, $0, print_string
	syscall # print_string(str6)
	
	la $a0, array
	move $a1, $t7
	
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal print_array
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	
	la $a0, array
	move $a1, $t6
	move $a2, $t5
	move $a3, $t7
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal insert
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	la $a0, str7
	ori $v0, $0, print_string
	syscall # print_string("\nModified array: ");
	
	la $a0, array
	move $t7, $a3
	addi $t7, $t7, 1
	move $a1, $t7
	
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal print_array
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	la $a0, str9
	ori $v0, $0, print_string
	syscall # print("\n")
	
	li $a0, 0
	ori $v0, $0, print_int10
	syscall # return 0
	
	
	jr $ra

############# funct insert ####################

insert:
	move $t0, $a0 # $a0 = *array
	move $t1, $a1 # $a1 = value
	move $t2, $a2 # $a2 = pos
	move $t3, $a3 # $a3 = size
	
if:	ble $t2, $t3, else
	li $v0, 1 #return 1
	j endif
else:
	
	addiu $t4, $t3, -1 # $t4 = i = size -1
for:	blt $t4, $t2, endfor
	sll $t7, $t4, 2
	addu $t6, $t0, $t7
	
	lw $t5, 0($t6) # $t5 = array[i]
	sw $t5, 4($t6) # array[i+1] = array[i]
	
	addiu $t4, $t4, -1 # i--
	j for
endfor:
	sll $t7, $t2, 2 # $t7 = pos*4
	addu $t6, $t0, $t7 # $array{pos]
	
	sw $t1, 0($t6)
	li $v0, 0 #return 0
	
endif:
	jr $ra
	
############# funct print_array ###########

print_array:
	
	move $t0, $a0 # $a0 = *a
	move $t1, $a1 # $a1 = n
	
	sll $t1, $t1, 2 # n * 4
	
	addu $t3, $t0, $t1 # $t3 = *p  = a + n
	
for1:	lw $t2, 0($t0) # $t2 = a
	bge $t0, $t3, endfor1
	
	move $a0, $t2
	ori $v0, $0, 1
	syscall
	
	 la $a0, str8
	 ori $v0, $0, 4
	 syscall  
	 
	 addiu $t0, $t0, 4

	j for1

endfor1:

	jr $ra