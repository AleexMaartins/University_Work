# Mapa de registos:
#  $t0 - soma
#  $t1 - value
#  $t2 - i

	.data
str1:	.asciiz	"Introduza um numero: "
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz "A soma dos positivos e': "

	.text
	.globl main
main:
	li	$t0, 0		# soma = 0;
	li	$t2, 0		# i = 0;
for:
	bge	$t2, 5, endf	# for(i = 0; i<5; );
	
	la	$a0, str1
	li	$v0, 4
	syscall			# print_string(str1);
	
	li	$v0, 5		#
	syscall			# 
	move	$t1, $v0	# value = read_int(); 
	
if:	
	ble	$t1, 0, else	# if(value > 0)
	add	$t0, $t1, $t0	# soma = soma + value;
	j	endif		#

else:	
	la	$a0, str2	
	li	$v0, 4
	syscall			# print_string(str1);

endif:
	addi	$t2, $t2, 1	# i++
	j	for		# 

endf:	
	la	$a0, str3
	li	$v0, 4
	syscall			# print_string(str3);	
	
	move	$a0, $t1
	li	$v0, 1
	syscall			# print_int10(soma);

	jr	$ra