
../../../build/user/uw-testbin/onefork/onefork:     file format elf32-tradbigmips

Disassembly of section .text:

00400000 <__start>:
  400000:	3c1c1001 	lui	gp,0x1001
  400004:	279c8000 	addiu	gp,gp,-32768
  400008:	2408fff8 	li	t0,-8
  40000c:	03a8e824 	and	sp,sp,t0
  400010:	27bdfff0 	addiu	sp,sp,-16
  400014:	3c011000 	lui	at,0x1000
  400018:	ac250014 	sw	a1,20(at)
  40001c:	0c100014 	jal	400050 <main>
  400020:	00000000 	nop
  400024:	00408021 	move	s0,v0
  400028:	0c100051 	jal	400144 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c100067 	jal	40019c <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <main>:
  400050:	27bdffe8 	addiu	sp,sp,-24
  400054:	afbf0010 	sw	ra,16(sp)
  400058:	0c100061 	jal	400184 <fork>
  40005c:	00000000 	nop
  400060:	3c040040 	lui	a0,0x40
  400064:	0440000d 	bltz	v0,40009c <main+0x4c>
  400068:	24841840 	addiu	a0,a0,6208
  40006c:	14400009 	bnez	v0,400094 <main+0x44>
  400070:	24040043 	li	a0,67
  400074:	0c100030 	jal	4000c0 <putchar>
  400078:	00000000 	nop
  40007c:	0c100030 	jal	4000c0 <putchar>
  400080:	2404000a 	li	a0,10
  400084:	8fbf0010 	lw	ra,16(sp)
  400088:	00001021 	move	v0,zero
  40008c:	03e00008 	jr	ra
  400090:	27bd0018 	addiu	sp,sp,24
  400094:	0810001d 	j	400074 <main+0x24>
  400098:	24040050 	li	a0,80
  40009c:	0c10018f 	jal	40063c <warn>
  4000a0:	00000000 	nop
  4000a4:	8fbf0010 	lw	ra,16(sp)
  4000a8:	00001021 	move	v0,zero
  4000ac:	03e00008 	jr	ra
  4000b0:	27bd0018 	addiu	sp,sp,24
	...

004000c0 <putchar>:
  4000c0:	27bdffe0 	addiu	sp,sp,-32
  4000c4:	afb00018 	sw	s0,24(sp)
  4000c8:	27a50010 	addiu	a1,sp,16
  4000cc:	00808021 	move	s0,a0
  4000d0:	24060001 	li	a2,1
  4000d4:	24040001 	li	a0,1
  4000d8:	afbf001c 	sw	ra,28(sp)
  4000dc:	0c1000a7 	jal	40029c <write>
  4000e0:	a3b00010 	sb	s0,16(sp)
  4000e4:	18400005 	blez	v0,4000fc <putchar+0x3c>
  4000e8:	02001021 	move	v0,s0
  4000ec:	8fbf001c 	lw	ra,28(sp)
  4000f0:	8fb00018 	lw	s0,24(sp)
  4000f4:	03e00008 	jr	ra
  4000f8:	27bd0020 	addiu	sp,sp,32
  4000fc:	2410ffff 	li	s0,-1
  400100:	02001021 	move	v0,s0
  400104:	8fbf001c 	lw	ra,28(sp)
  400108:	8fb00018 	lw	s0,24(sp)
  40010c:	03e00008 	jr	ra
  400110:	27bd0020 	addiu	sp,sp,32
	...

00400120 <__exit_hack>:
  400120:	27bdfff8 	addiu	sp,sp,-8
  400124:	24020001 	li	v0,1
  400128:	afa20000 	sw	v0,0(sp)
  40012c:	8fa20000 	lw	v0,0(sp)
  400130:	00000000 	nop
  400134:	1440fffd 	bnez	v0,40012c <__exit_hack+0xc>
  400138:	00000000 	nop
  40013c:	03e00008 	jr	ra
  400140:	27bd0008 	addiu	sp,sp,8

00400144 <exit>:
  400144:	27bdffe8 	addiu	sp,sp,-24
  400148:	afbf0010 	sw	ra,16(sp)
  40014c:	0c100067 	jal	40019c <_exit>
  400150:	00000000 	nop
	...

00400160 <__syscall>:
  400160:	0000000c 	syscall
  400164:	10e00005 	beqz	a3,40017c <__syscall+0x1c>
  400168:	00000000 	nop
  40016c:	3c011000 	lui	at,0x1000
  400170:	ac220010 	sw	v0,16(at)
  400174:	2403ffff 	li	v1,-1
  400178:	2402ffff 	li	v0,-1
  40017c:	03e00008 	jr	ra
  400180:	00000000 	nop

00400184 <fork>:
  400184:	08100058 	j	400160 <__syscall>
  400188:	24020000 	li	v0,0

0040018c <vfork>:
  40018c:	08100058 	j	400160 <__syscall>
  400190:	24020001 	li	v0,1

00400194 <execv>:
  400194:	08100058 	j	400160 <__syscall>
  400198:	24020002 	li	v0,2

0040019c <_exit>:
  40019c:	08100058 	j	400160 <__syscall>
  4001a0:	24020003 	li	v0,3

004001a4 <waitpid>:
  4001a4:	08100058 	j	400160 <__syscall>
  4001a8:	24020004 	li	v0,4

004001ac <getpid>:
  4001ac:	08100058 	j	400160 <__syscall>
  4001b0:	24020005 	li	v0,5

004001b4 <getppid>:
  4001b4:	08100058 	j	400160 <__syscall>
  4001b8:	24020006 	li	v0,6

004001bc <sbrk>:
  4001bc:	08100058 	j	400160 <__syscall>
  4001c0:	24020007 	li	v0,7

004001c4 <mmap>:
  4001c4:	08100058 	j	400160 <__syscall>
  4001c8:	24020008 	li	v0,8

004001cc <munmap>:
  4001cc:	08100058 	j	400160 <__syscall>
  4001d0:	24020009 	li	v0,9

004001d4 <mprotect>:
  4001d4:	08100058 	j	400160 <__syscall>
  4001d8:	2402000a 	li	v0,10

004001dc <umask>:
  4001dc:	08100058 	j	400160 <__syscall>
  4001e0:	24020011 	li	v0,17

004001e4 <issetugid>:
  4001e4:	08100058 	j	400160 <__syscall>
  4001e8:	24020012 	li	v0,18

004001ec <getresuid>:
  4001ec:	08100058 	j	400160 <__syscall>
  4001f0:	24020013 	li	v0,19

004001f4 <setresuid>:
  4001f4:	08100058 	j	400160 <__syscall>
  4001f8:	24020014 	li	v0,20

004001fc <getresgid>:
  4001fc:	08100058 	j	400160 <__syscall>
  400200:	24020015 	li	v0,21

00400204 <setresgid>:
  400204:	08100058 	j	400160 <__syscall>
  400208:	24020016 	li	v0,22

0040020c <getgroups>:
  40020c:	08100058 	j	400160 <__syscall>
  400210:	24020017 	li	v0,23

00400214 <setgroups>:
  400214:	08100058 	j	400160 <__syscall>
  400218:	24020018 	li	v0,24

0040021c <__getlogin>:
  40021c:	08100058 	j	400160 <__syscall>
  400220:	24020019 	li	v0,25

00400224 <__setlogin>:
  400224:	08100058 	j	400160 <__syscall>
  400228:	2402001a 	li	v0,26

0040022c <kill>:
  40022c:	08100058 	j	400160 <__syscall>
  400230:	2402001b 	li	v0,27

00400234 <sigaction>:
  400234:	08100058 	j	400160 <__syscall>
  400238:	2402001c 	li	v0,28

0040023c <sigpending>:
  40023c:	08100058 	j	400160 <__syscall>
  400240:	2402001d 	li	v0,29

00400244 <sigprocmask>:
  400244:	08100058 	j	400160 <__syscall>
  400248:	2402001e 	li	v0,30

0040024c <sigsuspend>:
  40024c:	08100058 	j	400160 <__syscall>
  400250:	2402001f 	li	v0,31

00400254 <sigreturn>:
  400254:	08100058 	j	400160 <__syscall>
  400258:	24020020 	li	v0,32

0040025c <open>:
  40025c:	08100058 	j	400160 <__syscall>
  400260:	2402002d 	li	v0,45

00400264 <pipe>:
  400264:	08100058 	j	400160 <__syscall>
  400268:	2402002e 	li	v0,46

0040026c <dup>:
  40026c:	08100058 	j	400160 <__syscall>
  400270:	2402002f 	li	v0,47

00400274 <dup2>:
  400274:	08100058 	j	400160 <__syscall>
  400278:	24020030 	li	v0,48

0040027c <close>:
  40027c:	08100058 	j	400160 <__syscall>
  400280:	24020031 	li	v0,49

00400284 <read>:
  400284:	08100058 	j	400160 <__syscall>
  400288:	24020032 	li	v0,50

0040028c <pread>:
  40028c:	08100058 	j	400160 <__syscall>
  400290:	24020033 	li	v0,51

00400294 <getdirentry>:
  400294:	08100058 	j	400160 <__syscall>
  400298:	24020036 	li	v0,54

0040029c <write>:
  40029c:	08100058 	j	400160 <__syscall>
  4002a0:	24020037 	li	v0,55

004002a4 <pwrite>:
  4002a4:	08100058 	j	400160 <__syscall>
  4002a8:	24020038 	li	v0,56

004002ac <lseek>:
  4002ac:	08100058 	j	400160 <__syscall>
  4002b0:	2402003b 	li	v0,59

004002b4 <flock>:
  4002b4:	08100058 	j	400160 <__syscall>
  4002b8:	2402003c 	li	v0,60

004002bc <ftruncate>:
  4002bc:	08100058 	j	400160 <__syscall>
  4002c0:	2402003d 	li	v0,61

004002c4 <fsync>:
  4002c4:	08100058 	j	400160 <__syscall>
  4002c8:	2402003e 	li	v0,62

004002cc <fcntl>:
  4002cc:	08100058 	j	400160 <__syscall>
  4002d0:	2402003f 	li	v0,63

004002d4 <ioctl>:
  4002d4:	08100058 	j	400160 <__syscall>
  4002d8:	24020040 	li	v0,64

004002dc <select>:
  4002dc:	08100058 	j	400160 <__syscall>
  4002e0:	24020041 	li	v0,65

004002e4 <poll>:
  4002e4:	08100058 	j	400160 <__syscall>
  4002e8:	24020042 	li	v0,66

004002ec <link>:
  4002ec:	08100058 	j	400160 <__syscall>
  4002f0:	24020043 	li	v0,67

004002f4 <remove>:
  4002f4:	08100058 	j	400160 <__syscall>
  4002f8:	24020044 	li	v0,68

004002fc <mkdir>:
  4002fc:	08100058 	j	400160 <__syscall>
  400300:	24020045 	li	v0,69

