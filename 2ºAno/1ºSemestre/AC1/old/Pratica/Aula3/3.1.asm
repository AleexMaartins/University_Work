# Mapa de registos:
#  $t0 - soma
#  $t1 - value
#  $t2 - i
	.data
str1:	.asciiz	"Introduza um numero: "
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz "A soma dos positivos é: "
	.eqv print_string,4
	.eqv read_int, 5
	.eqv print_int10,1
	
	.text
	.globl main
main:	li	$t2,0			#i=0;
	li 	$t0,0			#soma = 0;
	
for:	bge	$t2,5,efor		#while( i < 5 )
	la	$a0,str1		#print_string("Introduza um numero: ")
	li	$v0,print_string
	syscall
	li	$v0,read_int		#value = read_int();
	syscall
	move 	$t1,$v0	
	
	ble 	$t1,$0,else		#if(value > 0)
	add 	$t0,$t0,$t1		# soma += value;
	j	eif
	
else:	la	$a0,str2		#else print_string("Valor ignorado. ")
	li	$v0,print_string
	syscall
	
eif:	addi	$t2,$t2,1		# i++
	j 	for			
	
efor:	la	$a0,str3		#print_string("A soma doss positivos é: ")
	li	$v0, print_string
	syscall
	move	$a0,$t0			#print_int10(soma)
	li	$v0,print_int10
	syscall
	
	jr $ra