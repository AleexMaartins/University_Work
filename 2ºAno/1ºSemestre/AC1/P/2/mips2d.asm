	.data
	.text
	
	.globl main
main:	#gray = bin ^ (bin >> 1); 
	li $t0,4 	#$t0 = bin = 0100;
	sra $t1,$t0,1 	#$t1 = bin >> 1;
	xor $t2,$t0,$t1 #gray = $t2 = bin ^ (bin >> 1); 
	
	jr $ra