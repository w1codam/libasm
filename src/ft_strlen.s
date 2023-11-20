section .text
	global _ft_strlen

_ft_strlen:
	xor		rax, rax
	cmp		rdi, 0
	je		return
	jmp		check
increment:
	add		rax, 1
check:
	cmp		BYTE [rdi + rax], 0
	jne		increment
return:
	ret