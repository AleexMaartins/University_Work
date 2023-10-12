# Mapa de registos
# num: $t0
# p: $t1
# *p: $t2 (Registo temporário para guardar o valor armazenado na posição de memória p)
 	.data
 	.eqv SIZE,20
 	.eqv read_string,8
 	.eqv print_int10,1
 	
str: 	.space 21 #porque tem size 20 + 1(para o terminador) pq é uma string se fosse int ou char nao era preciso
 	.text
 	.globl main
 	
main: 	la $a0,str		# $a0=&str[0] (endereço da posição 0 do arraey, i.e., endereço inicial do array) 
 	li $a1,SIZE 		# $a1=SIZE
	li $v0,read_string
 	syscall 
 			# read_string(str,SIZE)
 	li $t0,0 		# num=0;
 	la $t1,str		# p = str;
 	
while: lb $t2,0($t1)#
	beq $t2,$0,endw

if: 	blt $t2,'0',endif
	bgt $t2,'9',endif
	addi $t0,$t0,1
		
endif:	addi $t1,$t1,1
 	j while # }
 	
endw:  # print_int10(num);
	li $v0, print_int10
	move $a0,$t0
	syscall
 	jr $ra # termina o programa 