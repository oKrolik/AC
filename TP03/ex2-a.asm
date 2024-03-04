.data
	A: .float 3.0
	B: .float 2.0
	C: .float 3.0
	D: .float 1.5

.text	
	la a0, A
	la a1, B
	la a2, C
	la a3, D
	flw fa0, 0(a0)
	flw fa1, 0(a1)
	flw fa2, 0(a2)
	flw fa3, 0(a3)
	
	jal CALCULATE
	
	li a7, 10
	ecall
	
	
CALCULATE:
	li a4, 3
	fcvt.s.w fa4, a4
	fadd.s fa3, fa3, fa0
	fsub.s fa3, fa3, fa4
	
	fsub.s fa0, fa0, fa1
	fmul.s fa0, fa0, fa2
	
	fdiv.s fa0, fa0, fa3

	ret