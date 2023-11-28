section .text
	global ft_read

ft_read:
	mov		rax, 0
	syscall
	cmp		rax, 0
	jge		return		; if the syscall 'failed', it would put the negative value of errno in rax
	mov		rax, -1
return:
	ret