; 
; Basic assembly program
;
;		reset vector
		.org	0x0000
		jmp		START
;----------------------------------
;		main loop
START:	;   A
		ldi		r16, 'A'
		call	HEXASCII2BIN
		sts		0x0100, r16
		;	9
		ldi		r16, '9'
		call	HEXASCII2BIN
		sts		0x0101, r16
;----------------------------------
END:	jmp		END

;================== Routine ======================
; input		r16
; output	r16
HEXASCII2BIN:	cpi		r16, 'A'
				brbc	0, SUBTRACT
				andi	r16, 0x0F
				ret

;---------------- subtraction routine ------------
SUBTRACT:		subi	r16, 55
				ret
;=================================================
				
