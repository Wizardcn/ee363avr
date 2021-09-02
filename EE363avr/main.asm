;
; instruction brbc, brbs
; topic 13, 14
		.org	0x0000
		nop
		ldi		r16, 200
		ldi		r17, 50
		ldi		r18, 3
		;--------------------------------------------
		add		r16, r17
		brbc	0, NEXT1
		inc		r0
NEXT1:	nop
		add		r16, r18
		brbs	0, NEXT2
		inc		r0
NEXT2:	nop
		;--------------------------------------------
END:	jmp		END