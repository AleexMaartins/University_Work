#struct
#{			align	size	offset
#int	acc		4	4	0	
#unsigned char		1	1	4
#double 		8	8	5->8
#char quest[14]		1	14	16
#int	cq		4	4	30->32
#} t_kvd		8	36->40



#mapa de registos
#nv:$a0
#pt:$a1
#i:$t0
#j:$t1
#sum: $f2

.data
t_kvd : .space 40
double: .double	0.0
.text

func4:
l.d	$f2,double
li	$t0,0

for:
li	$t1,0

do:


lb	$t2,16($a1)
add	$t3,$t1,t2
lb	$t3,0($t3)
mtc1.d	$t3,$f4
cvt.d.w	$f4,$f4

add.d	$f2,$f4

addi	$t1,1
lb	$t2,4($a1)
bge	$t1,$t2,endo
j do
endo:

addi	$t0,$t0,1
addi	$a1,$a1,40
j	for
endfor:
jr	$ra