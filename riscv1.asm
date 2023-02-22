.data

seq: .byte 15, -3, 35, 11, 0, -6

.text
	la a0, seq
	li a1, 6
	call maxbyte
	li a7, 10 # bkpt
	ecall
	
maxbyte: lb t0, 0(a0)

ciclo:
	lb t1, 0(a0)
	ble t1, t0, cont
	mv t0, t1

cont:
	addi a1, a1, -1
	addi a0, a0, 1
	bne a1, zero, ciclo
	mv, a0, t0
	ret