	.data
	.text
	.globl main
main:	li $t0,0xFFFFFFF0 # instru��o virtual (decomposta
	# em duas instru��es nativas)
	sll $t2,$t0,1 #0xFF...E0
	srl $t3,$t0,1 #0x7F...F8
	sra $t4,$t0,1 #xFF...F8
	jr $ra # fim do programa