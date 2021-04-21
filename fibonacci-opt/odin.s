fib:
	0:	push   r15
	2:	push   r14
	4:	push   rbx
	5:	mov    rbx,rdi
	8:	cmp    rdi,0x2
	c:	jae    13
	e:	xor    r14d,r14d
	11:	jmp    39
	13:	mov    r15,rsi
	16:	xor    r14d,r14d
	19:	nop    DWORD PTR [rax+0x0]
	20:	lea    rdi,[rbx-0x1]
	24:	mov    rsi,r15
	27:	call   fib
	2c:	add    rbx,0xfffffffffffffffe
	30:	add    r14,rax
	33:	cmp    rbx,0x2
	37:	jae    20
	39:	add    r14,rbx
	3c:	mov    rax,r14
	3f:	pop    rbx
	40:	pop    r14
	42:	pop    r15
	44:	ret    
	45:	nop    WORD PTR cs:[rax+rax*1+0x0]
	4c:	
	4f:	nop
