fib:
	0:	sub    rsp,0x18
	4:	cmp    rdi,0x1
	8:	setle  al
	b:	and    al,0x1
	d:	test   al,0x1
	f:	mov    QWORD PTR [rsp+0x10],rdi
	14:	mov    QWORD PTR [rsp+0x8],rsi
	19:	je     25
	1b:	mov    rax,QWORD PTR [rsp+0x10]
	20:	add    rsp,0x18
	24:	ret    
	25:	mov    rax,QWORD PTR [rsp+0x10]
	2a:	sub    rax,0x1
	30:	mov    rdi,rax
	33:	mov    rsi,QWORD PTR [rsp+0x8]
	38:	call   fib
	3d:	mov    rcx,QWORD PTR [rsp+0x10]
	42:	sub    rcx,0x2
	49:	mov    rdi,rcx
	4c:	mov    rsi,QWORD PTR [rsp+0x8]
	51:	mov    QWORD PTR [rsp],rax
	55:	call   fib
	5a:	mov    rcx,QWORD PTR [rsp]
	5e:	add    rcx,rax
	61:	mov    rax,rcx
	64:	add    rsp,0x18
	68:	ret    
	69:	nop    DWORD PTR [rax+0x0]
