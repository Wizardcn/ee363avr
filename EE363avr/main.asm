; Data Transfer
; instruction ld, ldd, st, std
; topic 70, 71, 72, 118, 119, 120
	.org 0x000			; ORG means origin ORG is used for specific addressing in microprocessor and microcontroller programming. (This means we want to start our program from the 0x0000 address.)
	nop					; no operation, PC <- PC+1
	ldi r16, 0xAA
	ldi r17, 0xBB
	ldi r18, 0xCC
	ldi r28, 0x02		;
	ldi r29, 0x01		; Y: 0x102
	;-----------------------------------------
	st		Y, r16			; r16 -> (x0102)	Y:x0102
	st		Y+, r17			; r17 -> (x0102)	Y:x0103
	st		Y+, r18			; r18 -> (x0103)	Y:x0104 
	st		-Y, r16			; r16 -> (x0103)	Y:x0103
	st		-Y, r18			; r18 -> (x0102)	Y:x0102
	ld		r0, Y			; r0 <- (x0102)		Y:x0102
	ld		r1, Y+			; r1 <- (x0102)		Y:x0103
	ld		r2, Y+			; r2 <- (x0103)		Y:x0104
	ld		r3, -Y			; r3 <- (x0103)		Y:x0103
	ld		r4, -Y			; r4 <- (x0102)		Y:x0102
	std		Y+16, r3		; r3 -> (x0112)		Y:x0102
	ldd		r5, Y+1			; r5 <- (x0103)		Y:x0102
	;------------------------------------------
	nop
END: jmp END
