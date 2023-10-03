	.data
 	.text
 	.globl main
main: 
	li $t0,2	 	# instrução virtual (decomposta
 				# em duas instruções nativas)
 	srl $t1,$t0,1 		#
 	xor $t1,$t1,$t0 	#
 	jr $ra 			# fim do programa