# Mapa de registos
# num: $t0
# i: $t1
# str: $t2
# str+i: $t3
# str[i]: $t4
	.data
	.eqv SIZE,20
	.eqv read_string,8
	.eqv print_int10,1
str:	.space 21
	.text
	.globl main
	
main:	la 	$a0,str		# $a0=&str[0] (endereço da posição
 				# 0 do array, i.e., endereço
 				# inicial do array)
	li	$a1,SIZE		 # $a1=SIZE
	li 	$v0,read_string
	syscall 		# read_string(str,SIZE)
 	li 	$t0,0		#num=0; 
	li 	$t1,0		#i=0;
	la 	$t2,str
while: 	addu	$t3, $t2, $t1	#str + 1 =&str[i]
	lb	$t4, 0 ($t3)	#str[i]
	beq	$t4,$0, ewhile	# while(str[i] != '\0')
 	blt	$t4,'0',la1	#salta if se str[i] <'0' || str[i] > '9'
 	bgt	$t4,'9',la1
 	addi 	$t0,$t0,1 	# num++;
la1:	addi 	$t1,$t1,1 	# i++;	
 	j	while
ewhile:	move 	$a0,$t0		#print in10(num)

 	jr $ra 			# termina o programa