; Data Transfer
; instruction ldi, movw, mov
;

	.org 0x000
	nop
	ldi r16, 0x12		; Operand: Rd, Rr Operation: Rd <- Rr
	ldi r17, 12
	ldi r18, 0x0C
	movw r1:r0, r17:r16 ; Operand: Rd, Rr Operation: Rd+1:Rd <- Rr+1:Rr
	mov r2, r18			; Operand: Rd, K Operation: Rd <- K
END: jmp END
