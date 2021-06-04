section .text
	extern _ft_strlen
	global _ft_strcpy

_ft_strcpy:
		mov rcx, 0
		push rdi
		mov rdi , rsi
		call _ft_strlen
		pop rdi
		jmp copy

copy:
	mov	dl, BYTE [rsi + rcx]
	mov	BYTE [rdi + rcx], dl
	inc rcx
	cmp rcx, rax
	jbe copy

exit:
	mov	rax , rdi
	ret
