; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27026.1 

	TITLE	C:\set07109\Workbook1-2\students.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	_printStudent
PUBLIC	_main
EXTRN	___acrt_iob_func:PROC
EXTRN	_fgets:PROC
EXTRN	___stdio_common_vfprintf:PROC
EXTRN	_atoi:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	___security_cookie:DWORD
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
_DATA	SEGMENT
$SG9835	DB	'Student matric is: %d', 0aH, 00H
	ORG $+1
$SG9836	DB	'Student name is: %s', 0aH, 00H
	ORG $+3
$SG9837	DB	'Student address is: %s', 0aH, 00H
$SG9856	DB	0aH, 00H
	ORG $+2
$SG9857	DB	'Hello, please select one of the following options: ', 0aH
	DB	00H
	ORG $+3
$SG9858	DB	'0 - Enter a student''s details.', 0aH, 00H
$SG9859	DB	'1 - Print student''s details.', 0aH, 00H
	ORG $+2
$SG9860	DB	'2 - Exit the application.', 0aH, 00H
	ORG $+1
$SG9861	DB	'Please enter a number here and press enter: ', 0aH, 00H
	ORG $+2
$SG9863	DB	'Enter student''s matric: ', 0aH, 00H
	ORG $+2
$SG9864	DB	'Enter student''s name: ', 0aH, 00H
$SG9865	DB	'Enter student''s address: ', 0aH, 00H
	ORG $+1
$SG9868	DB	'Exiting...', 0aH, 00H
$SG9870	DB	'Invalid Input', 0aH, 00H
_DATA	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_s$ = -112						; size = 12
_matriculation$1 = -100					; size = 4
_ch$2 = -96						; size = 4
_flag$ = -92						; size = 4
tv78 = -88						; size = 4
_buffer3$ = -84						; size = 20
_buffer2$ = -64						; size = 20
_buffer1$ = -44						; size = 20
_buffer$ = -24						; size = 20
__$ArrayPad$ = -4					; size = 4
_argc$ = 8						; size = 4
_argv$ = 12						; size = 4
_main	PROC
; File c:\set07109\workbook1-2\students.c
; Line 32
	push	ebp
	mov	ebp, esp
	sub	esp, 112				; 00000070H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 33
	mov	DWORD PTR _flag$[ebp], 1
$LN2@main:
; Line 50
	cmp	DWORD PTR _flag$[ebp], 0
	je	$LN3@main
; Line 55
	push	OFFSET $SG9856
	call	_printf
	add	esp, 4
; Line 56
	push	OFFSET $SG9857
	call	_printf
	add	esp, 4
; Line 57
	push	OFFSET $SG9858
	call	_printf
	add	esp, 4
; Line 58
	push	OFFSET $SG9859
	call	_printf
	add	esp, 4
; Line 59
	push	OFFSET $SG9860
	call	_printf
	add	esp, 4
; Line 60
	push	OFFSET $SG9861
	call	_printf
	add	esp, 4
; Line 63
	push	0
	call	___acrt_iob_func
	add	esp, 4
	push	eax
	push	20					; 00000014H
	lea	eax, DWORD PTR _buffer$[ebp]
	push	eax
	call	_fgets
	add	esp, 12					; 0000000cH
; Line 64
	lea	ecx, DWORD PTR _buffer$[ebp]
	push	ecx
	call	_atoi
	add	esp, 4
	mov	DWORD PTR _ch$2[ebp], eax
; Line 67
	mov	edx, DWORD PTR _ch$2[ebp]
	mov	DWORD PTR tv78[ebp], edx
	cmp	DWORD PTR tv78[ebp], 0
	je	SHORT $LN6@main
	cmp	DWORD PTR tv78[ebp], 1
	je	$LN7@main
	cmp	DWORD PTR tv78[ebp], 2
	je	$LN8@main
	jmp	$LN9@main
$LN6@main:
; Line 70
	push	OFFSET $SG9863
	call	_printf
	add	esp, 4
; Line 71
	push	0
	call	___acrt_iob_func
	add	esp, 4
	push	eax
	push	20					; 00000014H
	lea	eax, DWORD PTR _buffer1$[ebp]
	push	eax
	call	_fgets
	add	esp, 12					; 0000000cH
; Line 72
	lea	ecx, DWORD PTR _buffer1$[ebp]
	push	ecx
	call	_atoi
	add	esp, 4
	mov	DWORD PTR _matriculation$1[ebp], eax
; Line 73
	mov	edx, DWORD PTR _matriculation$1[ebp]
	mov	DWORD PTR _s$[ebp], edx
; Line 75
	push	OFFSET $SG9864
	call	_printf
	add	esp, 4
