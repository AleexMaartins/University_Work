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
str:	.space 20
	.text
	.globl main
main:	la $a0,... # $a0=&str[0] (endereço da posição
	# 0 do array, i.e., endereço
	# inicial do array)
	li $a1,... # $a1=SIZE
	li $v0,read_string
	syscall # read_string(str,SIZE)
	(...) # num=0; i=0;
while:	# while(str[i] != '\0')
	la $t2,str # $t2 = str ou &str[0]
	addu $t3,... # $t3 = str+i ou &str[i]
	lb $t4,... # $t4 = str[i]
	b?? $t4,'\0',endw # {
if:	b?? $t4,... # if(str[i] >= '0' &&
	b?? $t4,... # str[i] <= '9');
	addi ... # num++;
endif:
	addi ... # i++;
	j ... # }
endw:	(...) # print_int10(num);
	jr $ra # termina o programa