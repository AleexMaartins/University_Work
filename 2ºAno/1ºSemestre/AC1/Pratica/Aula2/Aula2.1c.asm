#.eqv val_1 0x0F1E
#.eqv val_1 0x0614
.eqv val_1 0xE543

	.data			
	.text
	.globl main
	
main:	ori	$t0,$0, val_1		#substituir val_1 pelos valores de entrada desejados
	xori	$t5, $t0,0xFFFF 	#$t5 = $t0 ^ 1111 1111 (inverte todos os valores	
	
	jr	$ra			#fim do programa