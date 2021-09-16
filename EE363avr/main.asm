;
; Basic assembly program 
; 
		.org	0x0000
		JMP		START
		;--------------------------------------------
START:	ldi		r16, 1
		call	factorial
		nop
		ldi		r16, 5
		call	factorial
		nop
		ldi		r16, 6
		call	factorial
		nop
		ldi		r16, 0
		call	factorial
		nop
		;--------------------------------------------
END:	jmp		END

;====================================================
;input		r16
;output		r0
;resource	r17
factorial:
		cpi		r16, 6
		brbc	0, OverLimit
		;----------------------------------
		ldi		r17, 1
		mov		r0, r17
Loop:
		tst		r16
		brbs	1, endFac
		mul		r16, r0
		dec		r16
		rjmp	Loop
endFac:
		ret
		;----------------------------------
OverLimit:		
		ldi		r17, 0xFF
		mov		r0, r17
		ret
;====================================================