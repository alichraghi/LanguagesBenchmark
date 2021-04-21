fib:
	0:	endbr64 
	4:	push   r15
	6:	push   r14
	8:	push   r13
	10:	push   r12
	12:	push   rbp
	13:	push   rbx
	14:	sub    rsp,0x88
	21:	mov    QWORD PTR [rsp+0x20],rdi
	26:	mov    QWORD PTR [rsp+0x8],rdi
	31:	mov    QWORD PTR [rsp+0x28],0x0
	38:	
	40:	cmp    rdi,0x1
	44:	jle    146c <fib+0x26c>
	50:	mov    QWORD PTR [rsp+0x30],0x0
	57:	
	59:	mov    rax,QWORD PTR [rsp+0x8]
	64:	sub    rax,0x1
	68:	mov    QWORD PTR [rsp+0x18],rax
	73:	cmp    rax,0x1
	77:	je     1440 <fib+0x240>
	83:	mov    QWORD PTR [rsp+0x38],0x0
	90:	
	92:	mov    rax,QWORD PTR [rsp+0x18]
	97:	sub    rax,0x1
	101:	mov    QWORD PTR [rsp+0x10],rax
	106:	cmp    rax,0x1
	110:	je     1415 <fib+0x215>
	116:	mov    QWORD PTR [rsp+0x40],0x0
	123:	
	125:	mov    rax,QWORD PTR [rsp+0x10]
	130:	lea    r9,[rax-0x1]
	134:	cmp    r9,0x1
	138:	je     14af <fib+0x2af>
	144:	lea    r12,[r9-0x1]
	148:	xor    r15d,r15d
	151:	cmp    r12,0x1
	155:	je     14a4 <fib+0x2a4>
	161:	lea    rbx,[r12-0x1]
	166:	xor    edx,edx
	168:	cmp    rbx,0x1
	172:	je     149a <fib+0x29a>
	178:	cmp    rbx,0x2
	182:	je     1483 <fib+0x283>
	188:	lea    r13,[rbx-0x3]
	192:	lea    rsi,[rbx-0x6]
	196:	xor    r8d,r8d
	199:	mov    rax,r13
	202:	lea    r10,[rbx-0x4]
	206:	and    rax,0xfffffffffffffffe
	210:	sub    rsi,rax
	213:	lea    rbp,[r10+0x2]
	217:	xor    ecx,ecx
	219:	cmp    r10,0xffffffffffffffff
	223:	je     1376 <fib+0x176>
	229:	lea    r14,[rbp-0x1]
	233:	xor    r11d,r11d
	236:	cmp    r14,0x1
	240:	je     1490 <fib+0x290>
	246:	lea    rdi,[r14-0x1]
	250:	mov    QWORD PTR [rsp+0x78],r10
	255:	sub    r14,0x2
	259:	mov    QWORD PTR [rsp+0x70],rsi
	264:	mov    QWORD PTR [rsp+0x68],r11
	269:	mov    QWORD PTR [rsp+0x60],rcx
	274:	mov    QWORD PTR [rsp+0x58],r8
	279:	mov    QWORD PTR [rsp+0x50],rdx
	284:	mov    QWORD PTR [rsp+0x48],r9
	289:	call   1200 <fib>
	294:	mov    r11,QWORD PTR [rsp+0x68]
	299:	mov    r9,QWORD PTR [rsp+0x48]
	304:	mov    rdx,QWORD PTR [rsp+0x50]
	309:	mov    r8,QWORD PTR [rsp+0x58]
	314:	add    r11,rax
	317:	cmp    r14,0x1
	321:	mov    rcx,QWORD PTR [rsp+0x60]
	326:	mov    rsi,QWORD PTR [rsp+0x70]
	331:	mov    r10,QWORD PTR [rsp+0x78]
	336:	jg     12f6 <fib+0xf6>
	338:	lea    rax,[rbp-0x3]
	342:	and    eax,0x1
	345:	add    rax,r11
	348:	sub    rbp,0x2
	352:	add    rcx,rax
	355:	cmp    rbp,0x1
	359:	jg     12e5 <fib+0xe5>
	365:	mov    rbp,r10
	368:	and    ebp,0x1
	371:	add    rbp,rcx
	374:	sub    r10,0x2
	378:	add    r8,rbp
	381:	cmp    rsi,r10
	384:	jne    12d5 <fib+0xd5>
	390:	and    r13d,0x1
	394:	lea    rax,[r13+r8*1+0x0]
	399:	sub    rbx,0x2
	403:	add    rdx,rax
	406:	cmp    rbx,0x1
	410:	jg     12b2 <fib+0xb2>
	416:	lea    rax,[r12-0x3]
	421:	and    eax,0x1
	424:	add    rax,rdx
	427:	sub    r12,0x2
	431:	add    r15,rax
	434:	cmp    r12,0x1
	438:	jg     12a1 <fib+0xa1>
	444:	lea    rax,[r9-0x3]
	448:	and    eax,0x1
	451:	add    r15,rax
	454:	sub    r9,0x2
	458:	add    QWORD PTR [rsp+0x40],r15
	463:	cmp    r9,0x1
	467:	jg     1290 <fib+0x90>
	473:	mov    rax,QWORD PTR [rsp+0x10]
	478:	sub    rax,0x3
	482:	and    eax,0x1
	485:	add    rax,QWORD PTR [rsp+0x40]
	490:	sub    QWORD PTR [rsp+0x10],0x2
	496:	mov    rdi,QWORD PTR [rsp+0x10]
	501:	add    QWORD PTR [rsp+0x38],rax
	506:	cmp    rdi,0x1
	510:	jg     1274 <fib+0x74>
	516:	mov    rax,QWORD PTR [rsp+0x18]
	521:	sub    rax,0x3
	525:	and    eax,0x1
	528:	add    rax,QWORD PTR [rsp+0x38]
	533:	sub    QWORD PTR [rsp+0x18],0x2
	539:	mov    rdi,QWORD PTR [rsp+0x18]
	544:	add    QWORD PTR [rsp+0x30],rax
	549:	cmp    rdi,0x1
	553:	jg     1253 <fib+0x53>
	559:	mov    rax,QWORD PTR [rsp+0x8]
	564:	sub    rax,0x3
	568:	and    eax,0x1
	571:	add    rax,QWORD PTR [rsp+0x30]
	576:	sub    QWORD PTR [rsp+0x8],0x2
	582:	mov    rdi,QWORD PTR [rsp+0x8]
	587:	add    QWORD PTR [rsp+0x28],rax
	592:	cmp    rdi,0x1
	596:	jg     1232 <fib+0x32>
	602:	mov    rax,QWORD PTR [rsp+0x20]
	607:	and    eax,0x1
	610:	add    rax,QWORD PTR [rsp+0x28]
	615:	mov    QWORD PTR [rsp+0x20],rax
	620:	mov    rax,QWORD PTR [rsp+0x20]
	625:	add    rsp,0x88
	632:	pop    rbx
	633:	pop    rbp
	634:	pop    r12
	636:	pop    r13
	638:	pop    r14
	640:	pop    r15
	642:	ret    
	643:	mov    eax,0x1
	648:	jmp    138f <fib+0x18f>
	653:	nop    DWORD PTR [rax]
	656:	mov    eax,0x1
	661:	jmp    135c <fib+0x15c>
	666:	mov    eax,0x1
	671:	jmp    13ab <fib+0x1ab>
	676:	mov    r15d,0x1
	682:	jmp    13c6 <fib+0x1c6>
	687:	mov    eax,0x1
	692:	jmp    13ea <fib+0x1ea>
	697:	nop    DWORD PTR [rax+0x0]
