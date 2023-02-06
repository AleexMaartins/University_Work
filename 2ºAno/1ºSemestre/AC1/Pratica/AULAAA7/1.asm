#mapa de registos
#$t0 = len
#$t2 = char s => $a0
#$t3 = *s
.data
string: .asciiz  "teste"	
.text

.globl main

main:
la $t2,string
move $a0,$t2

addiu $sp,$sp,-4
sw $ra,0($sp)
jal strlen
lw $ra,0($sp)
addiu $sp,$sp,4

jr $ra


strlen:
li $t0,0

while:
lb $t3,0($a0)
beq $t3,'\0', endwhile
addi $t0,$t0,1
addi $a0,$a0,1
j while

endwhile:
move $v0,$t0
jr $ra