00400304 <rmdir>:
  400304:	08100058 	j	400160 <__syscall>
  400308:	24020046 	li	v0,70

0040030c <mkfifo>:
  40030c:	08100058 	j	400160 <__syscall>
  400310:	24020047 	li	v0,71

00400314 <rename>:
  400314:	08100058 	j	400160 <__syscall>
  400318:	24020048 	li	v0,72

0040031c <access>:
  40031c:	08100058 	j	400160 <__syscall>
  400320:	24020049 	li	v0,73

00400324 <chdir>:
  400324:	08100058 	j	400160 <__syscall>
  400328:	2402004a 	li	v0,74

0040032c <fchdir>:
  40032c:	08100058 	j	400160 <__syscall>
  400330:	2402004b 	li	v0,75

00400334 <__getcwd>:
  400334:	08100058 	j	400160 <__syscall>
  400338:	2402004c 	li	v0,76

0040033c <symlink>:
  40033c:	08100058 	j	400160 <__syscall>
  400340:	2402004d 	li	v0,77

00400344 <readlink>:
  400344:	08100058 	j	400160 <__syscall>
  400348:	2402004e 	li	v0,78

0040034c <mount>:
  40034c:	08100058 	j	400160 <__syscall>
  400350:	2402004f 	li	v0,79

00400354 <unmount>:
  400354:	08100058 	j	400160 <__syscall>
  400358:	24020050 	li	v0,80

0040035c <stat>:
  40035c:	08100058 	j	400160 <__syscall>
  400360:	24020051 	li	v0,81

00400364 <fstat>:
  400364:	08100058 	j	400160 <__syscall>
  400368:	24020052 	li	v0,82

0040036c <lstat>:
  40036c:	08100058 	j	400160 <__syscall>
  400370:	24020053 	li	v0,83

00400374 <utimes>:
  400374:	08100058 	j	400160 <__syscall>
  400378:	24020054 	li	v0,84

0040037c <futimes>:
  40037c:	08100058 	j	400160 <__syscall>
  400380:	24020055 	li	v0,85

00400384 <lutimes>:
  400384:	08100058 	j	400160 <__syscall>
  400388:	24020056 	li	v0,86

0040038c <chmod>:
  40038c:	08100058 	j	400160 <__syscall>
  400390:	24020057 	li	v0,87

00400394 <chown>:
  400394:	08100058 	j	400160 <__syscall>
  400398:	24020058 	li	v0,88

0040039c <fchmod>:
  40039c:	08100058 	j	400160 <__syscall>
  4003a0:	24020059 	li	v0,89

004003a4 <fchown>:
  4003a4:	08100058 	j	400160 <__syscall>
  4003a8:	2402005a 	li	v0,90

004003ac <lchmod>:
  4003ac:	08100058 	j	400160 <__syscall>
  4003b0:	2402005b 	li	v0,91

004003b4 <lchown>:
  4003b4:	08100058 	j	400160 <__syscall>
  4003b8:	2402005c 	li	v0,92

004003bc <socket>:
  4003bc:	08100058 	j	400160 <__syscall>
  4003c0:	24020062 	li	v0,98

004003c4 <bind>:
  4003c4:	08100058 	j	400160 <__syscall>
  4003c8:	24020063 	li	v0,99

004003cc <connect>:
  4003cc:	08100058 	j	400160 <__syscall>
  4003d0:	24020064 	li	v0,100

004003d4 <listen>:
  4003d4:	08100058 	j	400160 <__syscall>
  4003d8:	24020065 	li	v0,101

004003dc <accept>:
  4003dc:	08100058 	j	400160 <__syscall>
  4003e0:	24020066 	li	v0,102

004003e4 <shutdown>:
  4003e4:	08100058 	j	400160 <__syscall>
  4003e8:	24020068 	li	v0,104

004003ec <getsockname>:
  4003ec:	08100058 	j	400160 <__syscall>
  4003f0:	24020069 	li	v0,105

004003f4 <getpeername>:
  4003f4:	08100058 	j	400160 <__syscall>
  4003f8:	2402006a 	li	v0,106

004003fc <getsockopt>:
  4003fc:	08100058 	j	400160 <__syscall>
  400400:	2402006b 	li	v0,107

00400404 <setsockopt>:
  400404:	08100058 	j	400160 <__syscall>
  400408:	2402006c 	li	v0,108

0040040c <__time>:
  40040c:	08100058 	j	400160 <__syscall>
  400410:	24020071 	li	v0,113

00400414 <__settime>:
  400414:	08100058 	j	400160 <__syscall>
  400418:	24020072 	li	v0,114

0040041c <nanosleep>:
  40041c:	08100058 	j	400160 <__syscall>
  400420:	24020073 	li	v0,115

00400424 <sync>:
  400424:	08100058 	j	400160 <__syscall>
  400428:	24020076 	li	v0,118

0040042c <reboot>:
  40042c:	08100058 	j	400160 <__syscall>
  400430:	24020077 	li	v0,119
	...

00400440 <__senderr>:
  400440:	081000a7 	j	40029c <write>
  400444:	24040002 	li	a0,2

00400448 <__senderrstr>:
  400448:	27bdffe8 	addiu	sp,sp,-24
  40044c:	afbf0014 	sw	ra,20(sp)
  400450:	afb00010 	sw	s0,16(sp)
  400454:	0c1003c8 	jal	400f20 <strlen>
  400458:	00808021 	move	s0,a0
  40045c:	00403021 	move	a2,v0
  400460:	02002821 	move	a1,s0
  400464:	8fbf0014 	lw	ra,20(sp)
  400468:	8fb00010 	lw	s0,16(sp)
  40046c:	00002021 	move	a0,zero
  400470:	08100110 	j	400440 <__senderr>
  400474:	27bd0018 	addiu	sp,sp,24

00400478 <__printerr>:
  400478:	27bdffd8 	addiu	sp,sp,-40
  40047c:	afb40020 	sw	s4,32(sp)
  400480:	afb3001c 	sw	s3,28(sp)
  400484:	afb20018 	sw	s2,24(sp)
  400488:	afb10014 	sw	s1,20(sp)
  40048c:	afbf0024 	sw	ra,36(sp)
  400490:	afb00010 	sw	s0,16(sp)
  400494:	3c021000 	lui	v0,0x1000
  400498:	00809821 	move	s3,a0
  40049c:	8c440010 	lw	a0,16(v0)
  4004a0:	00a08821 	move	s1,a1
  4004a4:	0c1003bc 	jal	400ef0 <strerror>
  4004a8:	00c09021 	move	s2,a2
  4004ac:	0040a021 	move	s4,v0
  4004b0:	3c021000 	lui	v0,0x1000
  4004b4:	8c420014 	lw	v0,20(v0)
  4004b8:	00000000 	nop
  4004bc:	1040001f 	beqz	v0,40053c <__printerr+0xc4>
  4004c0:	00000000 	nop
  4004c4:	8c420000 	lw	v0,0(v0)
  4004c8:	00000000 	nop
  4004cc:	1040001b 	beqz	v0,40053c <__printerr+0xc4>
  4004d0:	00402021 	move	a0,v0
  4004d4:	0c100112 	jal	400448 <__senderrstr>
  4004d8:	3c100040 	lui	s0,0x40
  4004dc:	0c100112 	jal	400448 <__senderrstr>
  4004e0:	26041860 	addiu	a0,s0,6240
  4004e4:	3c040040 	lui	a0,0x40
  4004e8:	24840440 	addiu	a0,a0,1088
  4004ec:	02203021 	move	a2,s1
  4004f0:	02403821 	move	a3,s2
  4004f4:	0c100259 	jal	400964 <__vprintf>
  4004f8:	00002821 	move	a1,zero
  4004fc:	12600005 	beqz	s3,400514 <__printerr+0x9c>
  400500:	26041860 	addiu	a0,s0,6240
  400504:	0c100112 	jal	400448 <__senderrstr>
  400508:	00000000 	nop
  40050c:	0c100112 	jal	400448 <__senderrstr>
  400510:	02802021 	move	a0,s4
  400514:	3c040040 	lui	a0,0x40
  400518:	8fbf0024 	lw	ra,36(sp)
  40051c:	8fb40020 	lw	s4,32(sp)
  400520:	8fb3001c 	lw	s3,28(sp)
  400524:	8fb20018 	lw	s2,24(sp)
  400528:	8fb10014 	lw	s1,20(sp)
  40052c:	8fb00010 	lw	s0,16(sp)
  400530:	24841864 	addiu	a0,a0,6244
  400534:	08100112 	j	400448 <__senderrstr>
  400538:	27bd0028 	addiu	sp,sp,40
  40053c:	3c020040 	lui	v0,0x40
  400540:	08100135 	j	4004d4 <__printerr+0x5c>
  400544:	24441848 	addiu	a0,v0,6216

00400548 <verrx>:
  400548:	27bdffe8 	addiu	sp,sp,-24
  40054c:	afb00010 	sw	s0,16(sp)
  400550:	00808021 	move	s0,a0
  400554:	afbf0014 	sw	ra,20(sp)
  400558:	0c10011e 	jal	400478 <__printerr>
  40055c:	00002021 	move	a0,zero
  400560:	0c100051 	jal	400144 <exit>
  400564:	02002021 	move	a0,s0

00400568 <errx>:
  400568:	27bdffe0 	addiu	sp,sp,-32
  40056c:	27a20028 	addiu	v0,sp,40
  400570:	afa60028 	sw	a2,40(sp)
  400574:	00403021 	move	a2,v0
  400578:	afbf0018 	sw	ra,24(sp)
  40057c:	afa7002c 	sw	a3,44(sp)
  400580:	0c100152 	jal	400548 <verrx>
  400584:	afa20010 	sw	v0,16(sp)
  400588:	8fbf0018 	lw	ra,24(sp)
  40058c:	00000000 	nop
  400590:	03e00008 	jr	ra
  400594:	27bd0020 	addiu	sp,sp,32

00400598 <verr>:
  400598:	27bdffe8 	addiu	sp,sp,-24
  40059c:	afb00010 	sw	s0,16(sp)
  4005a0:	00808021 	move	s0,a0
  4005a4:	afbf0014 	sw	ra,20(sp)
  4005a8:	0c10011e 	jal	400478 <__printerr>
  4005ac:	24040001 	li	a0,1
  4005b0:	0c100051 	jal	400144 <exit>
  4005b4:	02002021 	move	a0,s0

004005b8 <err>:
  4005b8:	27bdffe0 	addiu	sp,sp,-32
  4005bc:	27a20028 	addiu	v0,sp,40
  4005c0:	afa60028 	sw	a2,40(sp)
  4005c4:	00403021 	move	a2,v0
  4005c8:	afbf0018 	sw	ra,24(sp)
  4005cc:	afa7002c 	sw	a3,44(sp)
  4005d0:	0c100166 	jal	400598 <verr>
  4005d4:	afa20010 	sw	v0,16(sp)
  4005d8:	8fbf0018 	lw	ra,24(sp)
  4005dc:	00000000 	nop
  4005e0:	03e00008 	jr	ra
  4005e4:	27bd0020 	addiu	sp,sp,32

