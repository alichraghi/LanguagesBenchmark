fib:
	0:	push   r15
	2:	push   r14
	4:	push   rbx
	5:	cmp    rdi,0x2
	9:	jge    4097c0 <fib+0x10>
	11:	xor    r15d,r15d
	14:	jmp    4097ec <fib+0x3c>
	16:	mov    r14,rsi
	19:	xor    r15d,r15d
	22:	mov    rbx,rdi
	25:	nop    DWORD PTR [rax+0x0]
	32:	lea    rdi,[rbx-0x1]
	36:	mov    rsi,r14
	39:	call   4097b0 <fib>
	44:	lea    rdi,[rbx-0x2]
	48:	add    r15,rax
	51:	cmp    rbx,0x4
	55:	mov    rbx,rdi
	58:	jge    4097d0 <fib+0x20>
	60:	add    r15,rdi
	63:	mov    rax,r15
	66:	pop    rbx
	67:	pop    r14
	69:	pop    r15
	71:	ret    
	72:	nop    DWORD PTR [rax+rax*1+0x0]
	79:	
