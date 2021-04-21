fib:
	0:	endbr64 
	4:	push   rbp
	5:	mov    rbp,rsp
	8:	push   rbx
	9:	sub    rsp,0x18
	d:	mov    QWORD PTR [rbp-0x18],rdi
	11:	cmp    QWORD PTR [rbp-0x18],0x1
	16:	jg     1e
	18:	mov    rax,QWORD PTR [rbp-0x18]
	1c:	jmp    44
	1e:	mov    rax,QWORD PTR [rbp-0x18]
	22:	sub    rax,0x1
	26:	mov    rdi,rax
	29:	call   11a9 <fib>
	2e:	mov    rbx,rax
	31:	mov    rax,QWORD PTR [rbp-0x18]
	35:	sub    rax,0x2
	39:	mov    rdi,rax
	3c:	call   11a9 <fib>
	41:	add    rax,rbx
	44:	mov    rbx,QWORD PTR [rbp-0x8]
	48:	leave  
	49:	ret    
