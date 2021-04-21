fib:
	0:	endbr64 
	4:	push   r15
	6:	mov    rax,rdi
	9:	push   r14
	b:	push   r13
	d:	push   r12
	f:	push   rbp
	10:	push   rbx
	11:	sub    rsp,0xa8
	18:	mov    QWORD PTR [rsp+0x20],rdi
	1d:	sub    rdi,0x1
	21:	mov    QWORD PTR [rsp+0x8],rdi
	26:	mov    QWORD PTR [rsp+0x28],0x0
	2d:	
	2f:	cmp    rax,0x1
	33:	jbe    387
	39:	cmp    QWORD PTR [rsp+0x8],0x1
	3f:	je     353
	45:	mov    QWORD PTR [rsp+0x30],0x0
	4c:	
	4e:	mov    rax,QWORD PTR [rsp+0x8]
	53:	sub    rax,0x1
	57:	mov    QWORD PTR [rsp+0x10],rax
	5c:	cmp    QWORD PTR [rsp+0x10],0x1
	62:	mov    QWORD PTR [rsp+0x48],rax
	67:	je     302
	6d:	mov    QWORD PTR [rsp+0x38],0x0
	74:	
	76:	mov    rax,QWORD PTR [rsp+0x10]
	7b:	sub    rax,0x1
	7f:	mov    QWORD PTR [rsp+0x18],rax
	84:	cmp    QWORD PTR [rsp+0x18],0x1
	8a:	mov    QWORD PTR [rsp+0x50],rax
	8f:	je     2b1
	95:	mov    QWORD PTR [rsp+0x40],0x0
	9c:	
	9e:	mov    rax,QWORD PTR [rsp+0x18]
	a3:	sub    rax,0x1
	a7:	mov    r11,rax
	aa:	mov    QWORD PTR [rsp+0x58],rax
	af:	cmp    r11,0x1
	b3:	je     260
	b9:	lea    rax,[r11-0x1]
	bd:	xor    ecx,ecx
	bf:	mov    rbx,rax
	c2:	mov    QWORD PTR [rsp+0x60],rax
	c7:	mov    r15,rcx
	ca:	cmp    rbx,0x1
	ce:	je     220
	d4:	lea    r14,[rbx-0x1]
	d8:	xor    edx,edx
	da:	mov    r12,r14
	dd:	cmp    r12,0x1
	e1:	je     399
	e7:	lea    r13,[r12-0x2]
	ec:	xor    ecx,ecx
	ee:	mov    rsi,r13
	f1:	mov    rbp,rsi
	f4:	xor    r8d,r8d
	f7:	test   rsi,rsi
	fa:	je     3c0
	100:	mov    r10,rbp
	103:	xor    r9d,r9d
	106:	cmp    rbp,0x1
	10a:	je     1b1
	110:	lea    rdi,[r10-0x1]
	114:	mov    QWORD PTR [rsp+0x98],rsi
	11b:	
	11c:	mov    QWORD PTR [rsp+0x90],r11
	123:	
	124:	mov    QWORD PTR [rsp+0x88],r9
	12b:	
	12c:	mov    QWORD PTR [rsp+0x80],r8
	133:	
	134:	mov    QWORD PTR [rsp+0x78],rcx
	139:	mov    QWORD PTR [rsp+0x70],rdx
	13e:	mov    QWORD PTR [rsp+0x68],r10
	143:	call   fib
	148:	mov    r10,QWORD PTR [rsp+0x68]
	14d:	mov    rdx,QWORD PTR [rsp+0x70]
	152:	mov    r9,QWORD PTR [rsp+0x88]
	159:	
	15a:	mov    rcx,QWORD PTR [rsp+0x78]
	15f:	sub    r10,0x2
	163:	mov    r8,QWORD PTR [rsp+0x80]
	16a:	
	16b:	mov    r11,QWORD PTR [rsp+0x90]
	172:	
	173:	add    r9,rax
	176:	cmp    r10,0x1
	17a:	mov    rsi,QWORD PTR [rsp+0x98]
	181:	
	182:	ja     110
	184:	mov    rax,rbp
	187:	lea    rdi,[rbp-0x2]
	18b:	sub    rbp,0x1
	18f:	and    eax,0x1
	192:	add    rax,r9
	195:	add    r8,rax
	198:	cmp    rbp,0x1
	19c:	jbe    1ca
	19e:	mov    rbp,rdi
	1a1:	xor    r9d,r9d
	1a4:	mov    r10,rbp
	1a7:	cmp    rbp,0x1
	1ab:	jne    110
	1b1:	mov    eax,0x1
	1b6:	sub    rbp,0x1
	1ba:	mov    rdi,0xffffffffffffffff
	1c1:	add    r8,rax
	1c4:	cmp    rbp,0x1
	1c8:	ja     19e
	1ca:	lea    rax,[rsi-0x1]
	1ce:	and    eax,0x1
	1d1:	add    rax,r8
	1d4:	add    rcx,rax
	1d7:	lea    rax,[rsi-0x2]
	1db:	cmp    rsi,0x1
	1df:	ja     3d6
	1e5:	mov    rax,r13
	1e8:	sub    r12,0x1
	1ec:	and    eax,0x1
	1ef:	add    rax,rcx
	1f2:	add    rdx,rax
	1f5:	cmp    r12,0x1
	1f9:	ja     3b6
	1ff:	lea    rcx,[rbx-0x2]
	203:	and    ebx,0x1
	206:	lea    rax,[rbx+rdx*1]
	20a:	add    r15,rax
	20d:	cmp    r14,0x1
	211:	jbe    238
	213:	mov    rbx,rcx
	216:	cmp    rbx,0x1
	21a:	jne    d4
	220:	mov    eax,0x1
	225:	xor    r14d,r14d
	228:	mov    rcx,0xffffffffffffffff
	22f:	add    r15,rax
	232:	cmp    r14,0x1
	236:	ja     213
	238:	mov    rcx,r15
	23b:	lea    rax,[r11-0x2]
	23f:	and    r11d,0x1
	243:	add    rcx,r11
	246:	add    QWORD PTR [rsp+0x40],rcx
	24b:	cmp    QWORD PTR [rsp+0x60],0x1
	251:	jbe    282
	253:	mov    r11,rax
	256:	cmp    r11,0x1
	25a:	jne    b9
	260:	mov    QWORD PTR [rsp+0x60],0x0
	267:	
	269:	mov    ecx,0x1
	26e:	mov    rax,0xffffffffffffffff
	275:	add    QWORD PTR [rsp+0x40],rcx
	27a:	cmp    QWORD PTR [rsp+0x60],0x1
	280:	ja     253
	282:	mov    rax,QWORD PTR [rsp+0x18]
	287:	lea    rdx,[rax-0x2]
	28b:	and    eax,0x1
	28e:	add    rax,QWORD PTR [rsp+0x40]
	293:	add    QWORD PTR [rsp+0x38],rax
	298:	cmp    QWORD PTR [rsp+0x58],0x1
	29e:	jbe    2d3
	2a0:	mov    QWORD PTR [rsp+0x18],rdx
	2a5:	cmp    QWORD PTR [rsp+0x18],0x1
	2ab:	jne    95
	2b1:	mov    QWORD PTR [rsp+0x58],0x0
	2b8:	
	2ba:	mov    eax,0x1
	2bf:	mov    rdx,0xffffffffffffffff
	2c6:	add    QWORD PTR [rsp+0x38],rax
	2cb:	cmp    QWORD PTR [rsp+0x58],0x1
	2d1:	ja     2a0
	2d3:	mov    rax,QWORD PTR [rsp+0x10]
	2d8:	lea    rdx,[rax-0x2]
	2dc:	and    eax,0x1
	2df:	add    rax,QWORD PTR [rsp+0x38]
	2e4:	add    QWORD PTR [rsp+0x30],rax
	2e9:	cmp    QWORD PTR [rsp+0x50],0x1
	2ef:	jbe    324
	2f1:	mov    QWORD PTR [rsp+0x10],rdx
	2f6:	cmp    QWORD PTR [rsp+0x10],0x1
	2fc:	jne    6d
	302:	mov    QWORD PTR [rsp+0x50],0x0
	309:	
	30b:	mov    eax,0x1
	310:	mov    rdx,0xffffffffffffffff
	317:	add    QWORD PTR [rsp+0x30],rax
	31c:	cmp    QWORD PTR [rsp+0x50],0x1
	322:	ja     2f1
	324:	mov    rax,QWORD PTR [rsp+0x8]
	329:	lea    rdx,[rax-0x2]
	32d:	and    eax,0x1
	330:	add    rax,QWORD PTR [rsp+0x30]
	335:	add    QWORD PTR [rsp+0x28],rax
	33a:	cmp    QWORD PTR [rsp+0x48],0x1
	340:	jbe    375
	342:	mov    QWORD PTR [rsp+0x8],rdx
	347:	cmp    QWORD PTR [rsp+0x8],0x1
	34d:	jne    45
	353:	mov    QWORD PTR [rsp+0x48],0x0
	35a:	
	35c:	mov    eax,0x1
	361:	mov    rdx,0xffffffffffffffff
	368:	add    QWORD PTR [rsp+0x28],rax
	36d:	cmp    QWORD PTR [rsp+0x48],0x1
	373:	ja     342
	375:	mov    rax,QWORD PTR [rsp+0x20]
	37a:	and    eax,0x1
	37d:	add    rax,QWORD PTR [rsp+0x28]
	382:	mov    QWORD PTR [rsp+0x20],rax
	387:	add    rsp,0xa8
	38e:	pop    rbx
	38f:	pop    rbp
	390:	pop    r12
	392:	pop    r13
	394:	pop    r14
	396:	pop    r15
	398:	ret    
	399:	mov    eax,0x1
	39e:	sub    r12,0x1
	3a2:	mov    r13,0xffffffffffffffff
	3a9:	add    rdx,rax
	3ac:	cmp    r12,0x1
	3b0:	jbe    1ff
	3b6:	mov    r12,r13
	3b9:	jmp    dd
	3be:	xchg   ax,ax
	3c0:	mov    eax,0x1
	3c5:	add    rcx,rax
	3c8:	lea    rax,[rsi-0x2]
	3cc:	cmp    rsi,0x1
	3d0:	jbe    1e5
	3d6:	mov    rsi,rax
	3d9:	jmp    f1
	3de:	xchg   ax,ax
