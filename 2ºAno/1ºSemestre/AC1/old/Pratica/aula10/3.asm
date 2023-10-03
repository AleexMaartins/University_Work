#mapa de registos
#t0 = i
#t1 = result
#t2 = val
#f12 = floatx
#a0 = inty            val é preciso mudar esta merda
.data
result: .float 1.0

.text
.globl main

main:
li $a0, 4 #int y
addiu $sp,$sp,-12
sw $ra,0($sp)
sw $f12,4($sp)
sw $s0,8($sp)
jal xtoy
lw $ra,0($sp)
lw $f12,4($sp)
lw $s0,8($sp)
addiu $sp,$sp,12

xtoy:
li $t0,0
l.s $t1,result


addiu $sp,$sp,-4
sw $ra,0($sp)
jal absx
lw $ra,0($sp)
addiu $sp,$sp,4
move $t2,$v0

for:
bge $t0,$t2, endfor ##

if:
blez y, else
mul.s $t1,$t1,$f12 
addi $t0,$t0,1
j for

else:
div.s $t1,$t1,$f12 
addi $t0,$t0,1
j for

endfor:
move $v0, $t1

jr $ra


absx:
bgez $a0,return
neg.s $a0,$a0
return:
move $v0, $a0
jr $ra