004005e8 <vwarnx>:
  4005e8:	00a03021 	move	a2,a1
  4005ec:	00802821 	move	a1,a0
  4005f0:	0810011e 	j	400478 <__printerr>
  4005f4:	00002021 	move	a0,zero

004005f8 <warnx>:
  4005f8:	27bdffe0 	addiu	sp,sp,-32
  4005fc:	27a20024 	addiu	v0,sp,36
  400600:	afa50024 	sw	a1,36(sp)
  400604:	00402821 	move	a1,v0
  400608:	afbf0018 	sw	ra,24(sp)
  40060c:	afa60028 	sw	a2,40(sp)
  400610:	afa7002c 	sw	a3,44(sp)
  400614:	0c10017a 	jal	4005e8 <vwarnx>
  400618:	afa20010 	sw	v0,16(sp)
  40061c:	8fbf0018 	lw	ra,24(sp)
  400620:	00000000 	nop
  400624:	03e00008 	jr	ra
  400628:	27bd0020 	addiu	sp,sp,32

0040062c <vwarn>:
  40062c:	00a03021 	move	a2,a1
  400630:	00802821 	move	a1,a0
  400634:	0810011e 	j	400478 <__printerr>
  400638:	24040001 	li	a0,1

0040063c <warn>:
  40063c:	27bdffe0 	addiu	sp,sp,-32
  400640:	27a20024 	addiu	v0,sp,36
  400644:	afa50024 	sw	a1,36(sp)
  400648:	00402821 	move	a1,v0
  40064c:	afbf0018 	sw	ra,24(sp)
  400650:	afa60028 	sw	a2,40(sp)
  400654:	afa7002c 	sw	a3,44(sp)
  400658:	0c10018b 	jal	40062c <vwarn>
  40065c:	afa20010 	sw	v0,16(sp)
  400660:	8fbf0018 	lw	ra,24(sp)
  400664:	00000000 	nop
  400668:	03e00008 	jr	ra
  40066c:	27bd0020 	addiu	sp,sp,32

00400670 <__pf_print>:
  400670:	27bdffe0 	addiu	sp,sp,-32
  400674:	afbf0018 	sw	ra,24(sp)
  400678:	afb10014 	sw	s1,20(sp)
  40067c:	afb00010 	sw	s0,16(sp)
  400680:	8c830000 	lw	v1,0(a0)
  400684:	00808021 	move	s0,a0
  400688:	8c840004 	lw	a0,4(a0)
  40068c:	0060f809 	jalr	v1
  400690:	00c08821 	move	s1,a2
  400694:	8e02000c 	lw	v0,12(s0)
  400698:	00000000 	nop
  40069c:	00511021 	addu	v0,v0,s1
  4006a0:	ae02000c 	sw	v0,12(s0)
  4006a4:	8fbf0018 	lw	ra,24(sp)
  4006a8:	8fb10014 	lw	s1,20(sp)
  4006ac:	8fb00010 	lw	s0,16(sp)
  4006b0:	03e00008 	jr	ra
  4006b4:	27bd0020 	addiu	sp,sp,32

004006b8 <__pf_endfield>:
  4006b8:	24020020 	li	v0,32
  4006bc:	ac82002c 	sw	v0,44(a0)
  4006c0:	00001821 	move	v1,zero
  4006c4:	00001021 	move	v0,zero
  4006c8:	ac800038 	sw	zero,56(a0)
  4006cc:	ac800010 	sw	zero,16(a0)
  4006d0:	ac800014 	sw	zero,20(a0)
  4006d4:	ac83001c 	sw	v1,28(a0)
  4006d8:	ac820018 	sw	v0,24(a0)
  4006dc:	ac800020 	sw	zero,32(a0)
  4006e0:	ac800024 	sw	zero,36(a0)
  4006e4:	ac800028 	sw	zero,40(a0)
  4006e8:	ac800030 	sw	zero,48(a0)
  4006ec:	03e00008 	jr	ra
  4006f0:	ac800034 	sw	zero,52(a0)

004006f4 <__pf_fill>:
  4006f4:	27bdffd0 	addiu	sp,sp,-48
  4006f8:	afb30024 	sw	s3,36(sp)
  4006fc:	afb20020 	sw	s2,32(sp)
  400700:	afbf0028 	sw	ra,40(sp)
  400704:	afb1001c 	sw	s1,28(sp)
  400708:	afb00018 	sw	s0,24(sp)
  40070c:	00809821 	move	s3,a0
  400710:	8c82002c 	lw	v0,44(a0)
  400714:	18a0000b 	blez	a1,400744 <__pf_fill+0x50>
  400718:	00a09021 	move	s2,a1
  40071c:	a3a20010 	sb	v0,16(sp)
  400720:	00008021 	move	s0,zero
  400724:	27b10010 	addiu	s1,sp,16
  400728:	26100001 	addiu	s0,s0,1
  40072c:	02602021 	move	a0,s3
  400730:	02202821 	move	a1,s1
  400734:	0c10019c 	jal	400670 <__pf_print>
  400738:	24060001 	li	a2,1
  40073c:	1650fffb 	bne	s2,s0,40072c <__pf_fill+0x38>
  400740:	26100001 	addiu	s0,s0,1
  400744:	8fbf0028 	lw	ra,40(sp)
  400748:	8fb30024 	lw	s3,36(sp)
  40074c:	8fb20020 	lw	s2,32(sp)
  400750:	8fb1001c 	lw	s1,28(sp)
  400754:	8fb00018 	lw	s0,24(sp)
  400758:	03e00008 	jr	ra
  40075c:	27bd0030 	addiu	sp,sp,48

00400760 <__pf_printstuff>:
  400760:	27bdffd0 	addiu	sp,sp,-48
  400764:	afbf0028 	sw	ra,40(sp)
  400768:	afb50024 	sw	s5,36(sp)
  40076c:	afb40020 	sw	s4,32(sp)
  400770:	afb3001c 	sw	s3,28(sp)
  400774:	afb20018 	sw	s2,24(sp)
  400778:	00c09821 	move	s3,a2
  40077c:	afb10014 	sw	s1,20(sp)
  400780:	afb00010 	sw	s0,16(sp)
  400784:	00808821 	move	s1,a0
  400788:	00a02021 	move	a0,a1
  40078c:	00a0a021 	move	s4,a1
  400790:	0c1003c8 	jal	400f20 <strlen>
  400794:	00e0a821 	move	s5,a3
  400798:	02602021 	move	a0,s3
  40079c:	0c1003c8 	jal	400f20 <strlen>
  4007a0:	00409021 	move	s2,v0
  4007a4:	02a02021 	move	a0,s5
  4007a8:	0c1003c8 	jal	400f20 <strlen>
  4007ac:	02428021 	addu	s0,s2,v0
  4007b0:	8e230024 	lw	v1,36(s1)
  4007b4:	02022821 	addu	a1,s0,v0
  4007b8:	00a3102a 	slt	v0,a1,v1
  4007bc:	10400040 	beqz	v0,4008c0 <__pf_printstuff+0x160>
  4007c0:	00658023 	subu	s0,v1,a1
  4007c4:	1a000056 	blez	s0,400920 <__pf_printstuff+0x1c0>
  4007c8:	02403021 	move	a2,s2
  4007cc:	8e220028 	lw	v0,40(s1)
  4007d0:	00000000 	nop
  4007d4:	10400028 	beqz	v0,400878 <__pf_printstuff+0x118>
  4007d8:	24020030 	li	v0,48
  4007dc:	0c1003c8 	jal	400f20 <strlen>
  4007e0:	02802021 	move	a0,s4
  4007e4:	00403021 	move	a2,v0
  4007e8:	02802821 	move	a1,s4
  4007ec:	0c10019c 	jal	400670 <__pf_print>
  4007f0:	02202021 	move	a0,s1
  4007f4:	0c1003c8 	jal	400f20 <strlen>
  4007f8:	02602021 	move	a0,s3
  4007fc:	00403021 	move	a2,v0
  400800:	02202021 	move	a0,s1
  400804:	0c10019c 	jal	400670 <__pf_print>
  400808:	02602821 	move	a1,s3
  40080c:	8e220028 	lw	v0,40(s1)
  400810:	00000000 	nop
  400814:	14400005 	bnez	v0,40082c <__pf_printstuff+0xcc>
  400818:	24020030 	li	v0,48
  40081c:	8e23002c 	lw	v1,44(s1)
  400820:	00000000 	nop
  400824:	1062004b 	beq	v1,v0,400954 <__pf_printstuff+0x1f4>
  400828:	02202021 	move	a0,s1
  40082c:	0c1003c8 	jal	400f20 <strlen>
  400830:	02a02021 	move	a0,s5
  400834:	00403021 	move	a2,v0
  400838:	02202021 	move	a0,s1
  40083c:	0c10019c 	jal	400670 <__pf_print>
  400840:	02a02821 	move	a1,s5
  400844:	8e220028 	lw	v0,40(s1)
  400848:	00000000 	nop
  40084c:	14400012 	bnez	v0,400898 <__pf_printstuff+0x138>
  400850:	02202021 	move	a0,s1
  400854:	8fbf0028 	lw	ra,40(sp)
  400858:	8fb50024 	lw	s5,36(sp)
  40085c:	8fb40020 	lw	s4,32(sp)
  400860:	8fb3001c 	lw	s3,28(sp)
  400864:	8fb20018 	lw	s2,24(sp)
  400868:	8fb10014 	lw	s1,20(sp)
  40086c:	8fb00010 	lw	s0,16(sp)
  400870:	03e00008 	jr	ra
  400874:	27bd0030 	addiu	sp,sp,48
  400878:	8e23002c 	lw	v1,44(s1)
  40087c:	00000000 	nop
  400880:	1062ffd6 	beq	v1,v0,4007dc <__pf_printstuff+0x7c>
  400884:	02202021 	move	a0,s1
  400888:	0c1001bd 	jal	4006f4 <__pf_fill>
  40088c:	02002821 	move	a1,s0
  400890:	081001f7 	j	4007dc <__pf_printstuff+0x7c>
  400894:	00000000 	nop
  400898:	02002821 	move	a1,s0
  40089c:	8fbf0028 	lw	ra,40(sp)
  4008a0:	8fb50024 	lw	s5,36(sp)
  4008a4:	8fb40020 	lw	s4,32(sp)
  4008a8:	8fb3001c 	lw	s3,28(sp)
  4008ac:	8fb20018 	lw	s2,24(sp)
  4008b0:	8fb10014 	lw	s1,20(sp)
  4008b4:	8fb00010 	lw	s0,16(sp)
  4008b8:	081001bd 	j	4006f4 <__pf_fill>
  4008bc:	27bd0030 	addiu	sp,sp,48
  4008c0:	02802821 	move	a1,s4
  4008c4:	02403021 	move	a2,s2
  4008c8:	0c10019c 	jal	400670 <__pf_print>
  4008cc:	02202021 	move	a0,s1
  4008d0:	0c1003c8 	jal	400f20 <strlen>
  4008d4:	02602021 	move	a0,s3
  4008d8:	00403021 	move	a2,v0
  4008dc:	02202021 	move	a0,s1
  4008e0:	0c10019c 	jal	400670 <__pf_print>
  4008e4:	02602821 	move	a1,s3
  4008e8:	0c1003c8 	jal	400f20 <strlen>
  4008ec:	02a02021 	move	a0,s5
  4008f0:	02202021 	move	a0,s1
  4008f4:	02a02821 	move	a1,s5
  4008f8:	8fbf0028 	lw	ra,40(sp)
  4008fc:	8fb50024 	lw	s5,36(sp)
  400900:	8fb40020 	lw	s4,32(sp)
  400904:	8fb3001c 	lw	s3,28(sp)
  400908:	8fb20018 	lw	s2,24(sp)
  40090c:	8fb10014 	lw	s1,20(sp)
  400910:	8fb00010 	lw	s0,16(sp)
  400914:	00403021 	move	a2,v0
  400918:	0810019c 	j	400670 <__pf_print>
  40091c:	27bd0030 	addiu	sp,sp,48
  400920:	02802821 	move	a1,s4
  400924:	0c10019c 	jal	400670 <__pf_print>
  400928:	02202021 	move	a0,s1
  40092c:	0c1003c8 	jal	400f20 <strlen>
  400930:	02602021 	move	a0,s3
  400934:	00403021 	move	a2,v0
  400938:	02202021 	move	a0,s1
  40093c:	0c10019c 	jal	400670 <__pf_print>
  400940:	02602821 	move	a1,s3
  400944:	0c1003c8 	jal	400f20 <strlen>
  400948:	02a02021 	move	a0,s5
  40094c:	0810023d 	j	4008f4 <__pf_printstuff+0x194>
  400950:	02202021 	move	a0,s1
  400954:	0c1001bd 	jal	4006f4 <__pf_fill>
  400958:	02002821 	move	a1,s0
  40095c:	0810020b 	j	40082c <__pf_printstuff+0xcc>
  400960:	00000000 	nop

