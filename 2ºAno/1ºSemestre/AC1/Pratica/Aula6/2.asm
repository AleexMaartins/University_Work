#Mapa de registos
# $t0 = p
# $t1 = pultimo
# $t2 = *p
.data

.eqv print_string,4
.eqv print_char,11
str1: .asciiz "Array"
str2: .asciiz "de"
str3: .asciiz "ponteiros"
array: .word str1,str2,str3

.text
.globl main

main:

la $t0,array

addi $t1,$t0,12

for:
bge $t0,$t1,endfor


lw $a0,0($t0)
li $v0,print_string
syscall

li $v0,print_char
li $a0, '\n'
syscall

addi $t0,$t0,4
j for
endfor:
jr $ra