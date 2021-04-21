fib:
	0:	push   r14
	2:	push   rbx
	3:	sub    rsp,0x8
	7:	xor    r14d,r14d
	a:	cmp    rdi,0x2
	e:	jl     39
	14:	mov    rbx,rdi
	17:	nop    WORD PTR [rax+rax*1+0x0]
	1e:	
	20:	lea    rdi,[rbx-0x1]
	24:	call   5210 <fib>
	29:	lea    rdi,[rbx-0x2]
	2d:	add    r14,rax
	30:	cmp    rbx,0x3
	34:	mov    rbx,rdi
	37:	jg     20
	39:	add    r14,rdi
	3c:	mov    rax,r14
	3f:	add    rsp,0x8
	43:	pop    rbx
	44:	pop    r14
	46:	ret    
	47:	nop    WORD PTR [rax+rax*1+0x0]
	4e:	
