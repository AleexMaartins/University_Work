#mapa de registos
#rv: $t0
#n: $t1
#sum: $t2
#nit: $t3
#pt: $t4

.data

str1: .asciiz "Media invakida!\n"
list: .space 32
.text

.globl main

main:
li	$t2,0	#sum = 0
li	$t3,0	#nit = 0

la	$t4,list	#pt=list
addi	$t5,$t4,32

for1:
bge	$t4,$t5,endfor1
li	$v0,5
syscall	
sb	$v0,0($t4)
addi	$t4,$t4,4
j for1

endfor1:
li	$t1,0


for2:
bge	$t1,8,endfor2

if1:
la	$t5,list	#list
sll	$t6,$t1,2	#n*4
add	$t5,$t5,$t6
lb	$t5,0($t5)	#list[n]
blt	$t5,0,endif1
add	$t2,$t2,$t5
addi	$t3,$t3,1
endif1:
addi	$t1,$t1,1
j	for2

endfor2:
ble	$t3,0,else
li	$v0,1
div	$a0,$t2,$t3
syscall
li	$t0,0
j endif

else:
li	$v0,4
la	$a0,str1
syscall
li	$t0,-1

endif:
move	$v0,$t0

jr	$ra