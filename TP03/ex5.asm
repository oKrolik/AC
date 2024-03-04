.data
	X: .float 1.0, 2.0, 3.0
	Y: .float 3.0, 2.0, 1.0
	
.text
	la a0, X
	la a1, Y
	li a2, 3
	
	jal prodint_VF
	
	li a7, 10
	ecall
	
prodint_VF:
	fcvt.s.w fa3, zero # sum = 0
	ciclo:
		beqz a2, fim
		flw fa4,0(a0) # x[i]
		flw fa5, 0(a1) # y[i]
		fmul.s fa4, fa4, fa5 # x[i] * y[i]
		fadd.s fa3, fa3, fa4 # sum += x[i] * y[i]
		addi, a2, a2, -1 # n--;
		addi a0, a0, 4
		addi a1, a1, 4
		j ciclo
fim:
	fmv.s fa0, fa3
	fcvt.d.s fa0, fa0
	ret