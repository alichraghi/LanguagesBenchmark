fib:
	0:	push   r14
	2:	push   rbx
	3:	sub    rsp,0x8
	7:	xor    r14d,r14d
	10:	cmp    rdi,0x2
	14:	jl     5249 <fib+0x39>
	20:	mov    rbx,rdi
	23:	nop    WORD PTR [rax+rax*1+0x0]
	30:	
	32:	lea    rdi,[rbx-0x1]
	36:	call   5210 <fib>
	41:	lea    rdi,[rbx-0x2]
	45:	add    r14,rax
	48:	cmp    rbx,0x3
	52:	mov    rbx,rdi
	55:	jg     5230 <fib+0x20>
	57:	add    r14,rdi
	60:	mov    rax,r14
	63:	add    rsp,0x8
	67:	pop    rbx
	68:	pop    r14
	70:	ret    
	71:	nop    WORD PTR [rax+rax*1+0x0]
	78:	
