;
; instruction dec, inc, ser, clr, com, neg,  tst
; topic 43, 48, 53, 65, 84, 110, 126 
		.org	0x0000
		nop
		ldi		r16, 0x23
		;--------------------------------------------
		dec		r16		;r16 <- r16-1
		inc		r16		;r16 <- r16+1
		ser		r17		;r17 <- 0xFF
		clr		r17		;r17 <- 0x00
		com		r16		;r16 <- 1's comp. of r16
		neg		r16		;r16 <- 2's comp. of r16
		tst		r16		;test r16 is zero
		;--------------------------------------------
END:	jmp		END