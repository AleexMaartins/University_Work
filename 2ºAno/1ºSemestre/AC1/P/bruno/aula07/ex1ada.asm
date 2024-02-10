
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
	move $t6, $t0 # &array[i]
	addiu $t4, $t3, -1 # $t4 = i = size -1
for:	blt $t4, $t2, endfor
	
	lw $t5, 0($t0) # $t5 = array[i]
	sw $t5, 4($t0) # array[i+1] = array[i]
	
	addiu $t4, $t4, -1 # i--
	j for
endfor:
	addiu $t6, $t6, $t2 # $array{i] + pos
	sw $t1, 0($t6)
	li $v0, 0 #return 0
	
endif:
	jr $ra
	
############# funct print_array ###########

print_array:
	
	move $t0, $a0 # $a0 = *a
	move $t1, $a1 # $a1 = n
	
	lw $t2, 0($t0) # $t2 = a
	
	addiu $t3, $t2, $t1 # $t3 = *p  = a + n
	
for1:	bge $t2, $t3, endfor1
	
	move $a0, $t2
	ori $v0, $0, 1
	syscall
	
	 la $a0, ", "
	 ori $v0, $0, 4
	 syscall  

	j for1

endfor1:

	jr $ra
