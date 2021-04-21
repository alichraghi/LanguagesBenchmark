fib:
	0:	sub    rsp,0x38
	4:	cmp    rdi,0x1
	8:	mov    QWORD PTR [rsp+0x28],rdi
	d:	jg     1b
	f:	mov    rax,QWORD PTR [rsp+0x28]
	14:	mov    QWORD PTR [rsp+0x30],rax
	19:	jmp    88
	1b:	mov    rax,QWORD PTR [rsp+0x28]
	20:	dec    rax
	23:	seto   cl
	26:	test   cl,0x1
	29:	mov    QWORD PTR [rsp+0x20],rax
	2e:	jne    92
	30:	mov    rdi,QWORD PTR [rsp+0x20]
	35:	call   fib
	3a:	mov    QWORD PTR [rsp+0x18],rax
	3f:	mov    rax,QWORD PTR [rsp+0x28]
	44:	sub    rax,0x2
	4a:	seto   cl
	4d:	test   cl,0x1
	50:	mov    QWORD PTR [rsp+0x10],rax
	55:	jne    b0
	57:	mov    rdi,QWORD PTR [rsp+0x10]
	5c:	call   fib
	61:	mov    QWORD PTR [rsp+0x8],rax
	66:	mov    rax,QWORD PTR [rsp+0x18]
	6b:	mov    rcx,QWORD PTR [rsp+0x8]
	70:	add    rax,rcx
	73:	seto   dl
	76:	test   dl,0x1
	79:	mov    QWORD PTR [rsp],rax
	7d:	jne    ce
	7f:	mov    rax,QWORD PTR [rsp]
	83:	mov    QWORD PTR [rsp+0x30],rax
	88:	mov    rax,QWORD PTR [rsp+0x30]
	8d:	add    rsp,0x38
	91:	ret    
	92:	lea    rdi,[rip+0x32c47]        # 38010 <str.0>
	99:	lea    rdx,[rip+0x40118]        # 454e8 <__do_global_dtors_aux_fini_array_entry+0x58>
	a0:	lea    rax,[rip+0x2d3a9]        # 32780 <_ZN4core9panicking5panic17hdf1b6c818ad7c6adE>
	a7:	mov    esi,0x21
	ac:	call   rax
	ae:	ud2    
	b0:	lea    rdi,[rip+0x32c29]        # 38010 <str.0>
	b7:	lea    rdx,[rip+0x40112]        # 45500 <__do_global_dtors_aux_fini_array_entry+0x70>
	be:	lea    rax,[rip+0x2d38b]        # 32780 <_ZN4core9panicking5panic17hdf1b6c818ad7c6adE>
	c5:	mov    esi,0x21
	ca:	call   rax
	cc:	ud2    
	ce:	lea    rdi,[rip+0x32c3b]        # 38040 <str.1>
	d5:	lea    rdx,[rip+0x4010c]        # 45518 <__do_global_dtors_aux_fini_array_entry+0x88>
	dc:	lea    rax,[rip+0x2d36d]        # 32780 <_ZN4core9panicking5panic17hdf1b6c818ad7c6adE>
	e3:	mov    esi,0x1c
	e8:	call   rax
	ea:	ud2    
	ec:	nop    DWORD PTR [rax+0x0]
