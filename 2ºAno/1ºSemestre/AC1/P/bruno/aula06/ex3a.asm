# i : $t0
# j: $t1
# array[i][j]: $t3


	.data
	.eqv SIZE,3
 	.eqv print_char, 11
 	.eqv print_string, 4
 	.eqv print_int10, 1
array:	.word str1,str2,str3 
str1: 	.asciiz "Array"
str2: 	.asciiz "de"
str3: 	.asciiz "ponteiros"
str4:	.asciiz ": "
str5:	.asciiz "\nString #"
	.text
	.globl main
	
main:
	li $t0, 0   # $t0 = i = 0
	
for:    bge $t0, SIZE, endfor          # for(i=0; i<SIZE; i++)

	la $a0, str5
	ori $v0, $0, print_string
	syscall # print_string(str5)

	move $a0, $t0
	ori $v0, $0, print_int10
	syscall # print_int10( i )
	
	la $a0, str4
	ori $v0, $0, print_string
	syscall # print_string(str4)
	
	li $t1, 0 # $t1 = j = 0

 	la $t3,array # $t3 = &array[0]
 	sll $t2,$t0,2 # $t2 = i*4
 	addu $t3,$t3,$t2 # $t3 = &array[i]
 	lw $t3,0($t3) # $t3 = array[i] = &array[i][0]  (carrega a palavra)
 	addu $t3,$t3,$t1 # $t3 = &array[i][j]
 	
while: 	lb $t3,0($t3) # $t4 = array[i][j]  (carrega o carater)
	beq $t3, '\0', endw  #while(array[i][j] != '\0') percorre o carater de cada string
 	
 	move $a0, $t3
 	ori $v0, $0, print_char
 	syscall #print_char(array[i][j])
 	
 	li $a0, '-'
 	ori $v0, $0, print_char
 	syscall #print_char('-')
 
 	addi $t1, $t1, 1 # j++
 	
 	addu $t3, $t3, $t1
 
endw:
 	
 	
 	addi $t0, $t0, 1 # i++
 	j for
 	
endfor:
  
  	jr $ra