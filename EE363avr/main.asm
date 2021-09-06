		.org	0x0000
		nop		
		ldi		r16, 0x12
		ldi		r17, 12
		ldi		r18, 0x0C
		ldi		r28, 0x02
		ldi		r29, 0x01
		.org	0x0008
		movw	r1:r0, r17:r16
		st		Y, r16
		ld		r0, Y
		std		Y+16, r3
		ldd		r5, Y+1
		out		0x04, r16	
		dec		r16
		inc		r16
		sbi		0x05, 0
		jmp		LABEL1
		ldi		r16, 20
LABEL1: dec		r16
		nop
XEND:	jmp		XEND