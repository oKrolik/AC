.data
	x: .asciz "presunto"

.text
	la, a0, x
	jal rot
	
	li a7, 10
	ecall

rot:	bnez a0, count
	ret

count:	lb t0, 0(a0) # lw mas para bytes
	addi a0, a0, 1 # Como s�o bytes e n�o words, s� avan�amos 1
	j rot