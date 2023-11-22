section .text
	global ft_strcmp

; rdi = str1
; rsi = str2
; compare rdi and rsi, if equal, ret 0
; for each iteration, check if rdi[i] = 0, if that is the case, return whether rsi[i] is bigger, equal or smaller
; if rdi[i] is not 0, compare with rsi[i] and return whether its bigger, equal or smaller

ft_strcmp:
	cmp		rdi, rsi
	je		equal		; if rdi and rsi point to the same string, return 0
	xor		r8, r8		; use r8 as index
compare:
	mov		r9b, BYTE [ rdi + r8 ]
	cmp		r9b, BYTE [ rsi + r8 ]
	; cmp		BYTE [ rdi + r8 ], BYTE [ rsi + r8 ]
	jne		not_equal
; now we check if one of em is 0
	cmp		BYTE [ rdi + r8 ], 0
	je		equal
; now we continue with da loop
	add		r8, 1
	jmp		compare
equal:
	xor		rax, rax
	ret
not_equal:
; we should check flags here to check which str was actually bigger
; for now, ret 1 to indicate a dif
	mov		rax, 1
	ret