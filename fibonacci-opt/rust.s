fib:
	0:	push   r14
	2:	push   rbx
	3:	push   rax
	4:	mov    rbx,rdi
	7:	xor    r14d,r14d
	a:	cmp    rdi,0x2
	e:	jb     26
	10:	lea    rdi,[rbx-0x1]
	14:	call   fib
	19:	add    rbx,0xfffffffffffffffe
	1d:	add    r14,rax
	20:	cmp    rbx,0x1
	24:	ja     10
	26:	add    r14,rbx
	29:	mov    rax,r14
	2c:	add    rsp,0x8
	30:	pop    rbx
	31:	pop    r14
	33:	ret    
	34:	nop    WORD PTR cs:[rax+rax*1+0x0]
	3b:	
	3e:	xchg   ax,ax
