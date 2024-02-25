.data
	n: .word 3
.text
	la a0, n
	lw a0, 0(a0)
	jal sumSquare
	li a7, 10
	ecall

sumSquare:
	bltz a0, return_zero
	mv a1, a0
	mv a2, zero
	mv a3, zero
	j loop
	
loop:
	mul a2, a1, a1
	addi a1, a1, -1
	add a3, a3, a2
	beqz a1, return_result
	j loop


return_result:
	mv a0, a3
	ret

return_zero:
	li a0, 0
	ret