00400964 <__vprintf>:
  400964:	27bdff68 	addiu	sp,sp,-152
  400968:	afbe0090 	sw	s8,144(sp)
  40096c:	27be0030 	addiu	s8,sp,48
  400970:	afb10074 	sw	s1,116(sp)
  400974:	afa40030 	sw	a0,48(sp)
  400978:	00c08821 	move	s1,a2
  40097c:	03c02021 	move	a0,s8
  400980:	afb00070 	sw	s0,112(sp)
  400984:	afbf0094 	sw	ra,148(sp)
  400988:	afb7008c 	sw	s7,140(sp)
  40098c:	afb60088 	sw	s6,136(sp)
  400990:	afb50084 	sw	s5,132(sp)
  400994:	afb40080 	sw	s4,128(sp)
  400998:	afb3007c 	sw	s3,124(sp)
  40099c:	afb20078 	sw	s2,120(sp)
  4009a0:	afa50034 	sw	a1,52(sp)
  4009a4:	afa70038 	sw	a3,56(sp)
  4009a8:	0c1001ae 	jal	4006b8 <__pf_endfield>
  4009ac:	afa0003c 	sw	zero,60(sp)
  4009b0:	82300000 	lb	s0,0(s1)
  4009b4:	00000000 	nop
  4009b8:	12000017 	beqz	s0,400a18 <__vprintf+0xb4>
  4009bc:	0220a021 	move	s4,s1
  4009c0:	0810027a 	j	4009e8 <__vprintf+0x84>
  4009c4:	00000000 	nop
  4009c8:	27a50010 	addiu	a1,sp,16
  4009cc:	24060001 	li	a2,1
  4009d0:	0c10019c 	jal	400670 <__pf_print>
  4009d4:	a3b00010 	sb	s0,16(sp)
  4009d8:	82900001 	lb	s0,1(s4)
  4009dc:	00000000 	nop
  4009e0:	1200000d 	beqz	s0,400a18 <__vprintf+0xb4>
  4009e4:	26940001 	addiu	s4,s4,1
  4009e8:	8fa20040 	lw	v0,64(sp)
  4009ec:	00000000 	nop
  4009f0:	14400016 	bnez	v0,400a4c <__vprintf+0xe8>
  4009f4:	24020025 	li	v0,37
  4009f8:	1602fff3 	bne	s0,v0,4009c8 <__vprintf+0x64>
  4009fc:	03c02021 	move	a0,s8
  400a00:	24020001 	li	v0,1
  400a04:	afa20040 	sw	v0,64(sp)
  400a08:	82900001 	lb	s0,1(s4)
  400a0c:	00000000 	nop
  400a10:	1600fff5 	bnez	s0,4009e8 <__vprintf+0x84>
  400a14:	26940001 	addiu	s4,s4,1
  400a18:	8fa2003c 	lw	v0,60(sp)
  400a1c:	8fbf0094 	lw	ra,148(sp)
  400a20:	8fbe0090 	lw	s8,144(sp)
  400a24:	8fb7008c 	lw	s7,140(sp)
  400a28:	8fb60088 	lw	s6,136(sp)
  400a2c:	8fb50084 	lw	s5,132(sp)
  400a30:	8fb40080 	lw	s4,128(sp)
  400a34:	8fb3007c 	lw	s3,124(sp)
  400a38:	8fb20078 	lw	s2,120(sp)
  400a3c:	8fb10074 	lw	s1,116(sp)
  400a40:	8fb00070 	lw	s0,112(sp)
  400a44:	03e00008 	jr	ra
  400a48:	27bd0098 	addiu	sp,sp,152
  400a4c:	3c040040 	lui	a0,0x40
  400a50:	24841874 	addiu	a0,a0,6260
  400a54:	0c1003a4 	jal	400e90 <strchr>
  400a58:	02002821 	move	a1,s0
  400a5c:	10400031 	beqz	v0,400b24 <__vprintf+0x1c0>
  400a60:	24020030 	li	v0,48
  400a64:	1202001d 	beq	s0,v0,400adc <__vprintf+0x178>
  400a68:	2a020031 	slti	v0,s0,49
  400a6c:	10400013 	beqz	v0,400abc <__vprintf+0x158>
  400a70:	2402006c 	li	v0,108
  400a74:	24020023 	li	v0,35
  400a78:	12020027 	beq	s0,v0,400b18 <__vprintf+0x1b4>
  400a7c:	2402002d 	li	v0,45
  400a80:	1202004a 	beq	s0,v0,400bac <__vprintf+0x248>
  400a84:	24020001 	li	v0,1
  400a88:	2602ffcf 	addiu	v0,s0,-49
  400a8c:	2c420009 	sltiu	v0,v0,9
  400a90:	1040001a 	beqz	v0,400afc <__vprintf+0x198>
  400a94:	3c040040 	lui	a0,0x40
  400a98:	8fa20054 	lw	v0,84(sp)
  400a9c:	00000000 	nop
  400aa0:	000218c0 	sll	v1,v0,0x3
  400aa4:	00021040 	sll	v0,v0,0x1
  400aa8:	00431021 	addu	v0,v0,v1
  400aac:	02021021 	addu	v0,s0,v0
  400ab0:	2442ffd0 	addiu	v0,v0,-48
  400ab4:	08100276 	j	4009d8 <__vprintf+0x74>
  400ab8:	afa20054 	sw	v0,84(sp)
  400abc:	1602fff3 	bne	s0,v0,400a8c <__vprintf+0x128>
  400ac0:	2602ffcf 	addiu	v0,s0,-49
  400ac4:	8fa20044 	lw	v0,68(sp)
  400ac8:	24030001 	li	v1,1
  400acc:	10430039 	beq	v0,v1,400bb4 <__vprintf+0x250>
  400ad0:	24020002 	li	v0,2
  400ad4:	08100276 	j	4009d8 <__vprintf+0x74>
  400ad8:	afa30044 	sw	v1,68(sp)
  400adc:	8fa20054 	lw	v0,84(sp)
  400ae0:	00000000 	nop
  400ae4:	1840008c 	blez	v0,400d18 <__vprintf+0x3b4>
  400ae8:	000218c0 	sll	v1,v0,0x3
  400aec:	00021040 	sll	v0,v0,0x1
  400af0:	00431021 	addu	v0,v0,v1
  400af4:	08100276 	j	4009d8 <__vprintf+0x74>
  400af8:	afa20054 	sw	v0,84(sp)
  400afc:	3c060040 	lui	a2,0x40
  400b00:	24841884 	addiu	a0,a0,6276
  400b04:	24c618ac 	addiu	a2,a2,6316
  400b08:	0c1003ec 	jal	400fb0 <__bad_assert>
  400b0c:	240500dc 	li	a1,220
  400b10:	081002a6 	j	400a98 <__vprintf+0x134>
  400b14:	00000000 	nop
  400b18:	24020001 	li	v0,1
  400b1c:	08100276 	j	4009d8 <__vprintf+0x74>
  400b20:	afa20068 	sw	v0,104(sp)
  400b24:	3c040040 	lui	a0,0x40
  400b28:	248418c0 	addiu	a0,a0,6336
  400b2c:	0c1003a4 	jal	400e90 <strchr>
  400b30:	02002821 	move	a1,s0
  400b34:	10400091 	beqz	v0,400d7c <__vprintf+0x418>
  400b38:	24020070 	li	v0,112
  400b3c:	1202001f 	beq	s0,v0,400bbc <__vprintf+0x258>
  400b40:	24020064 	li	v0,100
  400b44:	1202009e 	beq	s0,v0,400dc0 <__vprintf+0x45c>
  400b48:	24020001 	li	v0,1
  400b4c:	8fa30044 	lw	v1,68(sp)
  400b50:	00000000 	nop
  400b54:	10620003 	beq	v1,v0,400b64 <__vprintf+0x200>
  400b58:	00000000 	nop
  400b5c:	14600074 	bnez	v1,400d30 <__vprintf+0x3cc>
  400b60:	24020002 	li	v0,2
  400b64:	8fa20038 	lw	v0,56(sp)
  400b68:	afa00048 	sw	zero,72(sp)
  400b6c:	8c430000 	lw	v1,0(v0)
  400b70:	24420004 	addiu	v0,v0,4
  400b74:	afa20038 	sw	v0,56(sp)
  400b78:	afa3004c 	sw	v1,76(sp)
  400b7c:	2602ff9c 	addiu	v0,s0,-100
  400b80:	304200ff 	andi	v0,v0,0xff
  400b84:	2c430015 	sltiu	v1,v0,21
  400b88:	10600015 	beqz	v1,400be0 <__vprintf+0x27c>
  400b8c:	3c030040 	lui	v1,0x40
  400b90:	00021080 	sll	v0,v0,0x2
  400b94:	246316d0 	addiu	v1,v1,5840
  400b98:	00431021 	addu	v0,v0,v1
  400b9c:	8c440000 	lw	a0,0(v0)
  400ba0:	00000000 	nop
  400ba4:	00800008 	jr	a0
  400ba8:	00000000 	nop
  400bac:	08100276 	j	4009d8 <__vprintf+0x74>
  400bb0:	afa20058 	sw	v0,88(sp)
  400bb4:	08100276 	j	4009d8 <__vprintf+0x74>
  400bb8:	afa20044 	sw	v0,68(sp)
  400bbc:	8fa20038 	lw	v0,56(sp)
  400bc0:	afa00048 	sw	zero,72(sp)
  400bc4:	24430004 	addiu	v1,v0,4
  400bc8:	afa30038 	sw	v1,56(sp)
  400bcc:	8c440000 	lw	a0,0(v0)
  400bd0:	00000000 	nop
  400bd4:	afa4004c 	sw	a0,76(sp)
  400bd8:	24020010 	li	v0,16
  400bdc:	afa20060 	sw	v0,96(sp)
  400be0:	8fa20068 	lw	v0,104(sp)
  400be4:	00000000 	nop
  400be8:	1440004d 	bnez	v0,400d20 <__vprintf+0x3bc>
  400bec:	24020001 	li	v0,1
  400bf0:	24020070 	li	v0,112
  400bf4:	1202004a 	beq	s0,v0,400d20 <__vprintf+0x3bc>
  400bf8:	24020001 	li	v0,1
  400bfc:	8fb60060 	lw	s6,96(sp)
  400c00:	3c020040 	lui	v0,0x40
  400c04:	8fb1004c 	lw	s1,76(sp)
  400c08:	8fb00048 	lw	s0,72(sp)
  400c0c:	a3a00029 	sb	zero,41(sp)
  400c10:	245718c8 	addiu	s7,v0,6344
  400c14:	27b50028 	addiu	s5,sp,40
  400c18:	02c09821 	move	s3,s6
  400c1c:	001697c3 	sra	s2,s6,0x1f
  400c20:	02202821 	move	a1,s1
  400c24:	02002021 	move	a0,s0
  400c28:	02603821 	move	a3,s3
  400c2c:	0c1003e0 	jal	400f80 <__umoddi3>
  400c30:	02403021 	move	a2,s2
  400c34:	02e31821 	addu	v1,s7,v1
  400c38:	90620000 	lbu	v0,0(v1)
  400c3c:	02202821 	move	a1,s1
  400c40:	02002021 	move	a0,s0
  400c44:	02603821 	move	a3,s3
  400c48:	02403021 	move	a2,s2
  400c4c:	0c1003d8 	jal	400f60 <__udivdi3>
  400c50:	a2a20000 	sb	v0,0(s5)
  400c54:	00408021 	move	s0,v0
  400c58:	02031025 	or	v0,s0,v1
  400c5c:	00608821 	move	s1,v1
  400c60:	1440ffef 	bnez	v0,400c20 <__vprintf+0x2bc>
  400c64:	26b5ffff 	addiu	s5,s5,-1
  400c68:	8fa20064 	lw	v0,100(sp)
  400c6c:	00000000 	nop
  400c70:	10400006 	beqz	v0,400c8c <__vprintf+0x328>
  400c74:	3c020040 	lui	v0,0x40
  400c78:	24020010 	li	v0,16
  400c7c:	12c2005e 	beq	s6,v0,400df8 <__vprintf+0x494>
  400c80:	24020008 	li	v0,8
  400c84:	12c20037 	beq	s6,v0,400d64 <__vprintf+0x400>
  400c88:	3c020040 	lui	v0,0x40
  400c8c:	24461990 	addiu	a2,v0,6544
  400c90:	8fa20050 	lw	v0,80(sp)
  400c94:	00000000 	nop
  400c98:	10400023 	beqz	v0,400d28 <__vprintf+0x3c4>
  400c9c:	3c020040 	lui	v0,0x40
  400ca0:	3c020040 	lui	v0,0x40
  400ca4:	24451868 	addiu	a1,v0,6248
  400ca8:	03c02021 	move	a0,s8
  400cac:	0c1001d8 	jal	400760 <__pf_printstuff>
  400cb0:	26a70001 	addiu	a3,s5,1
  400cb4:	0c1001ae 	jal	4006b8 <__pf_endfield>
  400cb8:	03c02021 	move	a0,s8
  400cbc:	08100276 	j	4009d8 <__vprintf+0x74>
  400cc0:	00000000 	nop
  400cc4:	8fa20038 	lw	v0,56(sp)
  400cc8:	2403fff8 	li	v1,-8
  400ccc:	24420007 	addiu	v0,v0,7
  400cd0:	00431024 	and	v0,v0,v1
  400cd4:	8c470004 	lw	a3,4(v0)
  400cd8:	8c460000 	lw	a2,0(v0)
  400cdc:	24420008 	addiu	v0,v0,8
  400ce0:	afa20038 	sw	v0,56(sp)
  400ce4:	04c10040 	bgez	a2,400de8 <__vprintf+0x484>
  400ce8:	2402000a 	li	v0,10
  400cec:	00071823 	negu	v1,a3
  400cf0:	0003282b 	sltu	a1,zero,v1
  400cf4:	00061023 	negu	v0,a2
  400cf8:	00451023 	subu	v0,v0,a1
  400cfc:	2404ffff 	li	a0,-1
  400d00:	afa40050 	sw	a0,80(sp)
  400d04:	afa3004c 	sw	v1,76(sp)
  400d08:	afa20048 	sw	v0,72(sp)
  400d0c:	2402000a 	li	v0,10
  400d10:	081002f8 	j	400be0 <__vprintf+0x27c>
  400d14:	afa20060 	sw	v0,96(sp)
  400d18:	08100276 	j	4009d8 <__vprintf+0x74>
  400d1c:	afb0005c 	sw	s0,92(sp)
  400d20:	081002ff 	j	400bfc <__vprintf+0x298>
  400d24:	afa20064 	sw	v0,100(sp)
  400d28:	0810032a 	j	400ca8 <__vprintf+0x344>
  400d2c:	24451990 	addiu	a1,v0,6544
  400d30:	1462ff93 	bne	v1,v0,400b80 <__vprintf+0x21c>
  400d34:	2602ff9c 	addiu	v0,s0,-100
  400d38:	8fa20038 	lw	v0,56(sp)
  400d3c:	2403fff8 	li	v1,-8
  400d40:	24420007 	addiu	v0,v0,7
  400d44:	00431024 	and	v0,v0,v1
  400d48:	8c450004 	lw	a1,4(v0)
  400d4c:	8c440000 	lw	a0,0(v0)
  400d50:	24420008 	addiu	v0,v0,8
  400d54:	afa20038 	sw	v0,56(sp)
  400d58:	afa5004c 	sw	a1,76(sp)
  400d5c:	081002df 	j	400b7c <__vprintf+0x218>
  400d60:	afa40048 	sw	a0,72(sp)
  400d64:	3c020040 	lui	v0,0x40
  400d68:	08100324 	j	400c90 <__vprintf+0x32c>
  400d6c:	244618e0 	addiu	a2,v0,6368
  400d70:	24020008 	li	v0,8
  400d74:	081002f8 	j	400be0 <__vprintf+0x27c>
  400d78:	afa20060 	sw	v0,96(sp)
  400d7c:	24020073 	li	v0,115
  400d80:	12020028 	beq	s0,v0,400e24 <__vprintf+0x4c0>
  400d84:	24020063 	li	v0,99
  400d88:	12020037 	beq	s0,v0,400e68 <__vprintf+0x504>
  400d8c:	00000000 	nop
  400d90:	a3b00011 	sb	s0,17(sp)
  400d94:	3c050040 	lui	a1,0x40
  400d98:	24a51990 	addiu	a1,a1,6544
  400d9c:	03c02021 	move	a0,s8
  400da0:	00a03021 	move	a2,a1
  400da4:	27a70011 	addiu	a3,sp,17
  400da8:	0c1001d8 	jal	400760 <__pf_printstuff>
  400dac:	a3a00012 	sb	zero,18(sp)
  400db0:	0c1001ae 	jal	4006b8 <__pf_endfield>
  400db4:	03c02021 	move	a0,s8
  400db8:	08100276 	j	4009d8 <__vprintf+0x74>
  400dbc:	00000000 	nop
  400dc0:	8fa30044 	lw	v1,68(sp)
  400dc4:	00000000 	nop
  400dc8:	1062000e 	beq	v1,v0,400e04 <__vprintf+0x4a0>
  400dcc:	00000000 	nop
  400dd0:	1060000c 	beqz	v1,400e04 <__vprintf+0x4a0>
  400dd4:	24020002 	li	v0,2
  400dd8:	1062ffba 	beq	v1,v0,400cc4 <__vprintf+0x360>
  400ddc:	00003821 	move	a3,zero
  400de0:	00003021 	move	a2,zero
  400de4:	2402000a 	li	v0,10
  400de8:	afa7004c 	sw	a3,76(sp)
  400dec:	afa60048 	sw	a2,72(sp)
  400df0:	081002f8 	j	400be0 <__vprintf+0x27c>
  400df4:	afa20060 	sw	v0,96(sp)
  400df8:	3c020040 	lui	v0,0x40
  400dfc:	08100324 	j	400c90 <__vprintf+0x32c>
  400e00:	244618dc 	addiu	a2,v0,6364
  400e04:	8fa20038 	lw	v0,56(sp)
  400e08:	00000000 	nop
  400e0c:	8c430000 	lw	v1,0(v0)
  400e10:	24420004 	addiu	v0,v0,4
  400e14:	00603821 	move	a3,v1
  400e18:	000337c3 	sra	a2,v1,0x1f
  400e1c:	08100339 	j	400ce4 <__vprintf+0x380>
  400e20:	afa20038 	sw	v0,56(sp)
  400e24:	8fa30038 	lw	v1,56(sp)
  400e28:	00000000 	nop
  400e2c:	8c670000 	lw	a3,0(v1)
  400e30:	00000000 	nop
  400e34:	10e00013 	beqz	a3,400e84 <__vprintf+0x520>
  400e38:	3c020040 	lui	v0,0x40
  400e3c:	3c050040 	lui	a1,0x40
  400e40:	24a51990 	addiu	a1,a1,6544
  400e44:	24620004 	addiu	v0,v1,4
  400e48:	03c02021 	move	a0,s8
  400e4c:	00a03021 	move	a2,a1
  400e50:	0c1001d8 	jal	400760 <__pf_printstuff>
  400e54:	afa20038 	sw	v0,56(sp)
  400e58:	0c1001ae 	jal	4006b8 <__pf_endfield>
  400e5c:	03c02021 	move	a0,s8
  400e60:	08100276 	j	4009d8 <__vprintf+0x74>
  400e64:	00000000 	nop
  400e68:	8fa20038 	lw	v0,56(sp)
  400e6c:	00000000 	nop
  400e70:	8c430000 	lw	v1,0(v0)
  400e74:	24420004 	addiu	v0,v0,4
  400e78:	afa20038 	sw	v0,56(sp)
  400e7c:	08100365 	j	400d94 <__vprintf+0x430>
  400e80:	a3a30011 	sb	v1,17(sp)
  400e84:	0810038f 	j	400e3c <__vprintf+0x4d8>
  400e88:	2447186c 	addiu	a3,v0,6252
  400e8c:	00000000 	nop

