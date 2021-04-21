fib:
	0:	sub    rsp,0x18
	4:	cmp    rdi,0x1
	8:	setle  al
	11:	and    al,0x1
	13:	test   al,0x1
	15:	mov    QWORD PTR [rsp+0x10],rdi
	20:	mov    QWORD PTR [rsp+0x8],rsi
	25:	je     40bf95 <fib+0x25>
	27:	mov    rax,QWORD PTR [rsp+0x10]
	32:	add    rsp,0x18
	36:	ret    
	37:	mov    rax,QWORD PTR [rsp+0x10]
	42:	sub    rax,0x1
	48:	mov    rdi,rax
	51:	mov    rsi,QWORD PTR [rsp+0x8]
	56:	call   40bf70 <fib>
	61:	mov    rcx,QWORD PTR [rsp+0x10]
	66:	sub    rcx,0x2
	73:	mov    rdi,rcx
	76:	mov    rsi,QWORD PTR [rsp+0x8]
	81:	mov    QWORD PTR [rsp],rax
	85:	call   40bf70 <fib>
	90:	mov    rcx,QWORD PTR [rsp]
	94:	add    rcx,rax
	97:	mov    rax,rcx
	100:	add    rsp,0x18
	104:	ret    
	105:	nop    DWORD PTR [rax+0x0]
