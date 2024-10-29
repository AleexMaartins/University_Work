# i : $t0
# j: $t1
# array[i][j]: $t3
 #...
	.eqv SIZE,3
	.eqv print_string,4
	.eqv print_int10,1
	.eqv print_char,11

	.data
array:	.word str1,str2,str3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
str4:	.asciiz "\nString #"
str5:	.asciiz ": "	

	.text
	.globl main
main:
	li $t0,0 #i=0
	
	#for(i=0; i < SIZE; i++) 
for:	
	beq $t0,SIZE,endfor
	#print_string( "\nString #" ); 
	la $a0,str4
	li $v0, print_string
	syscall

	#print_int10( i ); 
	move $a0,$t0
	li $v0, print_int10
	syscall
	
	#print_string( ": " ); 
	la $a0,str5
	li $v0, print_string
	syscall
	
	#j =0
	li $t1,0
	
while:  # while(array[i][j] != '\0') 		
	la $t3,array # $t3 = &array[0]
	sll $t2,$t0,2 #
	addu $t3,$t3,$t2 # $t3 = &array[i]
	lw $t3,0($t3) # $t3 = array[i] = &array[i][0]
	addu $t3,$t3,$t1 # $t3 = &array[i][j]
	lb $t3,0($t3) # $t3 = array[i][j] 
	
	beq $t3,'\0', endwhile
	
	#print_char(array[i][j]);
	move $a0,$t3
	li $v0,print_char
	syscall
	
	#print_char('-'); 
	li $a0, '-'
	li $v0, print_char
	syscall
	
	addi $t1,$t1,1
	j while
	
endwhile:
	addi $t0,$t0,1
	j for
endfor:
	jr $ra
