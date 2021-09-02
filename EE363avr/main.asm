;
; instruction cp, cpc, cpi, cpse
; topic 40, 50, 51, 52
		.org	0x0000
		nop
		ldi		r16, 2
		ldi		r17, 2
		ldi		r18, 5
		;--------------------------------------------
		cpi		r17, 8
		brcs	N4C
		inc		r0
		inc		r0
N4C:	nop
		;--------------------------------------------
		cpse	r16, r17
		inc		r0
		nop
		;--------------------------------------------
END:	jmp		END