00400e90 <strchr>:
  400e90:	80830000 	lb	v1,0(a0)
  400e94:	00052e00 	sll	a1,a1,0x18
  400e98:	00801021 	move	v0,a0
  400e9c:	1060000c 	beqz	v1,400ed0 <strchr+0x40>
  400ea0:	00052e03 	sra	a1,a1,0x18
  400ea4:	14a30006 	bne	a1,v1,400ec0 <strchr+0x30>
  400ea8:	24420001 	addiu	v0,v0,1
  400eac:	03e00008 	jr	ra
  400eb0:	2442ffff 	addiu	v0,v0,-1
  400eb4:	10a3000c 	beq	a1,v1,400ee8 <strchr+0x58>
  400eb8:	00000000 	nop
  400ebc:	24420001 	addiu	v0,v0,1
  400ec0:	80430000 	lb	v1,0(v0)
  400ec4:	00000000 	nop
  400ec8:	1460fffa 	bnez	v1,400eb4 <strchr+0x24>
  400ecc:	00000000 	nop
  400ed0:	14a00003 	bnez	a1,400ee0 <strchr+0x50>
  400ed4:	00000000 	nop
  400ed8:	03e00008 	jr	ra
  400edc:	00000000 	nop
  400ee0:	03e00008 	jr	ra
  400ee4:	00001021 	move	v0,zero
  400ee8:	03e00008 	jr	ra
  400eec:	00000000 	nop

