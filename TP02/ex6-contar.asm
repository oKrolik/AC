.data
	x: .word 7
.text
	lw a0, x
	jal rot
	
	li a7, 10
	ecall

rot:	bnez a0, shift # if a0 != 0000: shift
	mv a0, a2 # a0 = a2
	ret

shift:
	andi a1, a0, 1 # 0111 && 0001 = 1
	add a2, a2, a1 # a2 += 1
	srli a0, a0, 1 # 0111 >> 0011
	j rot