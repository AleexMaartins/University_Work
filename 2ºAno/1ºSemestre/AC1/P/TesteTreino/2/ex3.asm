#              Align             Size            Offset
#
#
# int acc        4                4                0
#       
# u char nm      1                1                4
#
# d grade        8                8              5->8
#
# c ques[14]     1                14              16
#
# int cq         4                 4             30->32
#
# t_kvd          8                 40!
# 
#

# Mapa de registos:
# nv: $a0
# pt: $a1
# i: $t0
# j: $t1
# sum: $f2
# return : $f0

	.data
z_z:	.double 0.0
	
	.text

func4:	la $t2, z_z
	l.d $f2, 0($t2)
	
	li $t0, 0 # i = 0
for:	bge $t0, $a0, e_for
	
	li $t1, 0 # j = 0
	
do:	addi $t4 ,$a1 ,16
	add $t4, $t4, $t1 
	lb $t5, 0($t4) # $t5 = pt->quest[j]
	mtc1 $t5, $f4
	cvt.d.w $f4, $f4 # (double) pt ->quest[j]
	add.d $f2, $f2, $f4
	addi $t1, $t1, 1
	
	lb $t5, 4($a1)
	blt $t1, $t5, do
	
	l.d $f10, 8($a1) #grade
	div.d $f10, $f2, $f10
	cvt.w.d $f10, $f10
	mfc1 $t7, $f0
	sw $t7, 0($a1)
	
	
	addi $t0, $t0, 1 # i++
	addi $a1, $a1, 40 # pt++
	j for
e_for:	
	lw $t3, 32($a1)
	mtc1 $t3, $f4
	cvt.d.w $f4, $f4 # (double) pt->cq
	l.d $f6, 8($a1)
	mul.d $f0, $f4, $f6
	jr $ra
	
	