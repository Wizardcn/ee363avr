;
; instruction bclr, bset
; topic 11, 34
		.org	0x0000
		nop
		;--------------------------------------------
		bset	6
		bclr	6
		;--------------------------------------------
END:	jmp		END