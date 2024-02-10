	   .data
	   
nome:	   .asciiz "\nNome: "
nmec:       .asciiz "\nN. Mec: "
nota:      .asciiz "\nNota:"	   
	   
	   .align 2
stg:       .word 72343
	   .asciiz "Napoleao"	# 9 bytes
	   .space 9 #preencher o resto do array
	   .asciiz "Bonaparte" # 10 bytes
	   .space 5  #preencher o resto do array
	   .float 5.1
	   
	   .eqv r_int,5
	   .eqv r_string,8
	   .eqv p_intu,36
	   .eqv p_char,11
	   .eqv p_float,2
	   .eqv p_string,4
	   
	   .text
	   .globl main
	   
main:	   la $a0, nmec
	   li $v0, p_string
	   syscall
	   
	   la $t0, stg
	   lw $a0, 0($t0) #offset 0
	   li $v0, p_intu
	   syscall
	   
	   la $a0, nome
	   li $v0, p_string
	   syscall
	   
	   addiu $a0, $t0, 22
	   li $v0, p_string
	   syscall
	   
	   li $a0, ','
	   ori $v0, $0, p_char
	   syscall
	   
	   addiu $a0, $t0, 4
	   li $v0, p_string
	   syscall
	   
	   la $a0, nota
	   li $v0, p_string
	   syscall
	   
	   addiu $t1, $t0, 40
	   l.s $f12, 0($t1)
	   li $v0, p_float
	   syscall
		
	   jr $ra