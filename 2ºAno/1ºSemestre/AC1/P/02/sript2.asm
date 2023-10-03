	.data
     	.text
     	.globl main
main:   li $t0, 5      # bin = 2         
         
    	srl $t1,$t0,1    # (bin >> 1)         
    	xor $t4,$t0,$t1  # gray = bin ^ (bin >> 1)         
   
	#sll	$t2,$t0,1 	#muda os valores todos 
	#sll	$t3,$t0,4	#muda 1 casa para esquerda
	#srl	$t4,$t0,4	#muda 1 casa para direita usando 0
	#sra	$t5,$t0,4	#muda 1 casa para direita usando 1
	#sra	$t6,$t0,16	#muda 4 casa para direita usando 1
	jr	$ra
