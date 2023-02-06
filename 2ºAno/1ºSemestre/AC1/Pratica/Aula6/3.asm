#mapa de registos
# $t0 = i
# $t1 = j
# $t2 = array[i][j]
.data
array: .word str1,str2,str3
string1: .asciiz "\nString #"
string2: .asciiz ": "
str1: .asciiz "Array"
str2: .asciiz "de"
str3: .asciiz "ponteiros"
.eqv SIZE,3
.text
.globl main

main:
li $t0,0

for:
li $t5,SIZE		#$t5 = SIZE = 3
bge $t0,$t5,endfor	

li $v0,4
la $a0,string1
syscall

li $v0,1
move $a0,$t0
syscall

li $v0,4
la $a0,string2
syscall

li $t1,0			#j = 0
sll $t3,$t0,2			#$t3 = i*4

la $t2,array		
add $t3,$t2,$t3		#$t3 = array[i]
lw $t3,0($t3)
while:
add $t4,$t3,$t1		#$t2 = array[i][j]
lb  $a0,0($t4) 		

beq $a0,'\0',endwhile
li  $v0,11
syscall

li $a0,'-'
syscall

addi $t1,$t1,1

j while

endwhile:
addi $t0,$t0,1    
j for

endfor:
jr $ra