00400ef0 <strerror>:
  400ef0:	3c020040 	lui	v0,0x40
  400ef4:	00042880 	sll	a1,a0,0x2
  400ef8:	24421730 	addiu	v0,v0,5936
  400efc:	3c030040 	lui	v1,0x40
  400f00:	2c840041 	sltiu	a0,a0,65
  400f04:	00a22821 	addu	a1,a1,v0
  400f08:	10800002 	beqz	a0,400f14 <strerror+0x24>
  400f0c:	246218e4 	addiu	v0,v1,6372
  400f10:	8ca20000 	lw	v0,0(a1)
  400f14:	03e00008 	jr	ra
  400f18:	00000000 	nop
  400f1c:	00000000 	nop

00400f20 <strlen>:
  400f20:	80820000 	lb	v0,0(a0)
  400f24:	00000000 	nop
  400f28:	1040000a 	beqz	v0,400f54 <strlen+0x34>
  400f2c:	00002821 	move	a1,zero
  400f30:	24a50001 	addiu	a1,a1,1
  400f34:	00851021 	addu	v0,a0,a1
  400f38:	80430000 	lb	v1,0(v0)
  400f3c:	00000000 	nop
  400f40:	1460fffc 	bnez	v1,400f34 <strlen+0x14>
  400f44:	24a50001 	addiu	a1,a1,1
  400f48:	24a5ffff 	addiu	a1,a1,-1
  400f4c:	03e00008 	jr	ra
  400f50:	00a01021 	move	v0,a1
  400f54:	03e00008 	jr	ra
  400f58:	00a01021 	move	v0,a1
  400f5c:	00000000 	nop

00400f60 <__udivdi3>:
  400f60:	27bdffe0 	addiu	sp,sp,-32
  400f64:	afbf0018 	sw	ra,24(sp)
  400f68:	0c100467 	jal	40119c <__qdivrem>
  400f6c:	afa00010 	sw	zero,16(sp)
  400f70:	8fbf0018 	lw	ra,24(sp)
  400f74:	00000000 	nop
  400f78:	03e00008 	jr	ra
  400f7c:	27bd0020 	addiu	sp,sp,32

00400f80 <__umoddi3>:
  400f80:	27bdffd8 	addiu	sp,sp,-40
  400f84:	27a20018 	addiu	v0,sp,24
  400f88:	afbf0020 	sw	ra,32(sp)
  400f8c:	0c100467 	jal	40119c <__qdivrem>
  400f90:	afa20010 	sw	v0,16(sp)
  400f94:	8fa3001c 	lw	v1,28(sp)
  400f98:	8fa20018 	lw	v0,24(sp)
  400f9c:	8fbf0020 	lw	ra,32(sp)
  400fa0:	00000000 	nop
  400fa4:	03e00008 	jr	ra
  400fa8:	27bd0028 	addiu	sp,sp,40
  400fac:	00000000 	nop

00400fb0 <__bad_assert>:
  400fb0:	27bdfee0 	addiu	sp,sp,-288
  400fb4:	00c03821 	move	a3,a2
  400fb8:	afb00118 	sw	s0,280(sp)
  400fbc:	3c060040 	lui	a2,0x40
  400fc0:	27b00018 	addiu	s0,sp,24
  400fc4:	24c61ee8 	addiu	a2,a2,7912
  400fc8:	afa40010 	sw	a0,16(sp)
  400fcc:	afa50014 	sw	a1,20(sp)
  400fd0:	02002021 	move	a0,s0
  400fd4:	afbf011c 	sw	ra,284(sp)
  400fd8:	0c100438 	jal	4010e0 <snprintf>
  400fdc:	24050100 	li	a1,256
  400fe0:	0c1003c8 	jal	400f20 <strlen>
  400fe4:	02002021 	move	a0,s0
  400fe8:	00403021 	move	a2,v0
  400fec:	02002821 	move	a1,s0
  400ff0:	0c1000a7 	jal	40029c <write>
  400ff4:	24040002 	li	a0,2
  400ff8:	0c100444 	jal	401110 <abort>
  400ffc:	00000000 	nop

00401000 <__snprintf_send>:
  401000:	10c00012 	beqz	a2,40104c <__snprintf_send+0x4c>
  401004:	00004021 	move	t0,zero
  401008:	8c870008 	lw	a3,8(a0)
  40100c:	8c820004 	lw	v0,4(a0)
  401010:	00a81821 	addu	v1,a1,t0
  401014:	00e2102b 	sltu	v0,a3,v0
  401018:	1040000a 	beqz	v0,401044 <__snprintf_send+0x44>
  40101c:	25080001 	addiu	t0,t0,1
  401020:	8c820000 	lw	v0,0(a0)
  401024:	90630000 	lbu	v1,0(v1)
  401028:	00471021 	addu	v0,v0,a3
  40102c:	a0430000 	sb	v1,0(v0)
  401030:	8c870008 	lw	a3,8(a0)
  401034:	00000000 	nop
  401038:	24e20001 	addiu	v0,a3,1
  40103c:	00403821 	move	a3,v0
  401040:	ac820008 	sw	v0,8(a0)
  401044:	14c8fff1 	bne	a2,t0,40100c <__snprintf_send+0xc>
  401048:	00000000 	nop
  40104c:	03e00008 	jr	ra
  401050:	00000000 	nop

00401054 <vsnprintf>:
  401054:	27bdffd8 	addiu	sp,sp,-40
  401058:	afb00020 	sw	s0,32(sp)
  40105c:	00a01021 	move	v0,a1
  401060:	00808021 	move	s0,a0
  401064:	3c040040 	lui	a0,0x40
  401068:	24a3ffff 	addiu	v1,a1,-1
  40106c:	afbf0024 	sw	ra,36(sp)
  401070:	24841000 	addiu	a0,a0,4096
  401074:	27a50010 	addiu	a1,sp,16
  401078:	1440000c 	bnez	v0,4010ac <vsnprintf+0x58>
  40107c:	afb00010 	sw	s0,16(sp)
  401080:	3c040040 	lui	a0,0x40
  401084:	24841000 	addiu	a0,a0,4096
  401088:	afa00014 	sw	zero,20(sp)
  40108c:	0c100259 	jal	400964 <__vprintf>
  401090:	afa00018 	sw	zero,24(sp)
  401094:	00401821 	move	v1,v0
  401098:	8fbf0024 	lw	ra,36(sp)
  40109c:	8fb00020 	lw	s0,32(sp)
  4010a0:	00601021 	move	v0,v1
  4010a4:	03e00008 	jr	ra
  4010a8:	27bd0028 	addiu	sp,sp,40
  4010ac:	afa30014 	sw	v1,20(sp)
  4010b0:	0c100259 	jal	400964 <__vprintf>
  4010b4:	afa00018 	sw	zero,24(sp)
  4010b8:	00401821 	move	v1,v0
  4010bc:	8fa20018 	lw	v0,24(sp)
  4010c0:	00000000 	nop
  4010c4:	02021021 	addu	v0,s0,v0
  4010c8:	a0400000 	sb	zero,0(v0)
  4010cc:	8fbf0024 	lw	ra,36(sp)
  4010d0:	8fb00020 	lw	s0,32(sp)
  4010d4:	00601021 	move	v0,v1
  4010d8:	03e00008 	jr	ra
  4010dc:	27bd0028 	addiu	sp,sp,40

004010e0 <snprintf>:
  4010e0:	27bdffe0 	addiu	sp,sp,-32
  4010e4:	27a2002c 	addiu	v0,sp,44
  4010e8:	afa7002c 	sw	a3,44(sp)
  4010ec:	00403821 	move	a3,v0
  4010f0:	afbf0018 	sw	ra,24(sp)
  4010f4:	0c100415 	jal	401054 <vsnprintf>
  4010f8:	afa20010 	sw	v0,16(sp)
  4010fc:	8fbf0018 	lw	ra,24(sp)
  401100:	00000000 	nop
  401104:	03e00008 	jr	ra
  401108:	27bd0020 	addiu	sp,sp,32
  40110c:	00000000 	nop

00401110 <abort>:
  401110:	27bdffe8 	addiu	sp,sp,-24
  401114:	afbf0010 	sw	ra,16(sp)
  401118:	0c100067 	jal	40019c <_exit>
  40111c:	240400ff 	li	a0,255

