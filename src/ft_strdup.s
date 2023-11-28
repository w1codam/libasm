section .text
	global ft_strdup
	extern ft_strlen
	extern ft_strcpy
	extern malloc

; rdi = s

ft_strdup:
	call	ft_strlen
	push	rdi
	mov		rdi, rax	; put result of strlen in rdi
	inc		rdi			; 0 byte
	call	malloc
	pop		rsi			; rsi = src for ft_strcpy
	cmp		rax, 0		; check malloc return
	jz		failure

	; rdi = dest
	mov		rdi, rax
	call	ft_strcpy
	jmp		return
failure:
	xor		rax, rax
return:
	ret