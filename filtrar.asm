.text
.global filtrar
filtrar :
	mv t0 , zero # contador ( resultado final )
	li t6 , 255
	beqz a2 , .L1fim # zero elementos
	bgtu a1 , a0 , ciclo # a < b
	mv t0 , a2
	j .L1fim
ciclo :
	lbu t1 , 0( a3)
	bgtu t1 , a0 , .L2 # comparar com limite inferior
	sb zero , 0( a3)
	j .Lcont
.L2:
	bltu t1 , a1 , .L3 # comparar com limite superior
	sb t6 , 0( a3)
	j .Lcont
.L3:
	# não alterar valor do vetor
	addi t0 , t0 , 1
.Lcont :
	addi a2 , a2 , -1
	addi a3 , a3 , 1
	bnez a2 , ciclo
.L1fim :
	mv a0 , t0
	ret
