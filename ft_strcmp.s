section .text
	global _ft_strcmp

_ft_strcmp:
	mov rax, 0
	mov rcx, -1
	mov r9, 0
	mov r10, 0
	jmp compare

compare:
	inc rcx
	mov	r9b, BYTE [rdi + rcx]
	mov	r10b, BYTE [rsi + rcx]
	cmp r9, 0
	je exit
	cmp r10, 0
	je exit
    cmp r9b, r10b
    jne exit
	jmp compare


exit:
    mov rax, r9
	mov rbx, r10
	sub rax, rbx
	ret
