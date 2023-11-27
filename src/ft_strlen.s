section .text
	global ft_strlen

ft_strlen:
	xor		rax, rax
	jmp		check
increment:
	inc		rax
check:
	cmp		BYTE [ rdi + rax ], 0
	jne		increment
return:
	ret