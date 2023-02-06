#Mapa de registos
#$t0 = i
#$1 = array[i]

.data
.eqv SIZE,3
.eqv print_string,4
.eqv print_char,11
str1: .asciiz "Array" 
str2: .asciiz "de"
str3: .asciiz "ponteiros"
.align 2 
array: .word str1,str2,str3


.text
.globl main

main:
li $t0,0

for:
bge $t0,SIZE,endfor
la $t1,array
sll $t2,$t0,2           #$t2 = i*4
add $t1,$t1,$t2		#array[i]

lw	$a0,0($t1) 		
li	$v0, print_string	
syscall	

li $a0, '\n'
li $v0, print_char
syscall 

addi $t0,$t0,1
j for

endfor:
jr 	$ra
