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
# int cq         4                 4             31->32
#
# t_kvd          8                 40!
# 
#

# Mapa de registos
# nv: $a0
# pt: $a1
# i: $t1
# j: $t2
# sum: $f2

	.data
sum:	.double 0.0
	
	.text

func4:
	la $t0, sum
	l.d $f2, 0($t0) # $f2 = sum
	
	li $t1, 0 # $t1 = i = 0
for:	bge $t1, $a0, endfor
	li $t2, 0 # $t2 = j = 0

do:
	addiu $t3, $a1, 16
	addu $t3, $t3, $t2
	lb $t3, 0($t3) # pt->quest[j]
	mtc1 $t3, $f8
	cvt.d.w $f8, $f8 # (double) pt->quest[j]
	
	add.d $f2, $f2, $f8 # sum = sum + (double) pt->quest[j]
	addi $t2, $t2, 1 # j++ 
	
	addiu $t4, $a1, 4
	lb $t4, 0($t4)
while:	blt $t2, $t4, do # while (j < pt->nm)
	
	addiu $t6, $a1, 8
	l.d $f10, 0($t6) # $f10 = pt->grade
	div.d $f10, $f2, $f10
	cvt.w.d $f10, $f10  # $f10 = (int) (sum / pt->grade)
	
	mfc1 $t6, $f10 #t6 = (int) (sum / pt->grade)
	
	addiu $t7, $a1, 0
	sw $t6, 0($t7) # pt->acc = (int) (sum / pt->grade)
		
	#incrementos
	addi $t1, $t1, 1 # i++
	addiu $a1, $a1, 40 # pt++ para passar para a prox estrutura
	j for
endfor:
	addiu $t0, $a1, 8
	l.d $f4, 0($t0) # $f4 = pt->grade
	
	addiu $t0, $a1, 32
	lw $t0, 0($t0) # $t0 = pt->cq
	mtc1 $t0, $f6
	cvt.d.w $f6, $f6 # $f6 = (double) pt->cq
	
	mul.d $f0, $f4, $f6 # return (pt->grade * (double) pt->cq)

	jr $ra
	