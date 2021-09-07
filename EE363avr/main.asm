		.org	0x0000
		nop			
		ldi		r16, 0x9B
		ldi		r17, 0x16
		ldi		r18, 0xC7
		ldi		r19, 0x42
		add		r16, r18
		adc		r17, r19
		eor		r18, r19
		sub		r16, r18
		sbc		r17, r19
		and		r18, r17
		or		r16, r17
		andi	r16, 0x0F
		cbr		r17, 0x01
		ori		r16, 0xAA
		sbci	r16, 0x19	
END:	jmp		END	