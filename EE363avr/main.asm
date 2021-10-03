; Test Tool: avrdude.exe
		.org	0x0000
		jmp		START
;----------------------------------------
START:
		SBI		0x04, 5
		CBI		0x07, 1
LOOP:	SBIC	0x06, 1
		SBI		0x05, 5
		SBIS	0x06, 1
		CBI		0x05, 5
		RJMP	LOOP