00401120 <shl>:
  401120:	18a00016 	blez	a1,40117c <shl+0x5c>
  401124:	24020010 	li	v0,16
  401128:	00464823 	subu	t1,v0,a2
  40112c:	00803821 	move	a3,a0
  401130:	00004021 	move	t0,zero
  401134:	8ce20000 	lw	v0,0(a3)
  401138:	8ce30004 	lw	v1,4(a3)
  40113c:	00c21004 	sllv	v0,v0,a2
  401140:	3042ffff 	andi	v0,v0,0xffff
  401144:	01231806 	srlv	v1,v1,t1
  401148:	00431025 	or	v0,v0,v1
  40114c:	25080001 	addiu	t0,t0,1
  401150:	ace20000 	sw	v0,0(a3)
  401154:	14a8fff7 	bne	a1,t0,401134 <shl+0x14>
  401158:	24e70004 	addiu	a3,a3,4
  40115c:	00051880 	sll	v1,a1,0x2
  401160:	00831821 	addu	v1,a0,v1
  401164:	8c620000 	lw	v0,0(v1)
  401168:	00000000 	nop
  40116c:	00c21004 	sllv	v0,v0,a2
  401170:	3042ffff 	andi	v0,v0,0xffff
  401174:	03e00008 	jr	ra
  401178:	ac620000 	sw	v0,0(v1)
  40117c:	00001821 	move	v1,zero
  401180:	00831821 	addu	v1,a0,v1
  401184:	8c620000 	lw	v0,0(v1)
  401188:	00000000 	nop
  40118c:	00c21004 	sllv	v0,v0,a2
  401190:	3042ffff 	andi	v0,v0,0xffff
  401194:	03e00008 	jr	ra
  401198:	ac620000 	sw	v0,0(v1)

