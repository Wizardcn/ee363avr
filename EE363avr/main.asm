;
;	Basic assembly program
;
			.org	0x0000
			jmp				START
		;------------------------------------------------
START:	ldi			r16, 0x24
			call	BCD2BIN
		;------------------------------------------------
END:	jmp			END

;====================================================
;input		r16
;output		r0
;resource	r17, r18
BCD2BIN:
			mov				r17, 16
			andi	r16, 0x0F
			swap	r17
			andi	r17, 0x0F
			ldi				r18, 10
			mul				r17, r18
			add				r0, r16
			ret
;====================================================