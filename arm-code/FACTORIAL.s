	AREA	FACTORIAL,	CODE,	READONLY
		MOV	R0,#0X07
		MOV	R1,R0
GOBACK	SUBS	R1,R1,#1
		MUL	R3,R0,R1
		MOV	R0,R3
		CMP	R1,#1
		BNE	GOBACK
		END