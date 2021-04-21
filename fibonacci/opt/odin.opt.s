fib:
	0:	push   r15
	2:	push   r14
	4:	push   rbx
	5:	cmp    rdi,0x2
	9:	jge    10
	b:	xor    r15d,r15d
	e:	jmp    3c
	10:	mov    r14,rsi
	13:	xor    r15d,r15d
	16:	mov    rbx,rdi
	19:	nop    DWORD PTR [rax+0x0]
	20:	lea    rdi,[rbx-0x1]
	24:	mov    rsi,r14
	27:	call   fib
	2c:	lea    rdi,[rbx-0x2]
	30:	add    r15,rax
	33:	cmp    rbx,0x4
	37:	mov    rbx,rdi
	3a:	jge    20
	3c:	add    r15,rdi
	3f:	mov    rax,r15
	42:	pop    rbx
	43:	pop    r14
	45:	pop    r15
	47:	ret    
	48:	nop    DWORD PTR [rax+rax*1+0x0]
	4f:	
