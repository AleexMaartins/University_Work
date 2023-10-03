#mapade registos
#t0 = aux
#a0 = c1*	
#a1 = c2*
#str = a0 =>s0
#p1 = s1
#p2 = s2
.data
string: .asciiz "teste"

.text
.globl main

main:
la $a0,string

addiu $sp,$sp,-16
sw $ra,0($sp)
sw $s0,4($sp)
sw $s1,8($sp)
sw $s2,12($sp)
jal strrev
lw $ra,0($sp)
lw $s0,4($sp)
lw $s1,8($sp)
lw $s2,12($sp)
addiu $sp,$sp,16

move $a0,$v0
li $v0,4
syscall

jr $ra

exchange:
lb $t0,0($a0)
lb $t1,0($a0)
sb $t1,0($a1)
sb $t0,0($a1)

jr $ra

strrev:
move $s0,$a0
lb $s1,0($s0)
lb $s2,0($s0)

while1:
beq $s2,'\0' endwhile1
addi $s2,$s2,1
j while1

endwhile1:
addiu $s2,$s2,-1

while2:
ble $s1,$s2,endwhile2


move $a0,$s1
move $a1,$s2
addiu $sp,$sp,-4
sw $sp,0($ra)
jal exchange
lw $ra,0($sp)
addiu $sp,$sp,4
move $s1,$a0
move $s2,$a1

addiu $s1,$s1,1
addiu $s2,$s2,-1
j while2

endwhile2:
move $v0,$s0
jr $ra