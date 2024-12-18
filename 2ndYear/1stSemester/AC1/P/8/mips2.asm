# Mapa de registos
# n: $a0 -> $s0
# b: $a1 -> $s1
# s: $a2 -> $s2
# p: $s3
# digit: $t0
# Sub-rotina intermédia
itoa:	addiu $sp,... # reserva espaço na stack
	(...) # guarda registos $sx e $ra
	move $s0,... # copia n, b e s para registos
	(...) # "callee-saved"
	move $s3,$a2 # p = s;
do:	# do {
	(...) #
	(...) # } while(n > 0);
	sb $0,... # *p = 0;
	(...) #
	jal strrev # strrev( s );
	(...) # return s;
	(...) # repõe registos $sx e $ra
	addiu $sp,... # liberta espaço na stack
	jr $ra #