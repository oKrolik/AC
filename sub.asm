.data
	input1: .asciz "Primeiro numero: "
	input2: .asciz "Segundo numero: "
	resultado: .asciz "Resultado: "
	
.text
	li a7, 4
	la a0, input1
	ecall
	
	li a7, 5
	ecall
	
	mv t0, a0
	
	li a7, 4
	la a0, input2
	ecall
	
	li a7, 5
	ecall
	
	mv t1, a0
	
	sub t2, t0, t1
	
	li a7, 4
	la a0, resultado
	ecall
	
	li a7, 1
	mv a0, t2
	ecall
	
	