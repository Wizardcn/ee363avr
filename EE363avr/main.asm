;
; instruction sbic, sbis, sbrc, sbrs
; topic 100, 101, 104, 105
		.org	0x0000
		nop
		ldi		r17, 6
		ldi		r16, 0x01
		out		0x04, r16
		;--------------------------------------------
		sbic	0x04, 0
		inc		r17
		nop
		sbis	0x04, 0
		dec		r17
		nop
		;--------------------------------------------
		sbrc	r16, 4
		inc		r17
		nop
		sbrs	r16, 4
		dec		r17
		nop
		;--------------------------------------------
END:	jmp		END