
_shm_cnt:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
   struct uspinlock lock;
   int cnt;
};

int main(int argc, char *argv[])
{
    1000:	55                   	push   %ebp
    1001:	89 e5                	mov    %esp,%ebp
    1003:	57                   	push   %edi
    1004:	56                   	push   %esi
    1005:	53                   	push   %ebx
		counter->cnt++;
		printf(1, "current count: %d\n", counter->cnt);
     		urelease(&(counter->lock));
		printf(1, "urelease check\n");

     		if(i%1000 == 0)
    1006:	bb d3 4d 62 10       	mov    $0x10624dd3,%ebx
{
    100b:	83 e4 f0             	and    $0xfffffff0,%esp
    100e:	83 ec 30             	sub    $0x30,%esp
	printf(1,"Level one: pre-fork check\n");
    1011:	c7 44 24 04 41 19 00 	movl   $0x1941,0x4(%esp)
    1018:	00 
    1019:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1020:	e8 6b 05 00 00       	call   1590 <printf>
  	pid=fork();
    1025:	e8 00 04 00 00       	call   142a <fork>
  	sleep(1);
    102a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  	pid=fork();
    1031:	89 c6                	mov    %eax,%esi
  	sleep(1);
    1033:	e8 8a 04 00 00       	call   14c2 <sleep>
	printf(1, "Level two: post-fork check\n");
    1038:	c7 44 24 04 5c 19 00 	movl   $0x195c,0x4(%esp)
    103f:	00 
    1040:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1047:	e8 44 05 00 00       	call   1590 <printf>
	shm_open(1,(char **)&counter);
    104c:	8d 44 24 2c          	lea    0x2c(%esp),%eax
    1050:	89 44 24 04          	mov    %eax,0x4(%esp)
    1054:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    105b:	e8 72 04 00 00       	call   14d2 <shm_open>
	printf(1, "Level three: post-shm_open\n");
    1060:	c7 44 24 04 78 19 00 	movl   $0x1978,0x4(%esp)
    1067:	00 
    1068:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    106f:	e8 1c 05 00 00       	call   1590 <printf>
 	printf(1,"%s returned successfully from shm_open with counter %x\n", pid? "Child": "Parent", counter); 
    1074:	85 f6                	test   %esi,%esi
    1076:	ba 3a 19 00 00       	mov    $0x193a,%edx
    107b:	b8 34 19 00 00       	mov    $0x1934,%eax
    1080:	0f 44 c2             	cmove  %edx,%eax
    1083:	8b 54 24 2c          	mov    0x2c(%esp),%edx
  	for(i = 0; i < 10000; i++)
    1087:	31 ff                	xor    %edi,%edi
 	printf(1,"%s returned successfully from shm_open with counter %x\n", pid? "Child": "Parent", counter); 
    1089:	89 44 24 08          	mov    %eax,0x8(%esp)
    108d:	c7 44 24 04 48 1a 00 	movl   $0x1a48,0x4(%esp)
    1094:	00 
    1095:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    109c:	89 54 24 0c          	mov    %edx,0xc(%esp)
    10a0:	e8 eb 04 00 00       	call   1590 <printf>
    10a5:	8d 76 00             	lea    0x0(%esi),%esi
		printf(1, "position %d currently\n", i);
    10a8:	89 7c 24 08          	mov    %edi,0x8(%esp)
    10ac:	c7 44 24 04 94 19 00 	movl   $0x1994,0x4(%esp)
    10b3:	00 
    10b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10bb:	e8 d0 04 00 00       	call   1590 <printf>
     		uacquire(&(counter->lock));
    10c0:	8b 44 24 2c          	mov    0x2c(%esp),%eax
    10c4:	89 04 24             	mov    %eax,(%esp)
    10c7:	e8 34 08 00 00       	call   1900 <uacquire>
     		printf(1, "uacquire check\n");
    10cc:	c7 44 24 04 ab 19 00 	movl   $0x19ab,0x4(%esp)
    10d3:	00 
    10d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10db:	e8 b0 04 00 00       	call   1590 <printf>
		counter->cnt++;
    10e0:	8b 54 24 2c          	mov    0x2c(%esp),%edx
    10e4:	8b 42 04             	mov    0x4(%edx),%eax
    10e7:	83 c0 01             	add    $0x1,%eax
    10ea:	89 42 04             	mov    %eax,0x4(%edx)
		printf(1, "current count: %d\n", counter->cnt);
    10ed:	89 44 24 08          	mov    %eax,0x8(%esp)
    10f1:	c7 44 24 04 bb 19 00 	movl   $0x19bb,0x4(%esp)
    10f8:	00 
    10f9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1100:	e8 8b 04 00 00       	call   1590 <printf>
     		urelease(&(counter->lock));
    1105:	8b 44 24 2c          	mov    0x2c(%esp),%eax
    1109:	89 04 24             	mov    %eax,(%esp)
    110c:	e8 0f 08 00 00       	call   1920 <urelease>
		printf(1, "urelease check\n");
    1111:	c7 44 24 04 ce 19 00 	movl   $0x19ce,0x4(%esp)
    1118:	00 
    1119:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1120:	e8 6b 04 00 00       	call   1590 <printf>
     		if(i%1000 == 0)
    1125:	89 f8                	mov    %edi,%eax
    1127:	f7 eb                	imul   %ebx
    1129:	89 f8                	mov    %edi,%eax
    112b:	c1 f8 1f             	sar    $0x1f,%eax
    112e:	c1 fa 06             	sar    $0x6,%edx
    1131:	29 c2                	sub    %eax,%edx
    1133:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    1139:	39 d7                	cmp    %edx,%edi
    113b:	75 3e                	jne    117b <main+0x17b>
       			printf(1,"Counter in %s is %d at address %x\n",pid? "Parent" : "Child", counter->cnt, counter);
    113d:	8b 54 24 2c          	mov    0x2c(%esp),%edx
    1141:	b8 34 19 00 00       	mov    $0x1934,%eax
    1146:	85 f6                	test   %esi,%esi
    1148:	8b 4a 04             	mov    0x4(%edx),%ecx
    114b:	89 54 24 10          	mov    %edx,0x10(%esp)
    114f:	c7 44 24 04 80 1a 00 	movl   $0x1a80,0x4(%esp)
    1156:	00 
    1157:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    115e:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
    1162:	b9 3a 19 00 00       	mov    $0x193a,%ecx
    1167:	0f 45 c1             	cmovne %ecx,%eax
    116a:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
    116e:	89 44 24 08          	mov    %eax,0x8(%esp)
    1172:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
    1176:	e8 15 04 00 00       	call   1590 <printf>
  	for(i = 0; i < 10000; i++)
    117b:	83 c7 01             	add    $0x1,%edi
    117e:	81 ff 10 27 00 00    	cmp    $0x2710,%edi
    1184:	0f 85 1e ff ff ff    	jne    10a8 <main+0xa8>
	}
  
	printf(1, "Level four: pre-pid check\n");
    118a:	c7 44 24 04 de 19 00 	movl   $0x19de,0x4(%esp)
    1191:	00 
    1192:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1199:	e8 f2 03 00 00       	call   1590 <printf>
  	
	if(pid)
     	{
       		printf(1,"Counter in parent is %d\n",counter->cnt);
    119e:	8b 44 24 2c          	mov    0x2c(%esp),%eax
	if(pid)
    11a2:	85 f6                	test   %esi,%esi
       		printf(1,"Counter in parent is %d\n",counter->cnt);
    11a4:	8b 40 04             	mov    0x4(%eax),%eax
    11a7:	89 44 24 08          	mov    %eax,0x8(%esp)
	if(pid)
    11ab:	74 3e                	je     11eb <main+0x1eb>
       		printf(1,"Counter in parent is %d\n",counter->cnt);
    11ad:	c7 44 24 04 f9 19 00 	movl   $0x19f9,0x4(%esp)
    11b4:	00 
    11b5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11bc:	e8 cf 03 00 00       	call   1590 <printf>
    		wait();
    11c1:	e8 74 02 00 00       	call   143a <wait>
    	} else
    		printf(1,"Counter in child is %d\n\n",counter->cnt);

  
	//shm_close: first process will just detach, next one will free up the shm_table entry (but for now not the page)
  	 shm_close(1);
    11c6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11cd:	e8 08 03 00 00       	call   14da <shm_close>

   	printf(1, "Level five: post-shm_close\n");
    11d2:	c7 44 24 04 2b 1a 00 	movl   $0x1a2b,0x4(%esp)
    11d9:	00 
    11da:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11e1:	e8 aa 03 00 00       	call   1590 <printf>
   exit();
    11e6:	e8 47 02 00 00       	call   1432 <exit>
    		printf(1,"Counter in child is %d\n\n",counter->cnt);
    11eb:	c7 44 24 04 12 1a 00 	movl   $0x1a12,0x4(%esp)
    11f2:	00 
    11f3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11fa:	e8 91 03 00 00       	call   1590 <printf>
    11ff:	eb c5                	jmp    11c6 <main+0x1c6>
    1201:	66 90                	xchg   %ax,%ax
    1203:	66 90                	xchg   %ax,%ax
    1205:	66 90                	xchg   %ax,%ax
    1207:	66 90                	xchg   %ax,%ax
    1209:	66 90                	xchg   %ax,%ax
    120b:	66 90                	xchg   %ax,%ax
    120d:	66 90                	xchg   %ax,%ax
    120f:	90                   	nop

00001210 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1210:	55                   	push   %ebp
    1211:	89 e5                	mov    %esp,%ebp
    1213:	8b 45 08             	mov    0x8(%ebp),%eax
    1216:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    1219:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    121a:	89 c2                	mov    %eax,%edx
    121c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1220:	83 c1 01             	add    $0x1,%ecx
    1223:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1227:	83 c2 01             	add    $0x1,%edx
    122a:	84 db                	test   %bl,%bl
    122c:	88 5a ff             	mov    %bl,-0x1(%edx)
    122f:	75 ef                	jne    1220 <strcpy+0x10>
    ;
  return os;
}
    1231:	5b                   	pop    %ebx
    1232:	5d                   	pop    %ebp
    1233:	c3                   	ret    
    1234:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    123a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001240 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1240:	55                   	push   %ebp
    1241:	89 e5                	mov    %esp,%ebp
    1243:	8b 55 08             	mov    0x8(%ebp),%edx
    1246:	53                   	push   %ebx
    1247:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    124a:	0f b6 02             	movzbl (%edx),%eax
    124d:	84 c0                	test   %al,%al
    124f:	74 2d                	je     127e <strcmp+0x3e>
    1251:	0f b6 19             	movzbl (%ecx),%ebx
    1254:	38 d8                	cmp    %bl,%al
    1256:	74 0e                	je     1266 <strcmp+0x26>
    1258:	eb 2b                	jmp    1285 <strcmp+0x45>
    125a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1260:	38 c8                	cmp    %cl,%al
    1262:	75 15                	jne    1279 <strcmp+0x39>
    p++, q++;
    1264:	89 d9                	mov    %ebx,%ecx
    1266:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    1269:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    126c:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    126f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    1273:	84 c0                	test   %al,%al
    1275:	75 e9                	jne    1260 <strcmp+0x20>
    1277:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1279:	29 c8                	sub    %ecx,%eax
}
    127b:	5b                   	pop    %ebx
    127c:	5d                   	pop    %ebp
    127d:	c3                   	ret    
    127e:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
    1281:	31 c0                	xor    %eax,%eax
    1283:	eb f4                	jmp    1279 <strcmp+0x39>
    1285:	0f b6 cb             	movzbl %bl,%ecx
    1288:	eb ef                	jmp    1279 <strcmp+0x39>
    128a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001290 <strlen>:

