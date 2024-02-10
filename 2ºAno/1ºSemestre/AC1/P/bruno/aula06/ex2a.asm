# p : $t1
# pultimo: $t2
 	.data
 	.eqv SIZE,3
 	.eqv print_char, 11
 	.eqv print_string, 4
array:	.word str1,str2,str3 
str1: 	.asciiz "Array"
str2: 	.asciiz "de"
str3: 	.asciiz "ponteiros"
 	.text
 	.globl main
main:
 
 	la $t1,array # $t1 = p = &array[0] = array
 	li $t0,SIZE #
 	sll $t0,$t0,2 # $t0 = SIZE * 4 = 12 (cada elemento do array sao 4 bytes)
	addu $t2,$t1,$t0 # $t2 = pultimo = array + SIZE
	
for:	bge $t1,$t2,endfor # while(p < pultimo)
	
	lw $a0, 0($t1)
	
	ori $v0, $0, print_string
	syscall # print_string(*p)
	
	li $a0, '\n'
	ori $v0, $0, print_char
	syscall # print_char('\n')
	
	addi $t1, $t1, 4 
	
	j for

endfor:

	jr $ra