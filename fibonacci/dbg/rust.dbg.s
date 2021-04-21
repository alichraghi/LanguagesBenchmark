fib:
	0:	sub    rsp,0x38
	4:	cmp    rdi,0x1
	8:	mov    QWORD PTR [rsp+0x28],rdi
	13:	jg     534b <fib+0x1b>
	15:	mov    rax,QWORD PTR [rsp+0x28]
	20:	mov    QWORD PTR [rsp+0x30],rax
	25:	jmp    53b8 <fib+0x88>
	27:	mov    rax,QWORD PTR [rsp+0x28]
	32:	dec    rax
	35:	seto   cl
	38:	test   cl,0x1
	41:	mov    QWORD PTR [rsp+0x20],rax
	46:	jne    53c2 <fib+0x92>
	48:	mov    rdi,QWORD PTR [rsp+0x20]
	53:	call   5330 <fib>
	58:	mov    QWORD PTR [rsp+0x18],rax
	63:	mov    rax,QWORD PTR [rsp+0x28]
	68:	sub    rax,0x2
	74:	seto   cl
	77:	test   cl,0x1
	80:	mov    QWORD PTR [rsp+0x10],rax
	85:	jne    53e0 <fib+0xb0>
	87:	mov    rdi,QWORD PTR [rsp+0x10]
	92:	call   5330 <fib>
	97:	mov    QWORD PTR [rsp+0x8],rax
	102:	mov    rax,QWORD PTR [rsp+0x18]
	107:	mov    rcx,QWORD PTR [rsp+0x8]
	112:	add    rax,rcx
	115:	seto   dl
	118:	test   dl,0x1
	121:	mov    QWORD PTR [rsp],rax
	125:	jne    53fe <fib+0xce>
	127:	mov    rax,QWORD PTR [rsp]
	131:	mov    QWORD PTR [rsp+0x30],rax
	136:	mov    rax,QWORD PTR [rsp+0x30]
	141:	add    rsp,0x38
	145:	ret    
	146:	lea    rdi,[rip+0x32c47]        # 38010 <str.0>
	153:	lea    rdx,[rip+0x40118]        # 454e8 <__do_global_dtors_aux_fini_array_entry+0x58>
	160:	lea    rax,[rip+0x2d3a9]        # 32780 <_ZN4core9panicking5panic17hdf1b6c818ad7c6adE>
	167:	mov    esi,0x21
	172:	call   rax
	174:	ud2    
	176:	lea    rdi,[rip+0x32c29]        # 38010 <str.0>
	183:	lea    rdx,[rip+0x40112]        # 45500 <__do_global_dtors_aux_fini_array_entry+0x70>
	190:	lea    rax,[rip+0x2d38b]        # 32780 <_ZN4core9panicking5panic17hdf1b6c818ad7c6adE>
	197:	mov    esi,0x21
	202:	call   rax
	204:	ud2    
	206:	lea    rdi,[rip+0x32c3b]        # 38040 <str.1>
	213:	lea    rdx,[rip+0x4010c]        # 45518 <__do_global_dtors_aux_fini_array_entry+0x88>
	220:	lea    rax,[rip+0x2d36d]        # 32780 <_ZN4core9panicking5panic17hdf1b6c818ad7c6adE>
	227:	mov    esi,0x1c
	232:	call   rax
	234:	ud2    
	236:	nop    DWORD PTR [rax+0x0]
