
	.data
str:	.asciiz	"2020 e 2024 sao anos bissextos"
	.text
	.globl main
main:			#int main (void){
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)	#prologo	
	la	$a0,str
	jal	atoi		#unsigned int val = atoi(str)
	
	move	$a0,$v0
	li	$v0,1
	syscall			#print_int10(val)
	
	li	$v0,0		#return 0;	
	lw	$ra,0($sp)	#epilogo
	addiu	$sp,$sp,4
	jr	$ra	#}
		
	
#########################################################		
# Mapa de registos
# res: $v0
# s: $a0
# *s: $t0
# digit: $t1
# Sub-rotina terminal: não devem ser usados registos $sx

atoi:	li	$v0,0 		# res = 0;
	li	$t9,'0'		# char base = '0'
while:	lb	$t0,0($a0) 	# while(*s >= ...)
	blt	$t0,'0',endwhile	# NOTA : '0' = 0x30
	bgt	$t0,'9',endwhile	# {NOTA : '0' = 0x39
	
	addiu	$a0,$a0,1 	#*s++
	subu	$t1,$t0,$t9 	# digit = *s++ - '0'; 

	mulu	$v0,$v0,10	#10 * res
	addu	$v0,$v0,$t1	# res = 10 * res + digit; 
	
	j 	while		# }
endwhile:	
	jr $ra # termina sub-rotina 