	.data
str1:	.asciiz "Introduza 2 numeros"
str2:	.asciiz "A soma dos dois numeros e': "
	.eqv	read_int,5
	.eqv	print_string,4
	.eqv	print_int,1
	.text
	.globl main
main:	
	la	$a0,str1		#mete string em a0
	ori	$v0,$0,print_string	#v0 = 4
	syscall				#print_string(str1)

	ori	$v0,$0,read_int		
	syscall				#valor lido e' retornado em $v0 
	or	$t0,$v0,$0		#$t0 = read_int()

	ori	$v0,$0,read_int		
	syscall				#valor lido e' retornado em $v0 
	or	$t1,$v0,$0		#$t0 = read_int()
	
	la	$a0,str2		#mete string em a0
	ori	$v0,$0,print_string	#v0 = 4
	syscall				#print_string(str2)
	
	add	$t2,$t0,$t1
	
	move 	$a0,$t2			#mete int em a0
	ori	$v0,$0,print_int	#v0 = 4
	syscall				#print_string(str2)
	
	
	jr	$ra