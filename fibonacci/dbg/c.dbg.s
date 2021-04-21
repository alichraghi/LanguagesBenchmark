fib:
	0:	endbr64 
	4:	push   rbp
	5:	mov    rbp,rsp
	8:	push   rbx
	9:	sub    rsp,0x18
	13:	mov    QWORD PTR [rbp-0x18],rdi
	17:	cmp    QWORD PTR [rbp-0x18],0x1
	22:	jg     1167 <fib+0x1e>
	24:	mov    rax,QWORD PTR [rbp-0x18]
	28:	jmp    118d <fib+0x44>
	30:	mov    rax,QWORD PTR [rbp-0x18]
	34:	sub    rax,0x1
	38:	mov    rdi,rax
	41:	call   1149 <fib>
	46:	mov    rbx,rax
	49:	mov    rax,QWORD PTR [rbp-0x18]
	53:	sub    rax,0x2
	57:	mov    rdi,rax
	60:	call   1149 <fib>
	65:	add    rax,rbx
	68:	mov    rbx,QWORD PTR [rbp-0x8]
	72:	leave  
	73:	ret    
