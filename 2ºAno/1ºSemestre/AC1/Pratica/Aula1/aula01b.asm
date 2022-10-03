	.data
		# nada a colocar aqui, de momento
	.text
	.globl main
main:	ori	$v0,$0,5
	syscall		#Read_int()
	
	or	$a0,$v0,$0
	
	ori	$v0,$0, 1
	syscall
	
	jr 	$ra		# fim do programa 