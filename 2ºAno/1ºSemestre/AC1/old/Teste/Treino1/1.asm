# Mapa de registos
# val: $t0
# n: $t1
# min: $t2
# max: $t3

	.data
str1:	.asciiz "Digite ate 20 inteiros (zero para terminar) : "	
str2:	.asciiz "Maximo/minimo sao: "
	.eqv min 0x7FFFFFFF
	.eqv max 0x80000000
	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_int10, 1	
	.eqv print_char, 11

	.text
	.globl main
	
main:	ori	$t2,$0, min		#substituir min e max pelos
	ori	$t3, $0, max		#  valores de entrada desejados
	
	li 	$t0,0			#n=0; 
	
	la	$a0,str1		#print_string("Digite ate 20 inteiros (zero para terminar) : ")
	li	$v0,print_string	#
	syscall
	
while: 	li	$v0, read_int		# val = read_int();
	syscall				#	
	move	$t0, $v0		#	
	
	if1:	bnez	$t3, if2		#if(val!=0) salta para if2
 		if2:	bgt $t0,$t3,newMax	#if (val>max) salta para newMax
 			j if3
 			newMax: move $t3,$t0	#max = val
 			j if3
 			
 		if3:	bgt $t2,$t0,newMin	#if (min>val) salta para newMin
 			j eif1
 			newMin: move $t2,$t0	#min = val
 			j eif1
 	
 	eif1:	addi 	$t1,$t1,1 	# n++;	
		bgt $t1,19,ewhile	#n>19 salta fora 	(n<20)
		beqz $t0,ewhile		#val = 0 salta fora 	(val != 0)
		j while			# volta para o inicio do while
 	
ewhile:	la	$a0,str2		#print_string("Maximo/minimo são: ")
	li	$v0,print_string
	syscall
	
	move	$a0,$t3			#print_int10(max)
	li	$v0,print_int10
	syscall
	
	li	$a0, ':'		# print_char(' ');
	li	$v0, print_char
	syscall
				
	
	move	$a0,$t2			#print_int10(min)
	li	$v0,print_int10
	syscall		
	
 	jr $ra 			# termina o programa