; Line 76
	push	0
	call	___acrt_iob_func
	add	esp, 4
	push	eax
	push	20					; 00000014H
	lea	eax, DWORD PTR _buffer2$[ebp]
	push	eax
	call	_fgets
	add	esp, 12					; 0000000cH
; Line 77
	lea	ecx, DWORD PTR _buffer2$[ebp]
	mov	DWORD PTR _s$[ebp+4], ecx
; Line 79
	push	OFFSET $SG9865
	call	_printf
	add	esp, 4
; Line 80
	push	0
	call	___acrt_iob_func
	add	esp, 4
	push	eax
	push	20					; 00000014H
	lea	edx, DWORD PTR _buffer3$[ebp]
	push	edx
	call	_fgets
	add	esp, 12					; 0000000cH
; Line 81
	lea	eax, DWORD PTR _buffer3$[ebp]
	mov	DWORD PTR _s$[ebp+8], eax
; Line 83
	jmp	SHORT $LN4@main
$LN7@main:
; Line 86
	sub	esp, 12					; 0000000cH
	mov	ecx, esp
	mov	edx, DWORD PTR _s$[ebp]
	mov	DWORD PTR [ecx], edx
	mov	eax, DWORD PTR _s$[ebp+4]
	mov	DWORD PTR [ecx+4], eax
	mov	edx, DWORD PTR _s$[ebp+8]
	mov	DWORD PTR [ecx+8], edx
	call	_printStudent
	add	esp, 12					; 0000000cH
; Line 87
	jmp	SHORT $LN4@main
$LN8@main:
; Line 90
	push	OFFSET $SG9868
	call	_printf
	add	esp, 4
; Line 91
	mov	DWORD PTR _flag$[ebp], 0
; Line 92
	jmp	SHORT $LN4@main
$LN9@main:
; Line 95
	push	OFFSET $SG9870
	call	_printf
	add	esp, 4
$LN4@main:
; Line 100
	jmp	$LN2@main
$LN3@main:
; Line 102
	xor	eax, eax
; Line 103
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_s$ = 8							; size = 12
_printStudent PROC
; File c:\set07109\workbook1-2\students.c
; Line 24
	push	ebp
	mov	ebp, esp
; Line 25
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	push	OFFSET $SG9835
	call	_printf
	add	esp, 8
; Line 26
	mov	ecx, DWORD PTR _s$[ebp+4]
	push	ecx
	push	OFFSET $SG9836
	call	_printf
	add	esp, 8
; Line 27
	mov	edx, DWORD PTR _s$[ebp+8]
	push	edx
	push	OFFSET $SG9837
	call	_printf
	add	esp, 8
; Line 28
	pop	ebp
	ret	0
_printStudent ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT _printf
_TEXT	SEGMENT
__Result$ = -8						; size = 4
__ArgList$ = -4						; size = 4
__Format$ = 8						; size = 4
_printf	PROC						; COMDAT
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 954
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 957
	lea	eax, DWORD PTR __Format$[ebp+4]
	mov	DWORD PTR __ArgList$[ebp], eax
; Line 958
	mov	ecx, DWORD PTR __ArgList$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR __Format$[ebp]
	push	edx
	push	1
	call	___acrt_iob_func
	add	esp, 4
	push	eax
	call	__vfprintf_l
	add	esp, 16					; 00000010H
	mov	DWORD PTR __Result$[ebp], eax
; Line 959
	mov	DWORD PTR __ArgList$[ebp], 0
; Line 960
	mov	eax, DWORD PTR __Result$[ebp]
; Line 961
	mov	esp, ebp
	pop	ebp
	ret	0
_printf	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT __vfprintf_l
_TEXT	SEGMENT
__Stream$ = 8						; size = 4
__Format$ = 12						; size = 4
__Locale$ = 16						; size = 4
__ArgList$ = 20						; size = 4
__vfprintf_l PROC					; COMDAT
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 642
	push	ebp
	mov	ebp, esp
; Line 643
	mov	eax, DWORD PTR __ArgList$[ebp]
	push	eax
	mov	ecx, DWORD PTR __Locale$[ebp]
	push	ecx
	mov	edx, DWORD PTR __Format$[ebp]
	push	edx
	mov	eax, DWORD PTR __Stream$[ebp]
	push	eax
	call	___local_stdio_printf_options
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	mov	edx, DWORD PTR [eax]
	push	edx
	call	___stdio_common_vfprintf
	add	esp, 24					; 00000018H
; Line 644
	pop	ebp
	ret	0
__vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ___local_stdio_printf_options
_TEXT	SEGMENT
___local_stdio_printf_options PROC			; COMDAT
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\corecrt_stdio_config.h
; Line 86
	push	ebp
	mov	ebp, esp
; Line 88
	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage
; Line 89
	pop	ebp
	ret	0
___local_stdio_printf_options ENDP
_TEXT	ENDS
END