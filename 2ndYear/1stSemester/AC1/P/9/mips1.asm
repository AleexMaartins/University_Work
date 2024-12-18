#mapa de registos
#val: $t0
#res: $f0

	.data
ft1:	.float	2.59375
ft0:	.float	0.0
	.text
	.globl main
main:				#int main(void){
do:				#do{
	li	$v0,5
	syscall
	move	$t0,$v0		#val = read_int();
	mtc1	$t0,$f2		#$f2 = $t0
	cvt.s.w	$f2,$f2		#float ftmp = (float)val;
	
	la	$t9,ft1		
	l.s	$f4,0($t9)
	mul.s	$f0,$f2,$f4	#res = (float)val * 2.59375; 

	li	$v0,2
	mov.s	$f12,$f0	
	syscall			#print_float(res);
	
	la	$t9,ft0
	l.s	$f2,0($t9)	#ftmp = 0.0;
	c.eq.s	$f0,$f2
	bc1f	do		#} while (res != 0.0);
			
	li	$v0,0		#return 0:
	jr	$ra		#}