uint
strlen(char *s)
{
    1290:	55                   	push   %ebp
    1291:	89 e5                	mov    %esp,%ebp
    1293:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    1296:	80 39 00             	cmpb   $0x0,(%ecx)
    1299:	74 12                	je     12ad <strlen+0x1d>
    129b:	31 d2                	xor    %edx,%edx
    129d:	8d 76 00             	lea    0x0(%esi),%esi
    12a0:	83 c2 01             	add    $0x1,%edx
    12a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    12a7:	89 d0                	mov    %edx,%eax
    12a9:	75 f5                	jne    12a0 <strlen+0x10>
    ;
  return n;
}
    12ab:	5d                   	pop    %ebp
    12ac:	c3                   	ret    
  for(n = 0; s[n]; n++)
    12ad:	31 c0                	xor    %eax,%eax
}
    12af:	5d                   	pop    %ebp
    12b0:	c3                   	ret    
    12b1:	eb 0d                	jmp    12c0 <memset>
    12b3:	90                   	nop
    12b4:	90                   	nop
    12b5:	90                   	nop
    12b6:	90                   	nop
    12b7:	90                   	nop
    12b8:	90                   	nop
    12b9:	90                   	nop
    12ba:	90                   	nop
    12bb:	90                   	nop
    12bc:	90                   	nop
    12bd:	90                   	nop
    12be:	90                   	nop
    12bf:	90                   	nop

