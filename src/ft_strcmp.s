section .text
	global ft_strcmp

; rdi = str1
; rsi = str2

ft_strcmp:
	cmp		rdi, rsi
	je		equal		; if rdi and rsi point to the same string, return 0
	xor		r8, r8		; use r8 as index
compare:
	mov		r9b, BYTE [ rdi + r8 ]
	cmp		r9b, BYTE [ rsi + r8 ]
	jl		less
	jg		greater
	cmp		BYTE [ rdi + r8 ], 0	; check for end of string
	je		equal
	inc		r8
	jmp		compare
equal:
	xor		eax, eax
	ret
less:
	xor		eax, eax
	movsx	eax, BYTE [ rdi + r8 ]	; move sign extend
	movsx	r9d, BYTE [ rsi + r8 ]
	sub		eax, r9d
	ret
greater:
	xor		eax, eax
	mov		al, BYTE [ rdi + r8 ]
	sub		al, BYTE [ rsi + r8 ]
	ret