	AREA	ARRAY_SMALLEST,	CODE,	READONLY
		MOV	R5,#0X09
		LDR	R1,=VALUE
		LDR	R2,[R1],#4
		MOV	R3,#0X40000000
BACK	LDR	R4,[R1],#4
		CMP	R2,R4
		BLS	GOTO
		MOV	R2,R4
GOTO	SUBS	R5,R5,#1
		CMP	R5,#0
		BNE	BACK
		STR	R2,[R3]
VALUE	DCD	0X09
		DCD	0X08
		DCD	0X02
		DCD	0X30
		DCD	0X32
		DCD	0X60
		DCD	0X70
		DCD	0X80
		DCD	0X90
		DCD	0X01
		SWI	&11
		END