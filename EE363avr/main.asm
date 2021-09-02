;
; instruction push, pop
; topic 89, 90
	.org 0x0000
	nop
	ldi		r16, 0xAA
	ldi		r17, 0xBB
	ldi		r18, 0xCC
	;------------------------------------------------------------
	push	r16			; r16 -> (x08FF) SP:x08FE
	push	r17			; r17 -> (x08FE) SP:x08FD
	push	r18			; r18 -> (x08FD) SP:x08FC
	pop				r4				; r4 <- (x08FD) SP:x08FD
	pop				r5				; r5 <- (x08FE) SP:x08FE
	pop				r6				; r6 <- (x08FF) SP:x08FF
	;------------------------------------------------------------
END: jmp			END

