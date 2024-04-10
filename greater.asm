.data
VEC1: .byte 15, 8, 20, 2, 5, 6, -5, 1
VEC2 .byte 12, 7, 19, 34, 4, 7, 8, 2
R: .space 16

.text
	la a0, VEC1
	la a1, VEC2
	la a2, R
	li t0, 8
LOOP:
	beq t0, zero, FIM
	lw t1,0(a0)
	lw t2,0(a1)
	umax8 t3,t1,t2
	sw t3,0(a2)
NEXT:
	addi a0,a0,4
	addi a1,a1,4
	addi a2,a2,4
	addi t0,t0,-4
	j LOOP
FIM:
	ret