#Mapa de registos
#
#

.data
.text

.globl main



# O argumento da fun��o � passado em $a0
# O resultado � devolvido em $v0
# Sub-rotina terminal: n�o devem ser usados registos $sx
strlen: li $t1,0 # len = 0;
while: lb $t0,... # while(*s++ != '\0')
 addiu $a0,$a0,1 #
 b?? $t0,'\0',endw # {
 addi $t1,... # len++;
 j ... # }
endw: move $v0,$t1 # return len;
 jr $ra # 

