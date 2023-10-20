#mapa de registos:
# i = $t0
# j = $t1
# aux= $t2
#burner variable = $t3
#lista = $t4
#lista[i] = $t5
#lista[j] = $t6
	.data
lista:	.space 40
str1:	.asciiz "\nInsira um valor para inserir no array: "
	.eqv SIZE,10
	.eqv print_int10, 1
	.eqv print_string, 4
	.eqv read_int, 5
	.text
	.globl main
main:	
	li $t0,0		#i=0;
	li $t3,0

while:	beq $t0,10,for		#while counter!=10
	
	la $a0,str1		#print("\nInsira um valor para inserir no array: ")
	li $v0, print_string
	syscall
	
	sb $v0,0($t4)
	
	
				#counter++
	
for:				
	sub $t3,SIZE,1		# for(i=0; i < SIZE-1; i++) 
	bge $t0,$t3, finalfor	#
	
	addi $t1,$t0,1		#j=i+1
	
for2:
	bge	$t1,SIZE,endfor2	#  for(j = i+1; j < SIZE; j++) 
	
	
	lb $t4,#no if
	
	ble				# if(lista[i] > lista[j]) 

	
endif:		
	addi $t1,$t1,1		#j++
	j for2			#fim do 2º for		

endfor2:	
	addi $t0,$t0,1		#i++
	j for
	
finalfor:
	#meter print aqui
	
	jr	$ra