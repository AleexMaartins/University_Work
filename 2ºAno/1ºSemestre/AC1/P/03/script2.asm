
# 	for(i=0; i < 32; i++)
# 	{
# 		bit = value & 0x80000000; // isola bit 31
# 		if(bit != 0)
# 			print_char('1');
# 		else
# 			print_char('0');
# 		value = value << 1; 	// shift left de 1 bit
# 	}
#} 


# Mapa de registos:
# value: $t0
# bit: $t1
# i: $t2
 	.data
str1: 	.asciiz "Introduza um numero: "
str2: 	.asciiz "\nO valor em binário e': "
 	.eqv print_string,4
 	.eqv read_int,5
 	.eqv print_char,11
 	.text
 	.globl main
 	
main: 	la $a0,str1
 	li $v0,print_string # (instrução virtual)
 	syscall # print_string(str1);
 	
 	li	$v0,read_int	# value=read_int();
 	syscall			
 	move	$t1,$v0
 	
 	la	$a0,str2	# print_string("\nO valor em binário e': "); 
 	li	$v0,print_string
 	syscall	
 	
 	li $t2,0 # i = 0
 	
for: 	b?? $t2,...,endfor # while(i < 32) {
 	li $t3,0x80000000 #
 	and $t1,...,... # bit=value & 0x80000000
 	b?? $t1,$0,else # if(bit != 0)
 	
 	(...) # print_char('1');
 	
else: 	# else
 	(...) # print_char('0');
 	
 	# value = value << 1;
 	# i++;
 	j for # }
 	
endfor: #
 	jr $ra # fim do programa