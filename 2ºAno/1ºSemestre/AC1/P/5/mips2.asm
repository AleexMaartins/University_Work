# Mapa de registos
# p: $t0
# *p: $t1 (Registo temporário para guardar o valor armazenado em memória)
# lista+Size: $t2
	
	#(...)
	.data
lista:	.word 8,-4, 3, 5, 124, -15, 87, 9, 27, 15 # a diretiva ".word" alinha num endereço múltiplo de 4 
	#(...)
	.eqv print_string,4
	.eqv print_int10,1
	.eqv SIZE,10
str1:	.asciiz "\nConteudo do array:\n"
str2:	.asciiz "; "
	.text
	.globl main
main:	# print_string(str1)
	li $v0, print_string
	la $a0,str1
	syscall 
	
	la $t0,lista # p = lista
	li $t3,SIZE # $t3 = SIZE
	sll $t3,$t3,2 #
	addu $t2,$t0,$t3 # $t2 = lista + SIZE;
	
while:	
	bgeu $t0,$t2,endw # while(p < lista+SIZE) {
	lw $t1,0($t0) # $t1 = *p;
	
	# print_int10( *p );
	li $v0,print_int10
	move $a0, $t1
	syscall
	
	# print_string(; );
	li $v0,print_string
	la $a0, str2
	syscall
	
	addiu	$t0,$t0,4 # p++;
	# }
	j while
	
endw:
	jr $ra # termina o programa 
