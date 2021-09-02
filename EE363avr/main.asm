;
; instruction brcc, brcs, breq, brge, brhc, brhs, brid, brie, brlo, 
;             brlt, brmi, brne, brpl, brsh, brtc, brts, brvc, brvs
; topic 15, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33,
		.org	0x0000
		nop
		ldi		r16, 200
		ldi		r17, 50
		ldi		r18, 3
		;--------------------------------------------
		add		r16, r17
		brcc	NEXT1
		inc		r0
NEXT1:	nop
		add		r16, r18
		brcs	NEXT2
		inc		r0
NEXT2:	nop
		;--------------------------------------------
END:	jmp		END