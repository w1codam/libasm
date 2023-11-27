section .text
	global ft_strcpy

; rdi = dest
; rsi = src

ft_strcpy:
	xor		rax, rax
	jmp		check
increment:
	inc		rax
check:
	mov		dl, BYTE [ rsi + rax ]
	mov		BYTE [ rdi + rax ], dl
	cmp		BYTE [ rsi + rax ], 0
	jne		increment
return:
	mov		rax, rdi
	ret