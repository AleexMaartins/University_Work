#Mapa de registos
#val: $t0
#n: $t1
#min: $t2
#max: $t3
#******************************************
	#14:30 14:50
	.eqv print_string,4
	.eqv print_int10,1
	.eqv print_char,11
	.eqv read_int,5
	
	.data
	
str1:	.asciiz "Digite ate 5 inteiros (zero para terminar):"
str2:	.asciiz "Maximo/minimo sao: "
	
	.text
	.globl main
main:
	li $t1,0
#	li $t2,0x7FFFFFFF
#	li $t3,0x80000000
	li $t2,5
	li $t3,9
	
	#print string(str1)
	li $v0,print_string
	la $a0,str1
	syscall

	#15:00
do:	
	#val = read_int()
	li $v0,read_int
	syscall
	move $t0,$v0

	#if1
	beq $t0,0,endif1	#if (val!=0)

		#if2
	ble $t0,$t3,endif2
	move $t3,$t0 # max = val

endif2:
		#if3
	bge $t0,$t2,endif1
	move $t2,$t0
	
endif1:
	addi $t1,$t1,1 #n++
	
	#while ((n<5) && (val!=0))
	bge $t1,5,enddo
	beq $t0,0,enddo
	j do
enddo:
	#print string(str2)
	li $v0, print_string
	la $a0,str2
	syscall
	
	#print int(max)
	li $v0, print_int10
	move $a0,$t3
	syscall
	
	#print char(str2)
	li $v0, print_char
	li $a0,':'
	syscall
	
	#print int(min)
	li $v0, print_int10
	move $a0,$t2
	syscall
	
	jr $ra