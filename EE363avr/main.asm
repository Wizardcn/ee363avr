;
; instruction cbi, sbi
; topic 37, 99
		.org	0x0000
		nop
		ldi		r16, 0x01
		out		0x04, r16
		;--------------------------------------------
		sbi		0x05, 0		;set bit
		cbi		0x05, 0		;clear bit
		sbi		0x05, 0		;set bit
		cbi		0x05, 0		;clear bit
		;--------------------------------------------
END:	jmp		END