0040119c <__qdivrem>:
  40119c:	27bdff80 	addiu	sp,sp,-128
  4011a0:	00c71025 	or	v0,a2,a3
  4011a4:	afb20060 	sw	s2,96(sp)
  4011a8:	afbf007c 	sw	ra,124(sp)
  4011ac:	afbe0078 	sw	s8,120(sp)
  4011b0:	afb70074 	sw	s7,116(sp)
  4011b4:	afb60070 	sw	s6,112(sp)
  4011b8:	afb5006c 	sw	s5,108(sp)
  4011bc:	afb40068 	sw	s4,104(sp)
  4011c0:	afb30064 	sw	s3,100(sp)
  4011c4:	afb1005c 	sw	s1,92(sp)
  4011c8:	afb00058 	sw	s0,88(sp)
  4011cc:	00a04821 	move	t1,a1
  4011d0:	8fb20090 	lw	s2,144(sp)
  4011d4:	14400018 	bnez	v0,401238 <__qdivrem+0x9c>
  4011d8:	00804021 	move	t0,a0
  4011dc:	3c031000 	lui	v1,0x1000
  4011e0:	8c640000 	lw	a0,0(v1)
  4011e4:	24020001 	li	v0,1
  4011e8:	14800002 	bnez	a0,4011f4 <__qdivrem+0x58>
  4011ec:	0044001b 	divu	zero,v0,a0
  4011f0:	0007000d 	break	0x7
  4011f4:	00001012 	mflo	v0
  4011f8:	12400003 	beqz	s2,401208 <__qdivrem+0x6c>
  4011fc:	00401821 	move	v1,v0
  401200:	ae450004 	sw	a1,4(s2)
  401204:	ae480000 	sw	t0,0(s2)
  401208:	8fbf007c 	lw	ra,124(sp)
  40120c:	8fbe0078 	lw	s8,120(sp)
  401210:	8fb70074 	lw	s7,116(sp)
  401214:	8fb60070 	lw	s6,112(sp)
  401218:	8fb5006c 	lw	s5,108(sp)
  40121c:	8fb40068 	lw	s4,104(sp)
  401220:	8fb30064 	lw	s3,100(sp)
  401224:	8fb20060 	lw	s2,96(sp)
  401228:	8fb1005c 	lw	s1,92(sp)
  40122c:	8fb00058 	lw	s0,88(sp)
  401230:	03e00008 	jr	ra
  401234:	27bd0080 	addiu	sp,sp,128
  401238:	0086102b 	sltu	v0,a0,a2
  40123c:	10400008 	beqz	v0,401260 <__qdivrem+0xc4>
  401240:	00000000 	nop
  401244:	1240010c 	beqz	s2,401678 <__qdivrem+0x4dc>
  401248:	00000000 	nop
  40124c:	00001821 	move	v1,zero
  401250:	00001021 	move	v0,zero
  401254:	ae490004 	sw	t1,4(s2)
  401258:	08100482 	j	401208 <__qdivrem+0x6c>
  40125c:	ae480000 	sw	t0,0(s2)
  401260:	10860046 	beq	a0,a2,40137c <__qdivrem+0x1e0>
  401264:	00a7102b 	sltu	v0,a1,a3
  401268:	00e08821 	move	s1,a3
  40126c:	01001821 	move	v1,t0
  401270:	00c08021 	move	s0,a2
  401274:	30c7ffff 	andi	a3,a2,0xffff
  401278:	3108ffff 	andi	t0,t0,0xffff
  40127c:	312affff 	andi	t2,t1,0xffff
  401280:	3226ffff 	andi	a2,s1,0xffff
  401284:	00031c02 	srl	v1,v1,0x10
  401288:	00092c02 	srl	a1,t1,0x10
  40128c:	00101402 	srl	v0,s0,0x10
  401290:	00112402 	srl	a0,s1,0x10
  401294:	afa00010 	sw	zero,16(sp)
  401298:	afa30014 	sw	v1,20(sp)
  40129c:	afa80018 	sw	t0,24(sp)
  4012a0:	afa5001c 	sw	a1,28(sp)
  4012a4:	afaa0020 	sw	t2,32(sp)
  4012a8:	afa20028 	sw	v0,40(sp)
  4012ac:	afa7002c 	sw	a3,44(sp)
  4012b0:	afa40030 	sw	a0,48(sp)
  4012b4:	144000f6 	bnez	v0,401690 <__qdivrem+0x4f4>
  4012b8:	afa60034 	sw	a2,52(sp)
  4012bc:	14e00033 	bnez	a3,40138c <__qdivrem+0x1f0>
  4012c0:	27a20028 	addiu	v0,sp,40
  4012c4:	148000f7 	bnez	a0,4016a4 <__qdivrem+0x508>
  4012c8:	27a2002c 	addiu	v0,sp,44
  4012cc:	14c00002 	bnez	a2,4012d8 <__qdivrem+0x13c>
  4012d0:	0066001b 	divu	zero,v1,a2
  4012d4:	0007000d 	break	0x7
  4012d8:	00001010 	mfhi	v0
  4012dc:	00021400 	sll	v0,v0,0x10
  4012e0:	00481025 	or	v0,v0,t0
  4012e4:	00004812 	mflo	t1
	...
  4012f0:	14c00002 	bnez	a2,4012fc <__qdivrem+0x160>
  4012f4:	0046001b 	divu	zero,v0,a2
  4012f8:	0007000d 	break	0x7
  4012fc:	00001810 	mfhi	v1
  401300:	00031c00 	sll	v1,v1,0x10
  401304:	00651825 	or	v1,v1,a1
  401308:	00003812 	mflo	a3
	...
  401314:	14c00002 	bnez	a2,401320 <__qdivrem+0x184>
  401318:	0066001b 	divu	zero,v1,a2
  40131c:	0007000d 	break	0x7
  401320:	00001010 	mfhi	v0
  401324:	00021400 	sll	v0,v0,0x10
  401328:	00001812 	mflo	v1
  40132c:	12400008 	beqz	s2,401350 <__qdivrem+0x1b4>
  401330:	01422025 	or	a0,t2,v0
  401334:	14c00002 	bnez	a2,401340 <__qdivrem+0x1a4>
  401338:	0086001b 	divu	zero,a0,a2
  40133c:	0007000d 	break	0x7
  401340:	ae400000 	sw	zero,0(s2)
  401344:	00001010 	mfhi	v0
  401348:	ae420004 	sw	v0,4(s2)
  40134c:	00000000 	nop
  401350:	14c00002 	bnez	a2,40135c <__qdivrem+0x1c0>
  401354:	0086001b 	divu	zero,a0,a2
  401358:	0007000d 	break	0x7
  40135c:	00091400 	sll	v0,t1,0x10
  401360:	00031c00 	sll	v1,v1,0x10
  401364:	00e28025 	or	s0,a3,v0
  401368:	02001021 	move	v0,s0
  40136c:	00002012 	mflo	a0
  401370:	00838825 	or	s1,a0,v1
  401374:	08100482 	j	401208 <__qdivrem+0x6c>
  401378:	02201821 	move	v1,s1
  40137c:	1040ffbb 	beqz	v0,40126c <__qdivrem+0xd0>
  401380:	00e08821 	move	s1,a3
  401384:	08100491 	j	401244 <__qdivrem+0xa8>
  401388:	00000000 	nop
  40138c:	afa20050 	sw	v0,80(sp)
  401390:	24170003 	li	s7,3
  401394:	27be002c 	addiu	s8,sp,44
  401398:	8fa30014 	lw	v1,20(sp)
  40139c:	24020004 	li	v0,4
  4013a0:	146000c4 	bnez	v1,4016b4 <__qdivrem+0x518>
  4013a4:	00579823 	subu	s3,v0,s7
  4013a8:	081004ed 	j	4013b4 <__qdivrem+0x218>
  4013ac:	27b40014 	addiu	s4,sp,20
  4013b0:	0060a021 	move	s4,v1
  4013b4:	8e820004 	lw	v0,4(s4)
  4013b8:	2673ffff 	addiu	s3,s3,-1
  4013bc:	1040fffc 	beqz	v0,4013b0 <__qdivrem+0x214>
  4013c0:	26830004 	addiu	v1,s4,4
  4013c4:	24020004 	li	v0,4
  4013c8:	00532023 	subu	a0,v0,s3
  4013cc:	2483ffff 	addiu	v1,a0,-1
  4013d0:	046000bc 	bltz	v1,4016c4 <__qdivrem+0x528>
  4013d4:	00001821 	move	v1,zero
  4013d8:	27a60038 	addiu	a2,sp,56
  4013dc:	00042880 	sll	a1,a0,0x2
  4013e0:	00c51021 	addu	v0,a2,a1
  4013e4:	2442fffc 	addiu	v0,v0,-4
  4013e8:	24630001 	addiu	v1,v1,1
  4013ec:	ac400000 	sw	zero,0(v0)
  4013f0:	1464fffd 	bne	v1,a0,4013e8 <__qdivrem+0x24c>
  4013f4:	2442fffc 	addiu	v0,v0,-4
  4013f8:	8fcb0000 	lw	t3,0(s8)
  4013fc:	34028000 	li	v0,0x8000
  401400:	0162102b 	sltu	v0,t3,v0
  401404:	00c5b021 	addu	s6,a2,a1
  401408:	104000ac 	beqz	v0,4016bc <__qdivrem+0x520>
  40140c:	01601821 	move	v1,t3
  401410:	0000a821 	move	s5,zero
  401414:	34048000 	li	a0,0x8000
  401418:	00031840 	sll	v1,v1,0x1
  40141c:	0064102b 	sltu	v0,v1,a0
  401420:	1440fffd 	bnez	v0,401418 <__qdivrem+0x27c>
  401424:	26b50001 	addiu	s5,s5,1
  401428:	1aa00009 	blez	s5,401450 <__qdivrem+0x2b4>
  40142c:	02f32821 	addu	a1,s7,s3
  401430:	02a03021 	move	a2,s5
  401434:	0c100448 	jal	401120 <shl>
  401438:	02802021 	move	a0,s4
  40143c:	03c02021 	move	a0,s8
  401440:	26e5ffff 	addiu	a1,s7,-1
  401444:	0c100448 	jal	401120 <shl>
  401448:	02a03021 	move	a2,s5
  40144c:	8fcb0000 	lw	t3,0(s8)
  401450:	8fa20050 	lw	v0,80(sp)
  401454:	00177080 	sll	t6,s7,0x2
  401458:	8c580008 	lw	t8,8(v0)
  40145c:	02c06821 	move	t5,s6
  401460:	02804821 	move	t1,s4
  401464:	028e6021 	addu	t4,s4,t6
  401468:	00007821 	move	t7,zero
  40146c:	3416ffff 	li	s6,0xffff
  401470:	8d240000 	lw	a0,0(t1)
  401474:	8d230004 	lw	v1,4(t1)
  401478:	8d260008 	lw	a2,8(t1)
  40147c:	11640081 	beq	t3,a0,401684 <__qdivrem+0x4e8>
  401480:	00041400 	sll	v0,a0,0x10
  401484:	00621025 	or	v0,v1,v0
  401488:	15600002 	bnez	t3,401494 <__qdivrem+0x2f8>
  40148c:	004b001b 	divu	zero,v0,t3
  401490:	0007000d 	break	0x7
  401494:	00002810 	mfhi	a1
  401498:	00003812 	mflo	a3
	...
  4014a4:	00f80018 	mult	a3,t8
  4014a8:	00051400 	sll	v0,a1,0x10
  4014ac:	00c21025 	or	v0,a2,v0
  4014b0:	00001812 	mflo	v1
  4014b4:	0043182b 	sltu	v1,v0,v1
  4014b8:	10600006 	beqz	v1,4014d4 <__qdivrem+0x338>
  4014bc:	00000000 	nop
  4014c0:	24e7ffff 	addiu	a3,a3,-1
  4014c4:	00ab2821 	addu	a1,a1,t3
  4014c8:	02c5102b 	sltu	v0,s6,a1
  4014cc:	1040fff6 	beqz	v0,4014a8 <__qdivrem+0x30c>
  4014d0:	00f80018 	mult	a3,t8
  4014d4:	1ae00017 	blez	s7,401534 <__qdivrem+0x398>
  4014d8:	00004021 	move	t0,zero
  4014dc:	8fa20050 	lw	v0,80(sp)
  4014e0:	01802021 	move	a0,t4
  4014e4:	004e3021 	addu	a2,v0,t6
  4014e8:	02e02821 	move	a1,s7
  4014ec:	3c0a0001 	lui	t2,0x1
  4014f0:	8cc20000 	lw	v0,0(a2)
  4014f4:	8c830000 	lw	v1,0(a0)
  4014f8:	00e20018 	mult	a3,v0
  4014fc:	24a5ffff 	addiu	a1,a1,-1
  401500:	24c6fffc 	addiu	a2,a2,-4
  401504:	00001012 	mflo	v0
  401508:	00621823 	subu	v1,v1,v0
  40150c:	00681823 	subu	v1,v1,t0
  401510:	00031402 	srl	v0,v1,0x10
  401514:	01421023 	subu	v0,t2,v0
  401518:	3063ffff 	andi	v1,v1,0xffff
  40151c:	ac830000 	sw	v1,0(a0)
  401520:	3048ffff 	andi	t0,v0,0xffff
  401524:	14a0fff2 	bnez	a1,4014f0 <__qdivrem+0x354>
  401528:	2484fffc 	addiu	a0,a0,-4
  40152c:	8d240000 	lw	a0,0(t1)
  401530:	00000000 	nop
  401534:	00881023 	subu	v0,a0,t0
  401538:	3044ffff 	andi	a0,v0,0xffff
  40153c:	00021c02 	srl	v1,v0,0x10
  401540:	10600018 	beqz	v1,4015a4 <__qdivrem+0x408>
  401544:	ad240000 	sw	a0,0(t1)
  401548:	1ae00012 	blez	s7,401594 <__qdivrem+0x3f8>
  40154c:	00004021 	move	t0,zero
  401550:	8fa20050 	lw	v0,80(sp)
  401554:	01802021 	move	a0,t4
  401558:	004e3021 	addu	a2,v0,t6
  40155c:	02e02821 	move	a1,s7
  401560:	8c820000 	lw	v0,0(a0)
  401564:	8cc30000 	lw	v1,0(a2)
  401568:	01021021 	addu	v0,t0,v0
  40156c:	00431021 	addu	v0,v0,v1
  401570:	3043ffff 	andi	v1,v0,0xffff
  401574:	24a5ffff 	addiu	a1,a1,-1
  401578:	ac830000 	sw	v1,0(a0)
  40157c:	00024402 	srl	t0,v0,0x10
  401580:	2484fffc 	addiu	a0,a0,-4
  401584:	14a0fff6 	bnez	a1,401560 <__qdivrem+0x3c4>
  401588:	24c6fffc 	addiu	a2,a2,-4
  40158c:	8d240000 	lw	a0,0(t1)
  401590:	00000000 	nop
  401594:	01041021 	addu	v0,t0,a0
  401598:	3042ffff 	andi	v0,v0,0xffff
  40159c:	ad220000 	sw	v0,0(t1)
  4015a0:	24e7ffff 	addiu	a3,a3,-1
  4015a4:	25ef0001 	addiu	t7,t7,1
  4015a8:	026f102a 	slt	v0,s3,t7
  4015ac:	ada70000 	sw	a3,0(t5)
  4015b0:	25290004 	addiu	t1,t1,4
  4015b4:	25ad0004 	addiu	t5,t5,4
  4015b8:	1040ffad 	beqz	v0,401470 <__qdivrem+0x2d4>
  4015bc:	258c0004 	addiu	t4,t4,4
  4015c0:	12400022 	beqz	s2,40164c <__qdivrem+0x4b0>
  4015c4:	00000000 	nop
  4015c8:	12a00016 	beqz	s5,401624 <__qdivrem+0x488>
  4015cc:	02f32821 	addu	a1,s7,s3
  4015d0:	0265102a 	slt	v0,s3,a1
  4015d4:	10400011 	beqz	v0,40161c <__qdivrem+0x480>
  4015d8:	00051080 	sll	v0,a1,0x2
  4015dc:	00051880 	sll	v1,a1,0x2
  4015e0:	24020010 	li	v0,16
  4015e4:	00553823 	subu	a3,v0,s5
  4015e8:	02833021 	addu	a2,s4,v1
  4015ec:	8cc2fffc 	lw	v0,-4(a2)
  4015f0:	8cc30000 	lw	v1,0(a2)
  4015f4:	00e21004 	sllv	v0,v0,a3
  4015f8:	02a31806 	srlv	v1,v1,s5
  4015fc:	3042ffff 	andi	v0,v0,0xffff
  401600:	24a5ffff 	addiu	a1,a1,-1
  401604:	00621825 	or	v1,v1,v0
  401608:	0265202a 	slt	a0,s3,a1
  40160c:	acc30000 	sw	v1,0(a2)
  401610:	1480fff6 	bnez	a0,4015ec <__qdivrem+0x450>
  401614:	24c6fffc 	addiu	a2,a2,-4
  401618:	00051080 	sll	v0,a1,0x2
  40161c:	00541021 	addu	v0,v0,s4
  401620:	ac400000 	sw	zero,0(v0)
  401624:	8fa20014 	lw	v0,20(sp)
  401628:	8fa40018 	lw	a0,24(sp)
  40162c:	00021400 	sll	v0,v0,0x10
  401630:	8fa3001c 	lw	v1,28(sp)
  401634:	00448025 	or	s0,v0,a0
  401638:	8fa20020 	lw	v0,32(sp)
  40163c:	00031c00 	sll	v1,v1,0x10
  401640:	00628825 	or	s1,v1,v0
  401644:	ae510004 	sw	s1,4(s2)
  401648:	ae500000 	sw	s0,0(s2)
  40164c:	8fa2003c 	lw	v0,60(sp)
  401650:	8fa40040 	lw	a0,64(sp)
  401654:	00021400 	sll	v0,v0,0x10
  401658:	8fa30044 	lw	v1,68(sp)
  40165c:	00448025 	or	s0,v0,a0
  401660:	8fa20048 	lw	v0,72(sp)
  401664:	00031c00 	sll	v1,v1,0x10
  401668:	00628825 	or	s1,v1,v0
  40166c:	02201821 	move	v1,s1
  401670:	08100482 	j	401208 <__qdivrem+0x6c>
  401674:	02001021 	move	v0,s0
  401678:	00001821 	move	v1,zero
  40167c:	08100482 	j	401208 <__qdivrem+0x6c>
  401680:	00001021 	move	v0,zero
  401684:	00602821 	move	a1,v1
  401688:	08100531 	j	4014c4 <__qdivrem+0x328>
  40168c:	3407ffff 	li	a3,0xffff
  401690:	27a20024 	addiu	v0,sp,36
  401694:	24170004 	li	s7,4
  401698:	27be0028 	addiu	s8,sp,40
  40169c:	081004e6 	j	401398 <__qdivrem+0x1fc>
  4016a0:	afa20050 	sw	v0,80(sp)
  4016a4:	24170002 	li	s7,2
  4016a8:	27be0030 	addiu	s8,sp,48
  4016ac:	081004e6 	j	401398 <__qdivrem+0x1fc>
  4016b0:	afa20050 	sw	v0,80(sp)
  4016b4:	081004f1 	j	4013c4 <__qdivrem+0x228>
  4016b8:	27b40010 	addiu	s4,sp,16
  4016bc:	08100514 	j	401450 <__qdivrem+0x2b4>
  4016c0:	0000a821 	move	s5,zero
  4016c4:	00042880 	sll	a1,a0,0x2
  4016c8:	081004fe 	j	4013f8 <__qdivrem+0x25c>
  4016cc:	27a60038 	addiu	a2,sp,56