000012c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    12c0:	55                   	push   %ebp
    12c1:	89 e5                	mov    %esp,%ebp
    12c3:	8b 55 08             	mov    0x8(%ebp),%edx
    12c6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    12c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    12ca:	8b 45 0c             	mov    0xc(%ebp),%eax
    12cd:	89 d7                	mov    %edx,%edi
    12cf:	fc                   	cld    
    12d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    12d2:	89 d0                	mov    %edx,%eax
    12d4:	5f                   	pop    %edi
    12d5:	5d                   	pop    %ebp
    12d6:	c3                   	ret    
    12d7:	89 f6                	mov    %esi,%esi
    12d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000012e0 <strchr>:

char*
strchr(const char *s, char c)
{
    12e0:	55                   	push   %ebp
    12e1:	89 e5                	mov    %esp,%ebp
    12e3:	8b 45 08             	mov    0x8(%ebp),%eax
    12e6:	53                   	push   %ebx
    12e7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    12ea:	0f b6 18             	movzbl (%eax),%ebx
    12ed:	84 db                	test   %bl,%bl
    12ef:	74 1d                	je     130e <strchr+0x2e>
    if(*s == c)
    12f1:	38 d3                	cmp    %dl,%bl
    12f3:	89 d1                	mov    %edx,%ecx
    12f5:	75 0d                	jne    1304 <strchr+0x24>
    12f7:	eb 17                	jmp    1310 <strchr+0x30>
    12f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1300:	38 ca                	cmp    %cl,%dl
    1302:	74 0c                	je     1310 <strchr+0x30>
  for(; *s; s++)
    1304:	83 c0 01             	add    $0x1,%eax
    1307:	0f b6 10             	movzbl (%eax),%edx
    130a:	84 d2                	test   %dl,%dl
    130c:	75 f2                	jne    1300 <strchr+0x20>
      return (char*)s;
  return 0;
    130e:	31 c0                	xor    %eax,%eax
}
    1310:	5b                   	pop    %ebx
    1311:	5d                   	pop    %ebp
    1312:	c3                   	ret    
    1313:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001320 <gets>:

