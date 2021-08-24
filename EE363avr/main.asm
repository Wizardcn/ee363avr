;
; instruction lds, sts
; topic 74, 121

	.org 0x0000
	nop
	ldi		r16, 0xAA
	ldi		r17, 0xBB
	;--------------------
	sts		0x0110, r16 ; r16 -> (x0110)
	sts		0x0111, r17 ; r16 -> (x0111)
	lds		r12, 0x0110 ; r12 <- (x0110)
	lds		r13, 0x0111 ; r13 <- (x0111)
	;--------------------
	nop
END: jmp	END

