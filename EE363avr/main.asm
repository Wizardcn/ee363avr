;
; Basic assembly program 
; 
		.org	0x0000
		JMP		START
		;--------------------------------------------
START:	ldi		r16, 1
		call	delay
		ldi		r16, 2
		call	delay
		ldi		r16, 3
		call	delay
		nop
		;--------------------------------------------
END:	jmp		END

;====================================================
;input		r16
;resource	
delay:
		ldi		r17, 100
dLoop:	nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec		r17
		brbc	1, dLoop
		dec		r16
		brbc	1, delay
		ret
;====================================================
