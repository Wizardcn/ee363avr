;
; instructiion in, out
; topic 64, 88
	.org	0x0000
	nop
	ldi		r16, 0xF0
	ldi		r17, 0x55
	ldi		r18, 0xFF
	;----------------------------------------
	out		0x04, r16	; r16 -> (x0024) IO(x04)
	out		0x05, r17	; r17 -> (x0025) IO(x05)
	nop
	in		r18, 0x03	; r18 <- (x0023) IO(x03)
	nop
	;----------------------------------------
END: jmp	END

