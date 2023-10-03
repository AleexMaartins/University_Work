#mapa de registos
#$t0 = i
#
.data
str1: .asciiz "Nr. de parametros: "
str2: .asciiz "\nP"
str3: .asciiz ": "

.text
.globl main
main:

li $v0,4
la $a0,str1
syscall



li $v0,1
la $a0,argc ####
syscall


li $t0,0
for:
ble $t0,

addi $t0,$t0,1			#i++
j for

endfor:





jr $ra