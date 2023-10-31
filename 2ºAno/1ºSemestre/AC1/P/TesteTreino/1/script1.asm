#Mapa de registos
#val: $t0
#n: $t1	
#min: $t2
#max: $t3
	
	.data
str1:	.asciiz "Digite ate 20 inteiros (0 para terminar): "
str2:	.asciiz "Maximo/minimo sao: "
	.eqv print_string,4  
	.eqv print_int10,1
	.eqv print_char,11
	.eqv read_int,5
	.text
	.globl main
	
main:	
	li $t1, 0
	li $t2, 0x7FFFFFFF	
	li $t3, 0x80000000
	
	la $a0,str1
	li $v0, print_string
	syscall			#print("Digite ate 20 inteiros (0 para terminar): ")
	
do:	
	li $v0,5
	syscall			
	move $t0,$v0		#val = read_int 
	
	beq $t0,0,endif		#if val!= 0
	
if1:	ble $t0,$t3, if2 	#val > max
	move $t3,$t0
	
if2:	bge $t0,$t2, endif	#val < min
	move $t2,$t0
	
endif:	
	addi $t1,$t1,1		#n++
	bge $t1,5,enddo		#while(n<5 para serem menos ciclos
	beq $t0,0,enddo		#	   && val!=0)
	j do
enddo:	
	
	la $a0,str2
	li $v0, print_string
	syscall
	
	move $a0,$t3
	li $v0,print_int10
	syscall
	
	li $a0,':'
	li $v0, print_char
	syscall

	move $a0,$t2
	li $v0,print_int10
	syscall
	
	jr $ra