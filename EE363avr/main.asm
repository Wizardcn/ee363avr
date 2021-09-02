;
; instruction asr, lsl, lsr, rol, ror, swap
; topic 10, 77, 78, 95, 96, 125
		.org	0x0000
		nop
		ldi		r16, 0x88
		ldi		r17, 0x83
		ldi		r18, 0x81
		ldi		r19, 0x48
		;--------------------------------------------
		asr		r16		;arithmetic shift right
		lsl		r17		;logical shift left
		lsr		r17		;logical shift right
		rol		r18		;rotate left
		ror		r18		;rotate right
		swap	r19		;swap
		;--------------------------------------------
END:	jmp		END