;
; instruction mul, muls, mulsu
; topic 81, 82, 83
		.org	0x0000
		nop
		ldi		r16, 0xF8
		ldi		r17, 0x02
		ldi		r18, 0xFE
		;--------------------------------------------
		mul		r16, r17	;r1:r0 <- r16 * r17
		nop
		nop
		muls	r17, r18	;r1:r0 <- r16 * r17
		nop
		nop
		mulsu	r17, r18	;r1:r0 <- r16 * r17
		nop
		nop
		;--------------------------------------------
END:	jmp		END
