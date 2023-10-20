#MAPA DE REGISTOS
# unsigned int gray = $t0
# unsigned int bin = $t1
# unsigned int mask = $t2
	
	.data
	
	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_int16, 34
str1:	.asciiz "\nIntroduza um numero: "
str2:	.asciiz "\nValor em codigo Gray: "
str3:	.asciiz "\nValor em binario: "

		
	.text
	.globl 	main
	
main:	
	la $a0, str1		# print_string("Introduza um numero: "); 
	li $v0, print_string	
	syscall
	
	li $v0 , read_int		# gray = read_int(); 
	syscall
	move $t0, $v0
	
	srl $t2,$t0,1			#mask = gray >> 1; dividir por 2
	move $t1,$t0			# bin = gray; 
	
while:	beq $t2,0,endwhile		# while(mask != 0) 

	xor $t1,$t1,$t2			# bin = bin ^ mask; 
	srl $t2,$t2,1			# mask = mask >> 1; 
	j while
	
endwhile:
	la $a0, str2		 	#print_string("Valor em código Gray: "); 
	li $v0, print_string
	syscall
	
	move $a0, $t0			# print_int16(gray); 
	li $v0, print_int16
	syscall
	
	la $a0, str3		 	# print_string("\nValor em binario: ");  
	li $v0, print_string
	syscall
	
	move $a0, $t1			# print_int16(gray); 
	li $v0, print_int16
	syscall

	jr	$ra

