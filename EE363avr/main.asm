;
; instruction andi, cbr, ori, sbci, sbr, subi
; topic 9, 38, 87, 98, 103, 124
		.org	0x0000
		nop
		ldi		r16, 0x23
		;--------------------------------------------
		andi	r16, 0x0F	;r16 <- r16 # 0x0F
		cbr		r16, 0x01	;r16 <- r16 # 0x01
		ori		r16, 0x21	;r16 <- r16 # 0x21
		sbci	r16, 0x10	;r16 <- r16 # 0x10
		sbr		r16, 0x21	;r16 <- r16 # 0x21
		subi	r16, 0x10	;r16 <- r16 # 0x10
		;--------------------------------------------
END:	jmp		END