char*
gets(char *buf, int max)
{
    1320:	55                   	push   %ebp
    1321:	89 e5                	mov    %esp,%ebp
    1323:	57                   	push   %edi
    1324:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1325:	31 f6                	xor    %esi,%esi
{
    1327:	53                   	push   %ebx
    1328:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
    132b:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
    132e:	eb 31                	jmp    1361 <gets+0x41>
    cc = read(0, &c, 1);
    1330:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1337:	00 
    1338:	89 7c 24 04          	mov    %edi,0x4(%esp)
    133c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1343:	e8 02 01 00 00       	call   144a <read>
    if(cc < 1)
    1348:	85 c0                	test   %eax,%eax
    134a:	7e 1d                	jle    1369 <gets+0x49>
      break;
    buf[i++] = c;
    134c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
    1350:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
    1352:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    1355:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
    1357:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    135b:	74 0c                	je     1369 <gets+0x49>
    135d:	3c 0a                	cmp    $0xa,%al
    135f:	74 08                	je     1369 <gets+0x49>
  for(i=0; i+1 < max; ){
    1361:	8d 5e 01             	lea    0x1(%esi),%ebx
    1364:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1367:	7c c7                	jl     1330 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    1369:	8b 45 08             	mov    0x8(%ebp),%eax
    136c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    1370:	83 c4 2c             	add    $0x2c,%esp
    1373:	5b                   	pop    %ebx
    1374:	5e                   	pop    %esi
    1375:	5f                   	pop    %edi
    1376:	5d                   	pop    %ebp
    1377:	c3                   	ret    
    1378:	90                   	nop
    1379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001380 <stat>:

int
stat(char *n, struct stat *st)
{
    1380:	55                   	push   %ebp
    1381:	89 e5                	mov    %esp,%ebp
    1383:	56                   	push   %esi
    1384:	53                   	push   %ebx
    1385:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1388:	8b 45 08             	mov    0x8(%ebp),%eax
    138b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1392:	00 
    1393:	89 04 24             	mov    %eax,(%esp)
    1396:	e8 d7 00 00 00       	call   1472 <open>
  if(fd < 0)
    139b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
    139d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    139f:	78 27                	js     13c8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    13a1:	8b 45 0c             	mov    0xc(%ebp),%eax
    13a4:	89 1c 24             	mov    %ebx,(%esp)
    13a7:	89 44 24 04          	mov    %eax,0x4(%esp)
    13ab:	e8 da 00 00 00       	call   148a <fstat>
  close(fd);
    13b0:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    13b3:	89 c6                	mov    %eax,%esi
  close(fd);
    13b5:	e8 a0 00 00 00       	call   145a <close>
  return r;
    13ba:	89 f0                	mov    %esi,%eax
}
    13bc:	83 c4 10             	add    $0x10,%esp
    13bf:	5b                   	pop    %ebx
    13c0:	5e                   	pop    %esi
    13c1:	5d                   	pop    %ebp
    13c2:	c3                   	ret    
    13c3:	90                   	nop
    13c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    13c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    13cd:	eb ed                	jmp    13bc <stat+0x3c>
    13cf:	90                   	nop

000013d0 <atoi>:

int
atoi(const char *s)
{
    13d0:	55                   	push   %ebp
    13d1:	89 e5                	mov    %esp,%ebp
    13d3:	8b 4d 08             	mov    0x8(%ebp),%ecx
    13d6:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    13d7:	0f be 11             	movsbl (%ecx),%edx
    13da:	8d 42 d0             	lea    -0x30(%edx),%eax
    13dd:	3c 09                	cmp    $0x9,%al
  n = 0;
    13df:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    13e4:	77 17                	ja     13fd <atoi+0x2d>
    13e6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    13e8:	83 c1 01             	add    $0x1,%ecx
    13eb:	8d 04 80             	lea    (%eax,%eax,4),%eax
    13ee:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    13f2:	0f be 11             	movsbl (%ecx),%edx
    13f5:	8d 5a d0             	lea    -0x30(%edx),%ebx
    13f8:	80 fb 09             	cmp    $0x9,%bl
    13fb:	76 eb                	jbe    13e8 <atoi+0x18>
  return n;
}
    13fd:	5b                   	pop    %ebx
    13fe:	5d                   	pop    %ebp
    13ff:	c3                   	ret    

00001400 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1400:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1401:	31 d2                	xor    %edx,%edx
{
    1403:	89 e5                	mov    %esp,%ebp
    1405:	56                   	push   %esi
    1406:	8b 45 08             	mov    0x8(%ebp),%eax
    1409:	53                   	push   %ebx
    140a:	8b 5d 10             	mov    0x10(%ebp),%ebx
    140d:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
    1410:	85 db                	test   %ebx,%ebx
    1412:	7e 12                	jle    1426 <memmove+0x26>
    1414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1418:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    141c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    141f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1422:	39 da                	cmp    %ebx,%edx
    1424:	75 f2                	jne    1418 <memmove+0x18>
  return vdst;
}
    1426:	5b                   	pop    %ebx
    1427:	5e                   	pop    %esi
    1428:	5d                   	pop    %ebp
    1429:	c3                   	ret    

0000142a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    142a:	b8 01 00 00 00       	mov    $0x1,%eax
    142f:	cd 40                	int    $0x40
    1431:	c3                   	ret    

00001432 <exit>:
SYSCALL(exit)
    1432:	b8 02 00 00 00       	mov    $0x2,%eax
    1437:	cd 40                	int    $0x40
    1439:	c3                   	ret    

0000143a <wait>:
SYSCALL(wait)
    143a:	b8 03 00 00 00       	mov    $0x3,%eax
    143f:	cd 40                	int    $0x40
    1441:	c3                   	ret    

00001442 <pipe>:
SYSCALL(pipe)
    1442:	b8 04 00 00 00       	mov    $0x4,%eax
    1447:	cd 40                	int    $0x40
    1449:	c3                   	ret    

0000144a <read>:
SYSCALL(read)
    144a:	b8 05 00 00 00       	mov    $0x5,%eax
    144f:	cd 40                	int    $0x40
    1451:	c3                   	ret    

00001452 <write>:
SYSCALL(write)
    1452:	b8 10 00 00 00       	mov    $0x10,%eax
    1457:	cd 40                	int    $0x40
    1459:	c3                   	ret    

0000145a <close>:
SYSCALL(close)
    145a:	b8 15 00 00 00       	mov    $0x15,%eax
    145f:	cd 40                	int    $0x40
    1461:	c3                   	ret    

00001462 <kill>:
SYSCALL(kill)
    1462:	b8 06 00 00 00       	mov    $0x6,%eax
    1467:	cd 40                	int    $0x40
    1469:	c3                   	ret    

0000146a <exec>:
SYSCALL(exec)
    146a:	b8 07 00 00 00       	mov    $0x7,%eax
    146f:	cd 40                	int    $0x40
    1471:	c3                   	ret    

00001472 <open>:
SYSCALL(open)
    1472:	b8 0f 00 00 00       	mov    $0xf,%eax
    1477:	cd 40                	int    $0x40
    1479:	c3                   	ret    

0000147a <mknod>:
SYSCALL(mknod)
    147a:	b8 11 00 00 00       	mov    $0x11,%eax
    147f:	cd 40                	int    $0x40
    1481:	c3                   	ret    

00001482 <unlink>:
SYSCALL(unlink)
    1482:	b8 12 00 00 00       	mov    $0x12,%eax
    1487:	cd 40                	int    $0x40
    1489:	c3                   	ret    

0000148a <fstat>:
SYSCALL(fstat)
    148a:	b8 08 00 00 00       	mov    $0x8,%eax
    148f:	cd 40                	int    $0x40
    1491:	c3                   	ret    

00001492 <link>:
SYSCALL(link)
    1492:	b8 13 00 00 00       	mov    $0x13,%eax
    1497:	cd 40                	int    $0x40
    1499:	c3                   	ret    

0000149a <mkdir>:
SYSCALL(mkdir)
    149a:	b8 14 00 00 00       	mov    $0x14,%eax
    149f:	cd 40                	int    $0x40
    14a1:	c3                   	ret    

000014a2 <chdir>:
SYSCALL(chdir)
    14a2:	b8 09 00 00 00       	mov    $0x9,%eax
    14a7:	cd 40                	int    $0x40
    14a9:	c3                   	ret    

000014aa <dup>:
SYSCALL(dup)
    14aa:	b8 0a 00 00 00       	mov    $0xa,%eax
    14af:	cd 40                	int    $0x40
    14b1:	c3                   	ret    

000014b2 <getpid>:
SYSCALL(getpid)
    14b2:	b8 0b 00 00 00       	mov    $0xb,%eax
    14b7:	cd 40                	int    $0x40
    14b9:	c3                   	ret    

000014ba <sbrk>:
SYSCALL(sbrk)
    14ba:	b8 0c 00 00 00       	mov    $0xc,%eax
    14bf:	cd 40                	int    $0x40
    14c1:	c3                   	ret    

000014c2 <sleep>:
SYSCALL(sleep)
    14c2:	b8 0d 00 00 00       	mov    $0xd,%eax
    14c7:	cd 40                	int    $0x40
    14c9:	c3                   	ret    

000014ca <uptime>:
SYSCALL(uptime)
    14ca:	b8 0e 00 00 00       	mov    $0xe,%eax
    14cf:	cd 40                	int    $0x40
    14d1:	c3                   	ret    

000014d2 <shm_open>:
SYSCALL(shm_open)
    14d2:	b8 16 00 00 00       	mov    $0x16,%eax
    14d7:	cd 40                	int    $0x40
    14d9:	c3                   	ret    

000014da <shm_close>:
SYSCALL(shm_close)	
    14da:	b8 17 00 00 00       	mov    $0x17,%eax
    14df:	cd 40                	int    $0x40
    14e1:	c3                   	ret    
    14e2:	66 90                	xchg   %ax,%ax
    14e4:	66 90                	xchg   %ax,%ax
    14e6:	66 90                	xchg   %ax,%ax
    14e8:	66 90                	xchg   %ax,%ax
    14ea:	66 90                	xchg   %ax,%ax
    14ec:	66 90                	xchg   %ax,%ax
    14ee:	66 90                	xchg   %ax,%ax

000014f0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    14f0:	55                   	push   %ebp
    14f1:	89 e5                	mov    %esp,%ebp
    14f3:	57                   	push   %edi
    14f4:	56                   	push   %esi
    14f5:	89 c6                	mov    %eax,%esi
    14f7:	53                   	push   %ebx
    14f8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    14fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    14fe:	85 db                	test   %ebx,%ebx
    1500:	74 09                	je     150b <printint+0x1b>
    1502:	89 d0                	mov    %edx,%eax
    1504:	c1 e8 1f             	shr    $0x1f,%eax
    1507:	84 c0                	test   %al,%al
    1509:	75 75                	jne    1580 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    150b:	89 d0                	mov    %edx,%eax
  neg = 0;
    150d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    1514:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
    1517:	31 ff                	xor    %edi,%edi
    1519:	89 ce                	mov    %ecx,%esi
    151b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    151e:	eb 02                	jmp    1522 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    1520:	89 cf                	mov    %ecx,%edi
    1522:	31 d2                	xor    %edx,%edx
    1524:	f7 f6                	div    %esi
    1526:	8d 4f 01             	lea    0x1(%edi),%ecx
    1529:	0f b6 92 ab 1a 00 00 	movzbl 0x1aab(%edx),%edx
  }while((x /= base) != 0);
    1530:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1532:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    1535:	75 e9                	jne    1520 <printint+0x30>
  if(neg)
    1537:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
    153a:	89 c8                	mov    %ecx,%eax
    153c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
    153f:	85 d2                	test   %edx,%edx
    1541:	74 08                	je     154b <printint+0x5b>
    buf[i++] = '-';
    1543:	8d 4f 02             	lea    0x2(%edi),%ecx
    1546:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    154b:	8d 79 ff             	lea    -0x1(%ecx),%edi
    154e:	66 90                	xchg   %ax,%ax
    1550:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    1555:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    1558:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    155f:	00 
    1560:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1564:	89 34 24             	mov    %esi,(%esp)
    1567:	88 45 d7             	mov    %al,-0x29(%ebp)
    156a:	e8 e3 fe ff ff       	call   1452 <write>
  while(--i >= 0)
    156f:	83 ff ff             	cmp    $0xffffffff,%edi
    1572:	75 dc                	jne    1550 <printint+0x60>
    putc(fd, buf[i]);
}
    1574:	83 c4 4c             	add    $0x4c,%esp
    1577:	5b                   	pop    %ebx
    1578:	5e                   	pop    %esi
    1579:	5f                   	pop    %edi
    157a:	5d                   	pop    %ebp
    157b:	c3                   	ret    
    157c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
    1580:	89 d0                	mov    %edx,%eax
    1582:	f7 d8                	neg    %eax
    neg = 1;
    1584:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    158b:	eb 87                	jmp    1514 <printint+0x24>
    158d:	8d 76 00             	lea    0x0(%esi),%esi

00001590 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1590:	55                   	push   %ebp
    1591:	89 e5                	mov    %esp,%ebp
    1593:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    1594:	31 ff                	xor    %edi,%edi
{
    1596:	56                   	push   %esi
    1597:	53                   	push   %ebx
    1598:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    159b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
    159e:	8d 45 10             	lea    0x10(%ebp),%eax
{
    15a1:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    15a4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    15a7:	0f b6 13             	movzbl (%ebx),%edx
    15aa:	83 c3 01             	add    $0x1,%ebx
    15ad:	84 d2                	test   %dl,%dl
    15af:	75 39                	jne    15ea <printf+0x5a>
    15b1:	e9 c2 00 00 00       	jmp    1678 <printf+0xe8>
    15b6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    15b8:	83 fa 25             	cmp    $0x25,%edx
    15bb:	0f 84 bf 00 00 00    	je     1680 <printf+0xf0>
  write(fd, &c, 1);
    15c1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    15c4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    15cb:	00 
    15cc:	89 44 24 04          	mov    %eax,0x4(%esp)
    15d0:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
    15d3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
    15d6:	e8 77 fe ff ff       	call   1452 <write>
    15db:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
    15de:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    15e2:	84 d2                	test   %dl,%dl
    15e4:	0f 84 8e 00 00 00    	je     1678 <printf+0xe8>
    if(state == 0){
    15ea:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    15ec:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    15ef:	74 c7                	je     15b8 <printf+0x28>
      }
    } else if(state == '%'){
    15f1:	83 ff 25             	cmp    $0x25,%edi
    15f4:	75 e5                	jne    15db <printf+0x4b>
      if(c == 'd'){
    15f6:	83 fa 64             	cmp    $0x64,%edx
    15f9:	0f 84 31 01 00 00    	je     1730 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    15ff:	25 f7 00 00 00       	and    $0xf7,%eax
    1604:	83 f8 70             	cmp    $0x70,%eax
    1607:	0f 84 83 00 00 00    	je     1690 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    160d:	83 fa 73             	cmp    $0x73,%edx
    1610:	0f 84 a2 00 00 00    	je     16b8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    1616:	83 fa 63             	cmp    $0x63,%edx
    1619:	0f 84 35 01 00 00    	je     1754 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    161f:	83 fa 25             	cmp    $0x25,%edx
    1622:	0f 84 e0 00 00 00    	je     1708 <printf+0x178>
  write(fd, &c, 1);
    1628:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    162b:	83 c3 01             	add    $0x1,%ebx
    162e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1635:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1636:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    1638:	89 44 24 04          	mov    %eax,0x4(%esp)
    163c:	89 34 24             	mov    %esi,(%esp)
    163f:	89 55 d0             	mov    %edx,-0x30(%ebp)
    1642:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    1646:	e8 07 fe ff ff       	call   1452 <write>
        putc(fd, c);
    164b:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
    164e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1651:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1658:	00 
    1659:	89 44 24 04          	mov    %eax,0x4(%esp)
    165d:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
    1660:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    1663:	e8 ea fd ff ff       	call   1452 <write>
  for(i = 0; fmt[i]; i++){
    1668:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    166c:	84 d2                	test   %dl,%dl
    166e:	0f 85 76 ff ff ff    	jne    15ea <printf+0x5a>
    1674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
    1678:	83 c4 3c             	add    $0x3c,%esp
    167b:	5b                   	pop    %ebx
    167c:	5e                   	pop    %esi
    167d:	5f                   	pop    %edi
    167e:	5d                   	pop    %ebp
    167f:	c3                   	ret    
        state = '%';
    1680:	bf 25 00 00 00       	mov    $0x25,%edi
    1685:	e9 51 ff ff ff       	jmp    15db <printf+0x4b>
    168a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1690:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1693:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
    1698:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
    169a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    16a1:	8b 10                	mov    (%eax),%edx
    16a3:	89 f0                	mov    %esi,%eax
    16a5:	e8 46 fe ff ff       	call   14f0 <printint>
        ap++;
    16aa:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    16ae:	e9 28 ff ff ff       	jmp    15db <printf+0x4b>
    16b3:	90                   	nop
    16b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    16b8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    16bb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
    16bf:	8b 38                	mov    (%eax),%edi
          s = "(null)";
    16c1:	b8 a4 1a 00 00       	mov    $0x1aa4,%eax
    16c6:	85 ff                	test   %edi,%edi
    16c8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    16cb:	0f b6 07             	movzbl (%edi),%eax
    16ce:	84 c0                	test   %al,%al
    16d0:	74 2a                	je     16fc <printf+0x16c>
    16d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    16d8:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    16db:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
    16de:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
    16e1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    16e8:	00 
    16e9:	89 44 24 04          	mov    %eax,0x4(%esp)
    16ed:	89 34 24             	mov    %esi,(%esp)
    16f0:	e8 5d fd ff ff       	call   1452 <write>
        while(*s != 0){
    16f5:	0f b6 07             	movzbl (%edi),%eax
    16f8:	84 c0                	test   %al,%al
    16fa:	75 dc                	jne    16d8 <printf+0x148>
      state = 0;
    16fc:	31 ff                	xor    %edi,%edi
    16fe:	e9 d8 fe ff ff       	jmp    15db <printf+0x4b>
    1703:	90                   	nop
    1704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    1708:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
    170b:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    170d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1714:	00 
    1715:	89 44 24 04          	mov    %eax,0x4(%esp)
    1719:	89 34 24             	mov    %esi,(%esp)
    171c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    1720:	e8 2d fd ff ff       	call   1452 <write>
    1725:	e9 b1 fe ff ff       	jmp    15db <printf+0x4b>
    172a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    1730:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1733:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
    1738:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
    173b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1742:	8b 10                	mov    (%eax),%edx
    1744:	89 f0                	mov    %esi,%eax
    1746:	e8 a5 fd ff ff       	call   14f0 <printint>
        ap++;
    174b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    174f:	e9 87 fe ff ff       	jmp    15db <printf+0x4b>
        putc(fd, *ap);
    1754:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
    1757:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
    1759:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    175b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1762:	00 
    1763:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
    1766:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1769:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    176c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1770:	e8 dd fc ff ff       	call   1452 <write>
        ap++;
    1775:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    1779:	e9 5d fe ff ff       	jmp    15db <printf+0x4b>
    177e:	66 90                	xchg   %ax,%ax

00001780 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1780:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1781:	a1 64 1d 00 00       	mov    0x1d64,%eax
{
    1786:	89 e5                	mov    %esp,%ebp
    1788:	57                   	push   %edi
    1789:	56                   	push   %esi
    178a:	53                   	push   %ebx
    178b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    178e:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
    1790:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1793:	39 d0                	cmp    %edx,%eax
    1795:	72 11                	jb     17a8 <free+0x28>
    1797:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1798:	39 c8                	cmp    %ecx,%eax
    179a:	72 04                	jb     17a0 <free+0x20>
    179c:	39 ca                	cmp    %ecx,%edx
    179e:	72 10                	jb     17b0 <free+0x30>
    17a0:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    17a2:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    17a4:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    17a6:	73 f0                	jae    1798 <free+0x18>
    17a8:	39 ca                	cmp    %ecx,%edx
    17aa:	72 04                	jb     17b0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    17ac:	39 c8                	cmp    %ecx,%eax
    17ae:	72 f0                	jb     17a0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    17b0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    17b3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    17b6:	39 cf                	cmp    %ecx,%edi
    17b8:	74 1e                	je     17d8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    17ba:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    17bd:	8b 48 04             	mov    0x4(%eax),%ecx
    17c0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    17c3:	39 f2                	cmp    %esi,%edx
    17c5:	74 28                	je     17ef <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    17c7:	89 10                	mov    %edx,(%eax)
  freep = p;
    17c9:	a3 64 1d 00 00       	mov    %eax,0x1d64
}
    17ce:	5b                   	pop    %ebx
    17cf:	5e                   	pop    %esi
    17d0:	5f                   	pop    %edi
    17d1:	5d                   	pop    %ebp
    17d2:	c3                   	ret    
    17d3:	90                   	nop
    17d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    17d8:	03 71 04             	add    0x4(%ecx),%esi
    17db:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    17de:	8b 08                	mov    (%eax),%ecx
    17e0:	8b 09                	mov    (%ecx),%ecx
    17e2:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    17e5:	8b 48 04             	mov    0x4(%eax),%ecx
    17e8:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    17eb:	39 f2                	cmp    %esi,%edx
    17ed:	75 d8                	jne    17c7 <free+0x47>
    p->s.size += bp->s.size;
    17ef:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
    17f2:	a3 64 1d 00 00       	mov    %eax,0x1d64
    p->s.size += bp->s.size;
    17f7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    17fa:	8b 53 f8             	mov    -0x8(%ebx),%edx
    17fd:	89 10                	mov    %edx,(%eax)
}
    17ff:	5b                   	pop    %ebx
    1800:	5e                   	pop    %esi
    1801:	5f                   	pop    %edi
    1802:	5d                   	pop    %ebp
    1803:	c3                   	ret    
    1804:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    180a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001810 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1810:	55                   	push   %ebp
    1811:	89 e5                	mov    %esp,%ebp
    1813:	57                   	push   %edi
    1814:	56                   	push   %esi
    1815:	53                   	push   %ebx
    1816:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1819:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    181c:	8b 1d 64 1d 00 00    	mov    0x1d64,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1822:	8d 48 07             	lea    0x7(%eax),%ecx
    1825:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    1828:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    182a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    182d:	0f 84 9b 00 00 00    	je     18ce <malloc+0xbe>
    1833:	8b 13                	mov    (%ebx),%edx
    1835:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1838:	39 fe                	cmp    %edi,%esi
    183a:	76 64                	jbe    18a0 <malloc+0x90>
    183c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
    1843:	bb 00 80 00 00       	mov    $0x8000,%ebx
    1848:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    184b:	eb 0e                	jmp    185b <malloc+0x4b>
    184d:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1850:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1852:	8b 78 04             	mov    0x4(%eax),%edi
    1855:	39 fe                	cmp    %edi,%esi
    1857:	76 4f                	jbe    18a8 <malloc+0x98>
    1859:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    185b:	3b 15 64 1d 00 00    	cmp    0x1d64,%edx
    1861:	75 ed                	jne    1850 <malloc+0x40>
  if(nu < 4096)
    1863:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1866:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    186c:	bf 00 10 00 00       	mov    $0x1000,%edi
    1871:	0f 43 fe             	cmovae %esi,%edi
    1874:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
    1877:	89 04 24             	mov    %eax,(%esp)
    187a:	e8 3b fc ff ff       	call   14ba <sbrk>
  if(p == (char*)-1)
    187f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1882:	74 18                	je     189c <malloc+0x8c>
  hp->s.size = nu;
    1884:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    1887:	83 c0 08             	add    $0x8,%eax
    188a:	89 04 24             	mov    %eax,(%esp)
    188d:	e8 ee fe ff ff       	call   1780 <free>
  return freep;
    1892:	8b 15 64 1d 00 00    	mov    0x1d64,%edx
      if((p = morecore(nunits)) == 0)
    1898:	85 d2                	test   %edx,%edx
    189a:	75 b4                	jne    1850 <malloc+0x40>
        return 0;
    189c:	31 c0                	xor    %eax,%eax
    189e:	eb 20                	jmp    18c0 <malloc+0xb0>
    if(p->s.size >= nunits){
    18a0:	89 d0                	mov    %edx,%eax
    18a2:	89 da                	mov    %ebx,%edx
    18a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    18a8:	39 fe                	cmp    %edi,%esi
    18aa:	74 1c                	je     18c8 <malloc+0xb8>
        p->s.size -= nunits;
    18ac:	29 f7                	sub    %esi,%edi
    18ae:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    18b1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    18b4:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    18b7:	89 15 64 1d 00 00    	mov    %edx,0x1d64
      return (void*)(p + 1);
    18bd:	83 c0 08             	add    $0x8,%eax
  }
}
    18c0:	83 c4 1c             	add    $0x1c,%esp
    18c3:	5b                   	pop    %ebx
    18c4:	5e                   	pop    %esi
    18c5:	5f                   	pop    %edi
    18c6:	5d                   	pop    %ebp
    18c7:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    18c8:	8b 08                	mov    (%eax),%ecx
    18ca:	89 0a                	mov    %ecx,(%edx)
    18cc:	eb e9                	jmp    18b7 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
    18ce:	c7 05 64 1d 00 00 68 	movl   $0x1d68,0x1d64
    18d5:	1d 00 00 
    base.s.size = 0;
    18d8:	ba 68 1d 00 00       	mov    $0x1d68,%edx
    base.s.ptr = freep = prevp = &base;
    18dd:	c7 05 68 1d 00 00 68 	movl   $0x1d68,0x1d68
    18e4:	1d 00 00 
    base.s.size = 0;
    18e7:	c7 05 6c 1d 00 00 00 	movl   $0x0,0x1d6c
    18ee:	00 00 00 
    18f1:	e9 46 ff ff ff       	jmp    183c <malloc+0x2c>
    18f6:	66 90                	xchg   %ax,%ax
    18f8:	66 90                	xchg   %ax,%ax
    18fa:	66 90                	xchg   %ax,%ax
    18fc:	66 90                	xchg   %ax,%ax
    18fe:	66 90                	xchg   %ax,%ax

00001900 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    1900:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1901:	b9 01 00 00 00       	mov    $0x1,%ecx
    1906:	89 e5                	mov    %esp,%ebp
    1908:	8b 55 08             	mov    0x8(%ebp),%edx
    190b:	90                   	nop
    190c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1910:	89 c8                	mov    %ecx,%eax
    1912:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    1915:	85 c0                	test   %eax,%eax
    1917:	75 f7                	jne    1910 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    1919:	0f ae f0             	mfence 
}
    191c:	5d                   	pop    %ebp
    191d:	c3                   	ret    
    191e:	66 90                	xchg   %ax,%ax

00001920 <urelease>:

void urelease (struct uspinlock *lk) {
    1920:	55                   	push   %ebp
    1921:	89 e5                	mov    %esp,%ebp
    1923:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    1926:	0f ae f0             	mfence 

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    1929:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    192f:	5d                   	pop    %ebp
    1930:	c3                   	ret    
