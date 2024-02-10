	   .data
	   
nome1:	   .asciiz "\nPrimeiro nome: "
nome2:     .asciiz "\nUltimo nome: "
nmec:      .asciiz "\nN. Mec: "
nota:      .asciiz "\nNota:"
fname:	   .space 18	
lname:     .space 15   
	   
	   .align 2
stg:       .space 44
	   
	   .eqv r_int,5
	   .eqv r_string,8
	   .eqv p_intu,36
	   .eqv p_char,11
	   .eqv p_float,2
	   .eqv p_string,4
	   .eqv r_float,6
	   
	   .text
	   .globl main
	   
main:	   

	  la $t0, stg
	  
	  la $a0, nmec
	  li $v0, p_string
	  syscall
	  
	  li $v0, r_int
	  syscall
	  sw $v0, 0($t0)
	  
	  la $a0, nota
	  li $v0, p_string
	  syscall
	  
	  li $v0, r_float
	  syscall
	  addiu $t1, $t0, 40
	  s.s $f0, 0($t1)
	  
	  la $a0, nome1
	  ori $v0, $0, p_string
	  syscall	
	  		
	  			
	  la $a0, fname
	  li $a1, 17					
	  li $v0, r_string
	  syscall           #primeiro nome
	  addiu $t2, $t0, 4
	  sw $v0, 0($t2)
	  
	  la $a0, nome2
	  ori $v0, $0, p_string
	  syscall
	  
	  la $a0, lname
	  li $a1, 14
          li $v0, r_string
          syscall           #ultimo nome
          addiu $t3, $t0, 22 
          la $a0, lname
          sw $a0, 0($t3)
	   
	 la $t0, stg
	 lw $a0, 0($t0) #offset 0
	 li $v0, p_intu
	 syscall
	   
	 li $a0, '\n'
	 ori $v0, $0, p_char
	 syscall
	   
	   
	 addiu $t1, $t0, 40 #offset 40
	 l.s $f12, 0($t1)
	 li $v0, p_float
	 syscall
		
	 jr $ra
