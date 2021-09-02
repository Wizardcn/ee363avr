;
; instruction jmp, rjmp
; topic  66, 94
		.org	0x0000
		nop
		ldi		r16, 8
		;--------------------------------------------
		rjmp	LABEL1		
		ldi		r16, 20
LABEL1: dec		r16
		jmp		LABEL2
		;--------------------------------------------
		.org	0x0010
LABEL2: inc		r16		
		nop
		rjmp	LABEL2
		;--------------------------------------------
END:	jmp		END