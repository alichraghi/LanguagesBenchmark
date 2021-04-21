fib:
	0:	endbr64 
	4:	push   r15
	6:	push   r14
	8:	push   r13
	a:	push   r12
	c:	push   rbp
	d:	push   rbx
	e:	sub    rsp,0x88
	15:	mov    QWORD PTR [rsp+0x20],rdi
	1a:	mov    QWORD PTR [rsp+0x8],rdi
	1f:	mov    QWORD PTR [rsp+0x28],0x0
	26:	
	28:	cmp    rdi,0x1
	2c:	jle    26c
	32:	mov    QWORD PTR [rsp+0x30],0x0
	39:	
	3b:	mov    rax,QWORD PTR [rsp+0x8]
	40:	sub    rax,0x1
	44:	mov    QWORD PTR [rsp+0x18],rax
	49:	cmp    rax,0x1
	4d:	je     240
	53:	mov    QWORD PTR [rsp+0x38],0x0
	5a:	
	5c:	mov    rax,QWORD PTR [rsp+0x18]
	61:	sub    rax,0x1
	65:	mov    QWORD PTR [rsp+0x10],rax
	6a:	cmp    rax,0x1
	6e:	je     215
	74:	mov    QWORD PTR [rsp+0x40],0x0
	7b:	
	7d:	mov    rax,QWORD PTR [rsp+0x10]
	82:	lea    r9,[rax-0x1]
	86:	cmp    r9,0x1
	8a:	je     2af
	90:	lea    r12,[r9-0x1]
	94:	xor    r15d,r15d
	97:	cmp    r12,0x1
	9b:	je     2a4
	a1:	lea    rbx,[r12-0x1]
	a6:	xor    edx,edx
	a8:	cmp    rbx,0x1
	ac:	je     29a
	b2:	cmp    rbx,0x2
	b6:	je     283
	bc:	lea    r13,[rbx-0x3]
	c0:	lea    rsi,[rbx-0x6]
	c4:	xor    r8d,r8d
	c7:	mov    rax,r13
	ca:	lea    r10,[rbx-0x4]
	ce:	and    rax,0xfffffffffffffffe
	d2:	sub    rsi,rax
	d5:	lea    rbp,[r10+0x2]
	d9:	xor    ecx,ecx
	db:	cmp    r10,0xffffffffffffffff
	df:	je     176
	e5:	lea    r14,[rbp-0x1]
	e9:	xor    r11d,r11d
	ec:	cmp    r14,0x1
	f0:	je     290
	f6:	lea    rdi,[r14-0x1]
	fa:	mov    QWORD PTR [rsp+0x78],r10
	ff:	sub    r14,0x2
	103:	mov    QWORD PTR [rsp+0x70],rsi
	108:	mov    QWORD PTR [rsp+0x68],r11
	10d:	mov    QWORD PTR [rsp+0x60],rcx
	112:	mov    QWORD PTR [rsp+0x58],r8
	117:	mov    QWORD PTR [rsp+0x50],rdx
	11c:	mov    QWORD PTR [rsp+0x48],r9
	121:	call   1200 <fib>
	126:	mov    r11,QWORD PTR [rsp+0x68]
	12b:	mov    r9,QWORD PTR [rsp+0x48]
	130:	mov    rdx,QWORD PTR [rsp+0x50]
	135:	mov    r8,QWORD PTR [rsp+0x58]
	13a:	add    r11,rax
	13d:	cmp    r14,0x1
	141:	mov    rcx,QWORD PTR [rsp+0x60]
	146:	mov    rsi,QWORD PTR [rsp+0x70]
	14b:	mov    r10,QWORD PTR [rsp+0x78]
	150:	jg     f6
	152:	lea    rax,[rbp-0x3]
	156:	and    eax,0x1
	159:	add    rax,r11
	15c:	sub    rbp,0x2
	160:	add    rcx,rax
	163:	cmp    rbp,0x1
	167:	jg     e5
	16d:	mov    rbp,r10
	170:	and    ebp,0x1
	173:	add    rbp,rcx
	176:	sub    r10,0x2
	17a:	add    r8,rbp
	17d:	cmp    rsi,r10
	180:	jne    d5
	186:	and    r13d,0x1
	18a:	lea    rax,[r13+r8*1+0x0]
	18f:	sub    rbx,0x2
	193:	add    rdx,rax
	196:	cmp    rbx,0x1
	19a:	jg     b2
	1a0:	lea    rax,[r12-0x3]
	1a5:	and    eax,0x1
	1a8:	add    rax,rdx
	1ab:	sub    r12,0x2
	1af:	add    r15,rax
	1b2:	cmp    r12,0x1
	1b6:	jg     a1
	1bc:	lea    rax,[r9-0x3]
	1c0:	and    eax,0x1
	1c3:	add    r15,rax
	1c6:	sub    r9,0x2
	1ca:	add    QWORD PTR [rsp+0x40],r15
	1cf:	cmp    r9,0x1
	1d3:	jg     90
	1d9:	mov    rax,QWORD PTR [rsp+0x10]
	1de:	sub    rax,0x3
	1e2:	and    eax,0x1
	1e5:	add    rax,QWORD PTR [rsp+0x40]
	1ea:	sub    QWORD PTR [rsp+0x10],0x2
	1f0:	mov    rdi,QWORD PTR [rsp+0x10]
	1f5:	add    QWORD PTR [rsp+0x38],rax
	1fa:	cmp    rdi,0x1
	1fe:	jg     74
	204:	mov    rax,QWORD PTR [rsp+0x18]
	209:	sub    rax,0x3
	20d:	and    eax,0x1
	210:	add    rax,QWORD PTR [rsp+0x38]
	215:	sub    QWORD PTR [rsp+0x18],0x2
	21b:	mov    rdi,QWORD PTR [rsp+0x18]
	220:	add    QWORD PTR [rsp+0x30],rax
	225:	cmp    rdi,0x1
	229:	jg     53
	22f:	mov    rax,QWORD PTR [rsp+0x8]
	234:	sub    rax,0x3
	238:	and    eax,0x1
	23b:	add    rax,QWORD PTR [rsp+0x30]
	240:	sub    QWORD PTR [rsp+0x8],0x2
	246:	mov    rdi,QWORD PTR [rsp+0x8]
	24b:	add    QWORD PTR [rsp+0x28],rax
	250:	cmp    rdi,0x1
	254:	jg     32
	25a:	mov    rax,QWORD PTR [rsp+0x20]
	25f:	and    eax,0x1
	262:	add    rax,QWORD PTR [rsp+0x28]
	267:	mov    QWORD PTR [rsp+0x20],rax
	26c:	mov    rax,QWORD PTR [rsp+0x20]
	271:	add    rsp,0x88
	278:	pop    rbx
	279:	pop    rbp
	27a:	pop    r12
	27c:	pop    r13
	27e:	pop    r14
	280:	pop    r15
	282:	ret    
	283:	mov    eax,0x1
	288:	jmp    18f
	28d:	nop    DWORD PTR [rax]
	290:	mov    eax,0x1
	295:	jmp    15c
	29a:	mov    eax,0x1
	29f:	jmp    1ab
	2a4:	mov    r15d,0x1
	2aa:	jmp    1c6
	2af:	mov    eax,0x1
	2b4:	jmp    1ea
	2b9:	nop    DWORD PTR [rax+0x0]
