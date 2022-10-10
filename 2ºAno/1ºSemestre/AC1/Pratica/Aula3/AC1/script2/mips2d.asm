# mapa de registos: $t0 = gray; $t1 = num; $t2 = bin
	.data
	.text
	.globl main
main:
	li $t0, 7		# gray = 0b111
	
	move $t1, $t0		# num = gray
	
	srl $t2, $t1, 4 	# num >> 4
	xor $t1, $t1, $t2	# num xor (num >> 4)
	
	srl $t2, $t1, 2 	# num >> 2
	xor $t1, $t1, $t2	# num xor (num >> 2)
	
	srl $t2, $t1, 1 	# num >> 1
	xor $t2, $t1, $t2	# bin = num xor (num >> 1)