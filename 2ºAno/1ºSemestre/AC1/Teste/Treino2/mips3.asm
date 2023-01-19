#mapa de registos
#a: $a0
#t: $f12
#n: $a1
#oldg: $f2
#g: $f4
#s: $f6
#k: $t0

.data
float1: .float	-1.0
float2:	.float	1.0
float3:	.float	0.0
.text

func3:
l.s	$f2,float1
l.s	$f4,float2
l.s	$f6,float3
li	$t0,0

for:
bge	$t0,$a1,endfor

sll	$t1,$t2,2	#k*2
add	$a0,$t1
l.s	$f10,0($a0)	#a[k]
while:
sub.s	$f8,$f4,$2
c.le.s	$f8,$f12
bc1t	endwhile

mov.s	$f2,$f4
div.s	$f10,$f12
add.s	$f4,$f4,$f10
j while
endwhile:

add.s	$f6,$f6,$f4
s.s	$f4,0($a0)
addi	$t0,$t0,1
j for
endfor:
mtc1	$a1,$f10
cvt.s.w	$f10,$f10
div.s	$f0,$f6,$f10

jr	$ra