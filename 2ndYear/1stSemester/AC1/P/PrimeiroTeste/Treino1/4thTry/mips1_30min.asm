#mapa de registos
#val: $t0
#n: $t1
#min: $t2
#max: $t3

	.eqv print_string,4
	.eqv read_int, 5
	.eqv print_int10, 1
	.eqv print_char, 11	

	.data
str1:	.asciiz "Digite ate 5 inteiros (zero para terminasr):"
str2:	.asciiz "Maximo/minimo sao: "

	.text
	.globl main
main:	
	li $t1,0 # n=0
	li $t2,0x7FFFFFFF # min
	li $t3,0x80000000 # max
	
	#print_string
	li $v0, print_string
	la $a0, str1
	syscall
do:	
	#val = read_int()
	li $v0,read_int
	syscall
	move $t0,$v0
#if1(val!=0)
	beq $t0,0,endif1
	
	#if2 v>max
	ble $t0,$t3,if3
	move $t3,$t0
	
if3:	#if3 v<min
	bge $t0,$t2,endif1
	move $t2,$t0	
	#print_char
	li $v0, print_char
	li $a0, '~'
	syscall
	
endif1:
	addi $t1,$t1,1 # n++
	
	#while((n<20) &&(val!=0))
	bge $t1,5,enddo
	beq $t0,0,enddo
	j do
enddo: 
	#print_string
	li $v0, print_string
	la $a0, str2
	syscall
	
	#print_int10
	li $v0, print_int10
	move $a0, $t3
	syscall
	
	#print_char
	li $v0, print_char
	li $a0, ':'
	syscall
	
	#print_int10
	li $v0, print_int10
	move $a0, $t2
	syscall
	
	jr $ra