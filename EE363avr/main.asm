;
; instruction adiw, sbiw
; topic 7, 102
		.org	0x0000
		nop
		ldi		r26, 0xF8
		ldi		r27, 0x01
		;--------------------------------------------
		adiw	r27:r26, 20		;r27:r26 <- r27:r26 + 20
		sbiw	r27:r26, 10		;r27:r26 <- r27:r26 - 10
		;--------------------------------------------
END:	jmp		END
