;
; LabA_00_Demonstration
;

	.org 0x000
	nop
	ldi r16, 0x12
	ldi r17, 12
	ldi r18, 0x0C
	movw r1:r0, r17:r16
	mov r2, r18
END: jmp END
