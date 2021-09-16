; 
; Basic assembly program
;
;		reset vector
		.org	0x0000
		jmp		START
;----------------------------------
;		main loop
START:	call	delay
		nop
;----------------------------------
END:	jmp		END

;================== Routine 1 ===================
delay:	ldi		r17, 100
dLoop:	nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec		r17
		brbc	1, dLoop
		ret
;=================================================
				
