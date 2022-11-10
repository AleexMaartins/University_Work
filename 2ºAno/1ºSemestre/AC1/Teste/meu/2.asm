#Mapa de registos
#i:$t0
#v:$t1
#&(val[0]):$t2
#val[i]: $t3

	.data
	
val:	.word	8, 4, 15, -1987, 327, -9, 27, 16

.eqv	SIZE,8

	.text
	.globl main
main:
	li	$t0,0	#i=0
	
do:
	la	$t2,val
	sll	$t3,$t0,2	#i*4
	addu	$t3,$t3,$t2	#val[i]
	lw	$t1,0($t3)	#