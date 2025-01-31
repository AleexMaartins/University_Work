# Mapa de registos:
# soma: $t0
# value: $t1
# i: $t2
	.data
str1:	.asciiz "ac1"
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz "A soma dos positivos é: "
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_int10,1
	.text
	.globl main
main:	li $t0,0			# soma = 0;
	li $t2,0			# i = 0;
for:	bge $t2,5,endfor 	# while(i < 5) {
	# print_string(str1);
	la $a0, str1
	li $v0, print_string
	syscall
	# value=read_int();
	li $v0,read_int
	syscall
	move $t1, $v0
	
	  
if:	ble $t1,0,else # if(value > 0)
	add $t0, $t0,$t1 # soma += value;
	j endif #
else:	# else
	# print_string(str2);
	la $a0, str2
	li $v0, print_string
	syscall
	
endif:	addi $t2,$t2,1 # i++;
	j for 			# }
endfor:
	#print_string(str3);
	la $a0, str3
	li $v0, print_string
	syscall
	# print_int10(soma);
	li $v0, print_int10
	move $a0, $t0
	syscall
	jr $ra 
