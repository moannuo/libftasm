section .text
	global _ft_isprint

_ft_isprint:
	enter	0, 0
	mov		rbx, rdi
	cmp		rbx, 32
	jl		false			; < 32	--> false
	cmp		rbx, 126
	jg		false			; > 126	--> false
	mov		rax, 1
	leave
	ret
false:
	mov		rax, 0
	leave
	ret
