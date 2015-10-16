
../../../build/user/uw-testbin/widefork/widefork:     file format elf32-tradbigmips

Disassembly of section .text:

00400000 <__start>:
  400000:	3c1c1001 	lui	gp,0x1001
  400004:	279c8000 	addiu	gp,gp,-32768
  400008:	2408fff8 	li	t0,-8
  40000c:	03a8e824 	and	sp,sp,t0
  400010:	27bdfff0 	addiu	sp,sp,-16
  400014:	3c011000 	lui	at,0x1000
  400018:	ac250014 	sw	a1,20(at)
  40001c:	0c100058 	jal	400160 <main>
  400020:	00000000 	nop
  400024:	00408021 	move	s0,v0
  400028:	0c1000a5 	jal	400294 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c1000bb 	jal	4002ec <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <dowait>:
  400050:	27bdffe0 	addiu	sp,sp,-32
  400054:	afb00018 	sw	s0,24(sp)
  400058:	00003021 	move	a2,zero
  40005c:	00a08021 	move	s0,a1
  400060:	afbf001c 	sw	ra,28(sp)
  400064:	0c1000bd 	jal	4002f4 <waitpid>
  400068:	27a50010 	addiu	a1,sp,16
  40006c:	3c040040 	lui	a0,0x40
  400070:	04400015 	bltz	v0,4000c8 <dowait+0x78>
  400074:	24841990 	addiu	a0,a0,6544
  400078:	8fa20010 	lw	v0,16(sp)
  40007c:	00000000 	nop
  400080:	00021883 	sra	v1,v0,0x2
  400084:	30420003 	andi	v0,v0,0x3
  400088:	14400007 	bnez	v0,4000a8 <dowait+0x58>
  40008c:	24040078 	li	a0,120
  400090:	10700005 	beq	v1,s0,4000a8 <dowait+0x58>
  400094:	24640060 	addiu	a0,v1,96
  400098:	8fbf001c 	lw	ra,28(sp)
  40009c:	8fb00018 	lw	s0,24(sp)
  4000a0:	03e00008 	jr	ra
  4000a4:	27bd0020 	addiu	sp,sp,32
  4000a8:	0c100084 	jal	400210 <putchar>
  4000ac:	00000000 	nop
  4000b0:	0c100084 	jal	400210 <putchar>
  4000b4:	2404000a 	li	a0,10
  4000b8:	8fbf001c 	lw	ra,28(sp)
  4000bc:	8fb00018 	lw	s0,24(sp)
  4000c0:	03e00008 	jr	ra
  4000c4:	27bd0020 	addiu	sp,sp,32
  4000c8:	0c1001d2 	jal	400748 <warnx>
  4000cc:	00000000 	nop
  4000d0:	8fbf001c 	lw	ra,28(sp)
  4000d4:	8fb00018 	lw	s0,24(sp)
  4000d8:	03e00008 	jr	ra
  4000dc:	27bd0020 	addiu	sp,sp,32

004000e0 <dofork>:
  4000e0:	27bdffe0 	addiu	sp,sp,-32
  4000e4:	afb10014 	sw	s1,20(sp)
  4000e8:	afb00010 	sw	s0,16(sp)
  4000ec:	afbf0018 	sw	ra,24(sp)
  4000f0:	0c1000b5 	jal	4002d4 <fork>
  4000f4:	00808821 	move	s1,a0
  4000f8:	04400008 	bltz	v0,40011c <dofork+0x3c>
  4000fc:	00408021 	move	s0,v0
  400100:	10400011 	beqz	v0,400148 <dofork+0x68>
  400104:	02001021 	move	v0,s0
  400108:	8fbf0018 	lw	ra,24(sp)
  40010c:	8fb10014 	lw	s1,20(sp)
  400110:	8fb00010 	lw	s0,16(sp)
  400114:	03e00008 	jr	ra
  400118:	27bd0020 	addiu	sp,sp,32
  40011c:	3c050040 	lui	a1,0x40
  400120:	02203021 	move	a2,s1
  400124:	24a5199c 	addiu	a1,a1,6556
  400128:	0c1001ae 	jal	4006b8 <errx>
  40012c:	24040001 	li	a0,1
  400130:	02001021 	move	v0,s0
  400134:	8fbf0018 	lw	ra,24(sp)
  400138:	8fb10014 	lw	s1,20(sp)
  40013c:	8fb00010 	lw	s0,16(sp)
  400140:	03e00008 	jr	ra
  400144:	27bd0020 	addiu	sp,sp,32
  400148:	0c100084 	jal	400210 <putchar>
  40014c:	26240040 	addiu	a0,s1,64
  400150:	0c100084 	jal	400210 <putchar>
  400154:	2404000a 	li	a0,10
  400158:	0c1000bb 	jal	4002ec <_exit>
  40015c:	02202021 	move	a0,s1

00400160 <main>:
  400160:	27bdffe0 	addiu	sp,sp,-32
  400164:	24040050 	li	a0,80
  400168:	afbf001c 	sw	ra,28(sp)
  40016c:	afb20018 	sw	s2,24(sp)
  400170:	afb10014 	sw	s1,20(sp)
  400174:	0c100084 	jal	400210 <putchar>
  400178:	afb00010 	sw	s0,16(sp)
  40017c:	0c100084 	jal	400210 <putchar>
  400180:	2404000a 	li	a0,10
  400184:	0c100038 	jal	4000e0 <dofork>
  400188:	24040001 	li	a0,1
  40018c:	24040050 	li	a0,80
  400190:	0c100084 	jal	400210 <putchar>
  400194:	00409021 	move	s2,v0
  400198:	0c100084 	jal	400210 <putchar>
  40019c:	2404000a 	li	a0,10
  4001a0:	0c100038 	jal	4000e0 <dofork>
  4001a4:	24040002 	li	a0,2
  4001a8:	24040050 	li	a0,80
  4001ac:	0c100084 	jal	400210 <putchar>
  4001b0:	00408821 	move	s1,v0
  4001b4:	0c100084 	jal	400210 <putchar>
  4001b8:	2404000a 	li	a0,10
  4001bc:	0c100038 	jal	4000e0 <dofork>
  4001c0:	24040003 	li	a0,3
  4001c4:	02402021 	move	a0,s2
  4001c8:	24050001 	li	a1,1
  4001cc:	0c100014 	jal	400050 <dowait>
  4001d0:	00408021 	move	s0,v0
  4001d4:	02202021 	move	a0,s1
  4001d8:	0c100014 	jal	400050 <dowait>
  4001dc:	24050002 	li	a1,2
  4001e0:	02002021 	move	a0,s0
  4001e4:	0c100014 	jal	400050 <dowait>
  4001e8:	24050003 	li	a1,3
  4001ec:	8fbf001c 	lw	ra,28(sp)
  4001f0:	8fb20018 	lw	s2,24(sp)
  4001f4:	8fb10014 	lw	s1,20(sp)
  4001f8:	8fb00010 	lw	s0,16(sp)
  4001fc:	00001021 	move	v0,zero
  400200:	03e00008 	jr	ra
  400204:	27bd0020 	addiu	sp,sp,32
	...

00400210 <putchar>:
  400210:	27bdffe0 	addiu	sp,sp,-32
  400214:	afb00018 	sw	s0,24(sp)
  400218:	27a50010 	addiu	a1,sp,16
  40021c:	00808021 	move	s0,a0
  400220:	24060001 	li	a2,1
  400224:	24040001 	li	a0,1
  400228:	afbf001c 	sw	ra,28(sp)
  40022c:	0c1000fb 	jal	4003ec <write>
  400230:	a3b00010 	sb	s0,16(sp)
  400234:	18400005 	blez	v0,40024c <putchar+0x3c>
  400238:	02001021 	move	v0,s0
  40023c:	8fbf001c 	lw	ra,28(sp)
  400240:	8fb00018 	lw	s0,24(sp)
  400244:	03e00008 	jr	ra
  400248:	27bd0020 	addiu	sp,sp,32
  40024c:	2410ffff 	li	s0,-1
  400250:	02001021 	move	v0,s0
  400254:	8fbf001c 	lw	ra,28(sp)
  400258:	8fb00018 	lw	s0,24(sp)
  40025c:	03e00008 	jr	ra
  400260:	27bd0020 	addiu	sp,sp,32
	...

00400270 <__exit_hack>:
  400270:	27bdfff8 	addiu	sp,sp,-8
  400274:	24020001 	li	v0,1
  400278:	afa20000 	sw	v0,0(sp)
  40027c:	8fa20000 	lw	v0,0(sp)
  400280:	00000000 	nop
  400284:	1440fffd 	bnez	v0,40027c <__exit_hack+0xc>
  400288:	00000000 	nop
  40028c:	03e00008 	jr	ra
  400290:	27bd0008 	addiu	sp,sp,8

00400294 <exit>:
  400294:	27bdffe8 	addiu	sp,sp,-24
  400298:	afbf0010 	sw	ra,16(sp)
  40029c:	0c1000bb 	jal	4002ec <_exit>
  4002a0:	00000000 	nop
	...

004002b0 <__syscall>:
  4002b0:	0000000c 	syscall
  4002b4:	10e00005 	beqz	a3,4002cc <__syscall+0x1c>
  4002b8:	00000000 	nop
  4002bc:	3c011000 	lui	at,0x1000
  4002c0:	ac220010 	sw	v0,16(at)
  4002c4:	2403ffff 	li	v1,-1
  4002c8:	2402ffff 	li	v0,-1
  4002cc:	03e00008 	jr	ra
  4002d0:	00000000 	nop

004002d4 <fork>:
  4002d4:	081000ac 	j	4002b0 <__syscall>
  4002d8:	24020000 	li	v0,0

004002dc <vfork>:
  4002dc:	081000ac 	j	4002b0 <__syscall>
  4002e0:	24020001 	li	v0,1

004002e4 <execv>:
  4002e4:	081000ac 	j	4002b0 <__syscall>
  4002e8:	24020002 	li	v0,2

004002ec <_exit>:
  4002ec:	081000ac 	j	4002b0 <__syscall>
  4002f0:	24020003 	li	v0,3

004002f4 <waitpid>:
  4002f4:	081000ac 	j	4002b0 <__syscall>
  4002f8:	24020004 	li	v0,4

004002fc <getpid>:
  4002fc:	081000ac 	j	4002b0 <__syscall>
  400300:	24020005 	li	v0,5

00400304 <getppid>:
  400304:	081000ac 	j	4002b0 <__syscall>
  400308:	24020006 	li	v0,6

0040030c <sbrk>:
  40030c:	081000ac 	j	4002b0 <__syscall>
  400310:	24020007 	li	v0,7

00400314 <mmap>:
  400314:	081000ac 	j	4002b0 <__syscall>
  400318:	24020008 	li	v0,8

0040031c <munmap>:
  40031c:	081000ac 	j	4002b0 <__syscall>
  400320:	24020009 	li	v0,9

00400324 <mprotect>:
  400324:	081000ac 	j	4002b0 <__syscall>
  400328:	2402000a 	li	v0,10

0040032c <umask>:
  40032c:	081000ac 	j	4002b0 <__syscall>
  400330:	24020011 	li	v0,17

00400334 <issetugid>:
  400334:	081000ac 	j	4002b0 <__syscall>
  400338:	24020012 	li	v0,18

0040033c <getresuid>:
  40033c:	081000ac 	j	4002b0 <__syscall>
  400340:	24020013 	li	v0,19

00400344 <setresuid>:
  400344:	081000ac 	j	4002b0 <__syscall>
  400348:	24020014 	li	v0,20

0040034c <getresgid>:
  40034c:	081000ac 	j	4002b0 <__syscall>
  400350:	24020015 	li	v0,21

00400354 <setresgid>:
  400354:	081000ac 	j	4002b0 <__syscall>
  400358:	24020016 	li	v0,22

0040035c <getgroups>:
  40035c:	081000ac 	j	4002b0 <__syscall>
  400360:	24020017 	li	v0,23

00400364 <setgroups>:
  400364:	081000ac 	j	4002b0 <__syscall>
  400368:	24020018 	li	v0,24

0040036c <__getlogin>:
  40036c:	081000ac 	j	4002b0 <__syscall>
  400370:	24020019 	li	v0,25

00400374 <__setlogin>:
  400374:	081000ac 	j	4002b0 <__syscall>
  400378:	2402001a 	li	v0,26

0040037c <kill>:
  40037c:	081000ac 	j	4002b0 <__syscall>
  400380:	2402001b 	li	v0,27

00400384 <sigaction>:
  400384:	081000ac 	j	4002b0 <__syscall>
  400388:	2402001c 	li	v0,28

0040038c <sigpending>:
  40038c:	081000ac 	j	4002b0 <__syscall>
  400390:	2402001d 	li	v0,29

00400394 <sigprocmask>:
  400394:	081000ac 	j	4002b0 <__syscall>
  400398:	2402001e 	li	v0,30

0040039c <sigsuspend>:
  40039c:	081000ac 	j	4002b0 <__syscall>
  4003a0:	2402001f 	li	v0,31

004003a4 <sigreturn>:
  4003a4:	081000ac 	j	4002b0 <__syscall>
  4003a8:	24020020 	li	v0,32

004003ac <open>:
  4003ac:	081000ac 	j	4002b0 <__syscall>
  4003b0:	2402002d 	li	v0,45

004003b4 <pipe>:
  4003b4:	081000ac 	j	4002b0 <__syscall>
  4003b8:	2402002e 	li	v0,46

004003bc <dup>:
  4003bc:	081000ac 	j	4002b0 <__syscall>
  4003c0:	2402002f 	li	v0,47

004003c4 <dup2>:
  4003c4:	081000ac 	j	4002b0 <__syscall>
  4003c8:	24020030 	li	v0,48

004003cc <close>:
  4003cc:	081000ac 	j	4002b0 <__syscall>
  4003d0:	24020031 	li	v0,49

004003d4 <read>:
  4003d4:	081000ac 	j	4002b0 <__syscall>
  4003d8:	24020032 	li	v0,50

004003dc <pread>:
  4003dc:	081000ac 	j	4002b0 <__syscall>
  4003e0:	24020033 	li	v0,51

004003e4 <getdirentry>:
  4003e4:	081000ac 	j	4002b0 <__syscall>
  4003e8:	24020036 	li	v0,54

004003ec <write>:
  4003ec:	081000ac 	j	4002b0 <__syscall>
  4003f0:	24020037 	li	v0,55

004003f4 <pwrite>:
  4003f4:	081000ac 	j	4002b0 <__syscall>
  4003f8:	24020038 	li	v0,56

004003fc <lseek>:
  4003fc:	081000ac 	j	4002b0 <__syscall>
  400400:	2402003b 	li	v0,59

00400404 <flock>:
  400404:	081000ac 	j	4002b0 <__syscall>
  400408:	2402003c 	li	v0,60

0040040c <ftruncate>:
  40040c:	081000ac 	j	4002b0 <__syscall>
  400410:	2402003d 	li	v0,61

00400414 <fsync>:
  400414:	081000ac 	j	4002b0 <__syscall>
  400418:	2402003e 	li	v0,62

0040041c <fcntl>:
  40041c:	081000ac 	j	4002b0 <__syscall>
  400420:	2402003f 	li	v0,63

00400424 <ioctl>:
  400424:	081000ac 	j	4002b0 <__syscall>
  400428:	24020040 	li	v0,64

0040042c <select>:
  40042c:	081000ac 	j	4002b0 <__syscall>
  400430:	24020041 	li	v0,65

00400434 <poll>:
  400434:	081000ac 	j	4002b0 <__syscall>
  400438:	24020042 	li	v0,66

0040043c <link>:
  40043c:	081000ac 	j	4002b0 <__syscall>
  400440:	24020043 	li	v0,67

00400444 <remove>:
  400444:	081000ac 	j	4002b0 <__syscall>
  400448:	24020044 	li	v0,68

0040044c <mkdir>:
  40044c:	081000ac 	j	4002b0 <__syscall>
  400450:	24020045 	li	v0,69

00400454 <rmdir>:
  400454:	081000ac 	j	4002b0 <__syscall>
  400458:	24020046 	li	v0,70

0040045c <mkfifo>:
  40045c:	081000ac 	j	4002b0 <__syscall>
  400460:	24020047 	li	v0,71

00400464 <rename>:
  400464:	081000ac 	j	4002b0 <__syscall>
  400468:	24020048 	li	v0,72

0040046c <access>:
  40046c:	081000ac 	j	4002b0 <__syscall>
  400470:	24020049 	li	v0,73

00400474 <chdir>:
  400474:	081000ac 	j	4002b0 <__syscall>
  400478:	2402004a 	li	v0,74

0040047c <fchdir>:
  40047c:	081000ac 	j	4002b0 <__syscall>
  400480:	2402004b 	li	v0,75

00400484 <__getcwd>:
  400484:	081000ac 	j	4002b0 <__syscall>
  400488:	2402004c 	li	v0,76

0040048c <symlink>:
  40048c:	081000ac 	j	4002b0 <__syscall>
  400490:	2402004d 	li	v0,77

00400494 <readlink>:
  400494:	081000ac 	j	4002b0 <__syscall>
  400498:	2402004e 	li	v0,78

0040049c <mount>:
  40049c:	081000ac 	j	4002b0 <__syscall>
  4004a0:	2402004f 	li	v0,79

004004a4 <unmount>:
  4004a4:	081000ac 	j	4002b0 <__syscall>
  4004a8:	24020050 	li	v0,80

004004ac <stat>:
  4004ac:	081000ac 	j	4002b0 <__syscall>
  4004b0:	24020051 	li	v0,81

004004b4 <fstat>:
  4004b4:	081000ac 	j	4002b0 <__syscall>
  4004b8:	24020052 	li	v0,82

004004bc <lstat>:
  4004bc:	081000ac 	j	4002b0 <__syscall>
  4004c0:	24020053 	li	v0,83

004004c4 <utimes>:
  4004c4:	081000ac 	j	4002b0 <__syscall>
  4004c8:	24020054 	li	v0,84

004004cc <futimes>:
  4004cc:	081000ac 	j	4002b0 <__syscall>
  4004d0:	24020055 	li	v0,85

004004d4 <lutimes>:
  4004d4:	081000ac 	j	4002b0 <__syscall>
  4004d8:	24020056 	li	v0,86

004004dc <chmod>:
  4004dc:	081000ac 	j	4002b0 <__syscall>
  4004e0:	24020057 	li	v0,87

004004e4 <chown>:
  4004e4:	081000ac 	j	4002b0 <__syscall>
  4004e8:	24020058 	li	v0,88

004004ec <fchmod>:
  4004ec:	081000ac 	j	4002b0 <__syscall>
  4004f0:	24020059 	li	v0,89

004004f4 <fchown>:
  4004f4:	081000ac 	j	4002b0 <__syscall>
  4004f8:	2402005a 	li	v0,90

004004fc <lchmod>:
  4004fc:	081000ac 	j	4002b0 <__syscall>
  400500:	2402005b 	li	v0,91

00400504 <lchown>:
  400504:	081000ac 	j	4002b0 <__syscall>
  400508:	2402005c 	li	v0,92

0040050c <socket>:
  40050c:	081000ac 	j	4002b0 <__syscall>
  400510:	24020062 	li	v0,98

00400514 <bind>:
  400514:	081000ac 	j	4002b0 <__syscall>
  400518:	24020063 	li	v0,99

0040051c <connect>:
  40051c:	081000ac 	j	4002b0 <__syscall>
  400520:	24020064 	li	v0,100

00400524 <listen>:
  400524:	081000ac 	j	4002b0 <__syscall>
  400528:	24020065 	li	v0,101

0040052c <accept>:
  40052c:	081000ac 	j	4002b0 <__syscall>
  400530:	24020066 	li	v0,102

00400534 <shutdown>:
  400534:	081000ac 	j	4002b0 <__syscall>
  400538:	24020068 	li	v0,104

0040053c <getsockname>:
  40053c:	081000ac 	j	4002b0 <__syscall>
  400540:	24020069 	li	v0,105

00400544 <getpeername>:
  400544:	081000ac 	j	4002b0 <__syscall>
  400548:	2402006a 	li	v0,106

0040054c <getsockopt>:
  40054c:	081000ac 	j	4002b0 <__syscall>
  400550:	2402006b 	li	v0,107

00400554 <setsockopt>:
  400554:	081000ac 	j	4002b0 <__syscall>
  400558:	2402006c 	li	v0,108

0040055c <__time>:
  40055c:	081000ac 	j	4002b0 <__syscall>
  400560:	24020071 	li	v0,113

00400564 <__settime>:
  400564:	081000ac 	j	4002b0 <__syscall>
  400568:	24020072 	li	v0,114

0040056c <nanosleep>:
  40056c:	081000ac 	j	4002b0 <__syscall>
  400570:	24020073 	li	v0,115

00400574 <sync>:
  400574:	081000ac 	j	4002b0 <__syscall>
  400578:	24020076 	li	v0,118

0040057c <reboot>:
  40057c:	081000ac 	j	4002b0 <__syscall>
  400580:	24020077 	li	v0,119
	...

00400590 <__senderr>:
  400590:	081000fb 	j	4003ec <write>
  400594:	24040002 	li	a0,2

00400598 <__senderrstr>:
  400598:	27bdffe8 	addiu	sp,sp,-24
  40059c:	afbf0014 	sw	ra,20(sp)
  4005a0:	afb00010 	sw	s0,16(sp)
  4005a4:	0c10041c 	jal	401070 <strlen>
  4005a8:	00808021 	move	s0,a0
  4005ac:	00403021 	move	a2,v0
  4005b0:	02002821 	move	a1,s0
  4005b4:	8fbf0014 	lw	ra,20(sp)
  4005b8:	8fb00010 	lw	s0,16(sp)
  4005bc:	00002021 	move	a0,zero
  4005c0:	08100164 	j	400590 <__senderr>
  4005c4:	27bd0018 	addiu	sp,sp,24

004005c8 <__printerr>:
  4005c8:	27bdffd8 	addiu	sp,sp,-40
  4005cc:	afb40020 	sw	s4,32(sp)
  4005d0:	afb3001c 	sw	s3,28(sp)
  4005d4:	afb20018 	sw	s2,24(sp)
  4005d8:	afb10014 	sw	s1,20(sp)
  4005dc:	afbf0024 	sw	ra,36(sp)
  4005e0:	afb00010 	sw	s0,16(sp)
  4005e4:	3c021000 	lui	v0,0x1000
  4005e8:	00809821 	move	s3,a0
  4005ec:	8c440010 	lw	a0,16(v0)
  4005f0:	00a08821 	move	s1,a1
  4005f4:	0c100410 	jal	401040 <strerror>
  4005f8:	00c09021 	move	s2,a2
  4005fc:	0040a021 	move	s4,v0
  400600:	3c021000 	lui	v0,0x1000
  400604:	8c420014 	lw	v0,20(v0)
  400608:	00000000 	nop
  40060c:	1040001f 	beqz	v0,40068c <__printerr+0xc4>
  400610:	00000000 	nop
  400614:	8c420000 	lw	v0,0(v0)
  400618:	00000000 	nop
  40061c:	1040001b 	beqz	v0,40068c <__printerr+0xc4>
  400620:	00402021 	move	a0,v0
  400624:	0c100166 	jal	400598 <__senderrstr>
  400628:	3c100040 	lui	s0,0x40
  40062c:	0c100166 	jal	400598 <__senderrstr>
  400630:	260419bc 	addiu	a0,s0,6588
  400634:	3c040040 	lui	a0,0x40
  400638:	24840590 	addiu	a0,a0,1424
  40063c:	02203021 	move	a2,s1
  400640:	02403821 	move	a3,s2
  400644:	0c1002ad 	jal	400ab4 <__vprintf>
  400648:	00002821 	move	a1,zero
  40064c:	12600005 	beqz	s3,400664 <__printerr+0x9c>
  400650:	260419bc 	addiu	a0,s0,6588
  400654:	0c100166 	jal	400598 <__senderrstr>
  400658:	00000000 	nop
  40065c:	0c100166 	jal	400598 <__senderrstr>
  400660:	02802021 	move	a0,s4
  400664:	3c040040 	lui	a0,0x40
  400668:	8fbf0024 	lw	ra,36(sp)
  40066c:	8fb40020 	lw	s4,32(sp)
  400670:	8fb3001c 	lw	s3,28(sp)
  400674:	8fb20018 	lw	s2,24(sp)
  400678:	8fb10014 	lw	s1,20(sp)
  40067c:	8fb00010 	lw	s0,16(sp)
  400680:	248419c0 	addiu	a0,a0,6592
  400684:	08100166 	j	400598 <__senderrstr>
  400688:	27bd0028 	addiu	sp,sp,40
  40068c:	3c020040 	lui	v0,0x40
  400690:	08100189 	j	400624 <__printerr+0x5c>
  400694:	244419a4 	addiu	a0,v0,6564

00400698 <verrx>:
  400698:	27bdffe8 	addiu	sp,sp,-24
  40069c:	afb00010 	sw	s0,16(sp)
  4006a0:	00808021 	move	s0,a0
  4006a4:	afbf0014 	sw	ra,20(sp)
  4006a8:	0c100172 	jal	4005c8 <__printerr>
  4006ac:	00002021 	move	a0,zero
  4006b0:	0c1000a5 	jal	400294 <exit>
  4006b4:	02002021 	move	a0,s0

004006b8 <errx>:
  4006b8:	27bdffe0 	addiu	sp,sp,-32
  4006bc:	27a20028 	addiu	v0,sp,40
  4006c0:	afa60028 	sw	a2,40(sp)
  4006c4:	00403021 	move	a2,v0
  4006c8:	afbf0018 	sw	ra,24(sp)
  4006cc:	afa7002c 	sw	a3,44(sp)
  4006d0:	0c1001a6 	jal	400698 <verrx>
  4006d4:	afa20010 	sw	v0,16(sp)
  4006d8:	8fbf0018 	lw	ra,24(sp)
  4006dc:	00000000 	nop
  4006e0:	03e00008 	jr	ra
  4006e4:	27bd0020 	addiu	sp,sp,32

004006e8 <verr>:
  4006e8:	27bdffe8 	addiu	sp,sp,-24
  4006ec:	afb00010 	sw	s0,16(sp)
  4006f0:	00808021 	move	s0,a0
  4006f4:	afbf0014 	sw	ra,20(sp)
  4006f8:	0c100172 	jal	4005c8 <__printerr>
  4006fc:	24040001 	li	a0,1
  400700:	0c1000a5 	jal	400294 <exit>
  400704:	02002021 	move	a0,s0

00400708 <err>:
  400708:	27bdffe0 	addiu	sp,sp,-32
  40070c:	27a20028 	addiu	v0,sp,40
  400710:	afa60028 	sw	a2,40(sp)
  400714:	00403021 	move	a2,v0
  400718:	afbf0018 	sw	ra,24(sp)
  40071c:	afa7002c 	sw	a3,44(sp)
  400720:	0c1001ba 	jal	4006e8 <verr>
  400724:	afa20010 	sw	v0,16(sp)
  400728:	8fbf0018 	lw	ra,24(sp)
  40072c:	00000000 	nop
  400730:	03e00008 	jr	ra
  400734:	27bd0020 	addiu	sp,sp,32

00400738 <vwarnx>:
  400738:	00a03021 	move	a2,a1
  40073c:	00802821 	move	a1,a0
  400740:	08100172 	j	4005c8 <__printerr>
  400744:	00002021 	move	a0,zero

00400748 <warnx>:
  400748:	27bdffe0 	addiu	sp,sp,-32
  40074c:	27a20024 	addiu	v0,sp,36
  400750:	afa50024 	sw	a1,36(sp)
  400754:	00402821 	move	a1,v0
  400758:	afbf0018 	sw	ra,24(sp)
  40075c:	afa60028 	sw	a2,40(sp)
  400760:	afa7002c 	sw	a3,44(sp)
  400764:	0c1001ce 	jal	400738 <vwarnx>
  400768:	afa20010 	sw	v0,16(sp)
  40076c:	8fbf0018 	lw	ra,24(sp)
  400770:	00000000 	nop
  400774:	03e00008 	jr	ra
  400778:	27bd0020 	addiu	sp,sp,32

0040077c <vwarn>:
  40077c:	00a03021 	move	a2,a1
  400780:	00802821 	move	a1,a0
  400784:	08100172 	j	4005c8 <__printerr>
  400788:	24040001 	li	a0,1

0040078c <warn>:
  40078c:	27bdffe0 	addiu	sp,sp,-32
  400790:	27a20024 	addiu	v0,sp,36
  400794:	afa50024 	sw	a1,36(sp)
  400798:	00402821 	move	a1,v0
  40079c:	afbf0018 	sw	ra,24(sp)
  4007a0:	afa60028 	sw	a2,40(sp)
  4007a4:	afa7002c 	sw	a3,44(sp)
  4007a8:	0c1001df 	jal	40077c <vwarn>
  4007ac:	afa20010 	sw	v0,16(sp)
  4007b0:	8fbf0018 	lw	ra,24(sp)
  4007b4:	00000000 	nop
  4007b8:	03e00008 	jr	ra
  4007bc:	27bd0020 	addiu	sp,sp,32

004007c0 <__pf_print>:
  4007c0:	27bdffe0 	addiu	sp,sp,-32
  4007c4:	afbf0018 	sw	ra,24(sp)
  4007c8:	afb10014 	sw	s1,20(sp)
  4007cc:	afb00010 	sw	s0,16(sp)
  4007d0:	8c830000 	lw	v1,0(a0)
  4007d4:	00808021 	move	s0,a0
  4007d8:	8c840004 	lw	a0,4(a0)
  4007dc:	0060f809 	jalr	v1
  4007e0:	00c08821 	move	s1,a2
  4007e4:	8e02000c 	lw	v0,12(s0)
  4007e8:	00000000 	nop
  4007ec:	00511021 	addu	v0,v0,s1
  4007f0:	ae02000c 	sw	v0,12(s0)
  4007f4:	8fbf0018 	lw	ra,24(sp)
  4007f8:	8fb10014 	lw	s1,20(sp)
  4007fc:	8fb00010 	lw	s0,16(sp)
  400800:	03e00008 	jr	ra
  400804:	27bd0020 	addiu	sp,sp,32

00400808 <__pf_endfield>:
  400808:	24020020 	li	v0,32
  40080c:	ac82002c 	sw	v0,44(a0)
  400810:	00001821 	move	v1,zero
  400814:	00001021 	move	v0,zero
  400818:	ac800038 	sw	zero,56(a0)
  40081c:	ac800010 	sw	zero,16(a0)
  400820:	ac800014 	sw	zero,20(a0)
  400824:	ac83001c 	sw	v1,28(a0)
  400828:	ac820018 	sw	v0,24(a0)
  40082c:	ac800020 	sw	zero,32(a0)
  400830:	ac800024 	sw	zero,36(a0)
  400834:	ac800028 	sw	zero,40(a0)
  400838:	ac800030 	sw	zero,48(a0)
  40083c:	03e00008 	jr	ra
  400840:	ac800034 	sw	zero,52(a0)

00400844 <__pf_fill>:
  400844:	27bdffd0 	addiu	sp,sp,-48
  400848:	afb30024 	sw	s3,36(sp)
  40084c:	afb20020 	sw	s2,32(sp)
  400850:	afbf0028 	sw	ra,40(sp)
  400854:	afb1001c 	sw	s1,28(sp)
  400858:	afb00018 	sw	s0,24(sp)
  40085c:	00809821 	move	s3,a0
  400860:	8c82002c 	lw	v0,44(a0)
  400864:	18a0000b 	blez	a1,400894 <__pf_fill+0x50>
  400868:	00a09021 	move	s2,a1
  40086c:	a3a20010 	sb	v0,16(sp)
  400870:	00008021 	move	s0,zero
  400874:	27b10010 	addiu	s1,sp,16
  400878:	26100001 	addiu	s0,s0,1
  40087c:	02602021 	move	a0,s3
  400880:	02202821 	move	a1,s1
  400884:	0c1001f0 	jal	4007c0 <__pf_print>
  400888:	24060001 	li	a2,1
  40088c:	1650fffb 	bne	s2,s0,40087c <__pf_fill+0x38>
  400890:	26100001 	addiu	s0,s0,1
  400894:	8fbf0028 	lw	ra,40(sp)
  400898:	8fb30024 	lw	s3,36(sp)
  40089c:	8fb20020 	lw	s2,32(sp)
  4008a0:	8fb1001c 	lw	s1,28(sp)
  4008a4:	8fb00018 	lw	s0,24(sp)
  4008a8:	03e00008 	jr	ra
  4008ac:	27bd0030 	addiu	sp,sp,48

004008b0 <__pf_printstuff>:
  4008b0:	27bdffd0 	addiu	sp,sp,-48
  4008b4:	afbf0028 	sw	ra,40(sp)
  4008b8:	afb50024 	sw	s5,36(sp)
  4008bc:	afb40020 	sw	s4,32(sp)
  4008c0:	afb3001c 	sw	s3,28(sp)
  4008c4:	afb20018 	sw	s2,24(sp)
  4008c8:	00c09821 	move	s3,a2
  4008cc:	afb10014 	sw	s1,20(sp)
  4008d0:	afb00010 	sw	s0,16(sp)
  4008d4:	00808821 	move	s1,a0
  4008d8:	00a02021 	move	a0,a1
  4008dc:	00a0a021 	move	s4,a1
  4008e0:	0c10041c 	jal	401070 <strlen>
  4008e4:	00e0a821 	move	s5,a3
  4008e8:	02602021 	move	a0,s3
  4008ec:	0c10041c 	jal	401070 <strlen>
  4008f0:	00409021 	move	s2,v0
  4008f4:	02a02021 	move	a0,s5
  4008f8:	0c10041c 	jal	401070 <strlen>
  4008fc:	02428021 	addu	s0,s2,v0
  400900:	8e230024 	lw	v1,36(s1)
  400904:	02022821 	addu	a1,s0,v0
  400908:	00a3102a 	slt	v0,a1,v1
  40090c:	10400040 	beqz	v0,400a10 <__pf_printstuff+0x160>
  400910:	00658023 	subu	s0,v1,a1
  400914:	1a000056 	blez	s0,400a70 <__pf_printstuff+0x1c0>
  400918:	02403021 	move	a2,s2
  40091c:	8e220028 	lw	v0,40(s1)
  400920:	00000000 	nop
  400924:	10400028 	beqz	v0,4009c8 <__pf_printstuff+0x118>
  400928:	24020030 	li	v0,48
  40092c:	0c10041c 	jal	401070 <strlen>
  400930:	02802021 	move	a0,s4
  400934:	00403021 	move	a2,v0
  400938:	02802821 	move	a1,s4
  40093c:	0c1001f0 	jal	4007c0 <__pf_print>
  400940:	02202021 	move	a0,s1
  400944:	0c10041c 	jal	401070 <strlen>
  400948:	02602021 	move	a0,s3
  40094c:	00403021 	move	a2,v0
  400950:	02202021 	move	a0,s1
  400954:	0c1001f0 	jal	4007c0 <__pf_print>
  400958:	02602821 	move	a1,s3
  40095c:	8e220028 	lw	v0,40(s1)
  400960:	00000000 	nop
  400964:	14400005 	bnez	v0,40097c <__pf_printstuff+0xcc>
  400968:	24020030 	li	v0,48
  40096c:	8e23002c 	lw	v1,44(s1)
  400970:	00000000 	nop
  400974:	1062004b 	beq	v1,v0,400aa4 <__pf_printstuff+0x1f4>
  400978:	02202021 	move	a0,s1
  40097c:	0c10041c 	jal	401070 <strlen>
  400980:	02a02021 	move	a0,s5
  400984:	00403021 	move	a2,v0
  400988:	02202021 	move	a0,s1
  40098c:	0c1001f0 	jal	4007c0 <__pf_print>
  400990:	02a02821 	move	a1,s5
  400994:	8e220028 	lw	v0,40(s1)
  400998:	00000000 	nop
  40099c:	14400012 	bnez	v0,4009e8 <__pf_printstuff+0x138>
  4009a0:	02202021 	move	a0,s1
  4009a4:	8fbf0028 	lw	ra,40(sp)
  4009a8:	8fb50024 	lw	s5,36(sp)
  4009ac:	8fb40020 	lw	s4,32(sp)
  4009b0:	8fb3001c 	lw	s3,28(sp)
  4009b4:	8fb20018 	lw	s2,24(sp)
  4009b8:	8fb10014 	lw	s1,20(sp)
  4009bc:	8fb00010 	lw	s0,16(sp)
  4009c0:	03e00008 	jr	ra
  4009c4:	27bd0030 	addiu	sp,sp,48
  4009c8:	8e23002c 	lw	v1,44(s1)
  4009cc:	00000000 	nop
  4009d0:	1062ffd6 	beq	v1,v0,40092c <__pf_printstuff+0x7c>
  4009d4:	02202021 	move	a0,s1
  4009d8:	0c100211 	jal	400844 <__pf_fill>
  4009dc:	02002821 	move	a1,s0
  4009e0:	0810024b 	j	40092c <__pf_printstuff+0x7c>
  4009e4:	00000000 	nop
  4009e8:	02002821 	move	a1,s0
  4009ec:	8fbf0028 	lw	ra,40(sp)
  4009f0:	8fb50024 	lw	s5,36(sp)
  4009f4:	8fb40020 	lw	s4,32(sp)
  4009f8:	8fb3001c 	lw	s3,28(sp)
  4009fc:	8fb20018 	lw	s2,24(sp)
  400a00:	8fb10014 	lw	s1,20(sp)
  400a04:	8fb00010 	lw	s0,16(sp)
  400a08:	08100211 	j	400844 <__pf_fill>
  400a0c:	27bd0030 	addiu	sp,sp,48
  400a10:	02802821 	move	a1,s4
  400a14:	02403021 	move	a2,s2
  400a18:	0c1001f0 	jal	4007c0 <__pf_print>
  400a1c:	02202021 	move	a0,s1
  400a20:	0c10041c 	jal	401070 <strlen>
  400a24:	02602021 	move	a0,s3
  400a28:	00403021 	move	a2,v0
  400a2c:	02202021 	move	a0,s1
  400a30:	0c1001f0 	jal	4007c0 <__pf_print>
  400a34:	02602821 	move	a1,s3
  400a38:	0c10041c 	jal	401070 <strlen>
  400a3c:	02a02021 	move	a0,s5
  400a40:	02202021 	move	a0,s1
  400a44:	02a02821 	move	a1,s5
  400a48:	8fbf0028 	lw	ra,40(sp)
  400a4c:	8fb50024 	lw	s5,36(sp)
  400a50:	8fb40020 	lw	s4,32(sp)
  400a54:	8fb3001c 	lw	s3,28(sp)
  400a58:	8fb20018 	lw	s2,24(sp)
  400a5c:	8fb10014 	lw	s1,20(sp)
  400a60:	8fb00010 	lw	s0,16(sp)
  400a64:	00403021 	move	a2,v0
  400a68:	081001f0 	j	4007c0 <__pf_print>
  400a6c:	27bd0030 	addiu	sp,sp,48
  400a70:	02802821 	move	a1,s4
  400a74:	0c1001f0 	jal	4007c0 <__pf_print>
  400a78:	02202021 	move	a0,s1
  400a7c:	0c10041c 	jal	401070 <strlen>
  400a80:	02602021 	move	a0,s3
  400a84:	00403021 	move	a2,v0
  400a88:	02202021 	move	a0,s1
  400a8c:	0c1001f0 	jal	4007c0 <__pf_print>
  400a90:	02602821 	move	a1,s3
  400a94:	0c10041c 	jal	401070 <strlen>
  400a98:	02a02021 	move	a0,s5
  400a9c:	08100291 	j	400a44 <__pf_printstuff+0x194>
  400aa0:	02202021 	move	a0,s1
  400aa4:	0c100211 	jal	400844 <__pf_fill>
  400aa8:	02002821 	move	a1,s0
  400aac:	0810025f 	j	40097c <__pf_printstuff+0xcc>
  400ab0:	00000000 	nop

00400ab4 <__vprintf>:
  400ab4:	27bdff68 	addiu	sp,sp,-152
  400ab8:	afbe0090 	sw	s8,144(sp)
  400abc:	27be0030 	addiu	s8,sp,48
  400ac0:	afb10074 	sw	s1,116(sp)
  400ac4:	afa40030 	sw	a0,48(sp)
  400ac8:	00c08821 	move	s1,a2
  400acc:	03c02021 	move	a0,s8
  400ad0:	afb00070 	sw	s0,112(sp)
  400ad4:	afbf0094 	sw	ra,148(sp)
  400ad8:	afb7008c 	sw	s7,140(sp)
  400adc:	afb60088 	sw	s6,136(sp)
  400ae0:	afb50084 	sw	s5,132(sp)
  400ae4:	afb40080 	sw	s4,128(sp)
  400ae8:	afb3007c 	sw	s3,124(sp)
  400aec:	afb20078 	sw	s2,120(sp)
  400af0:	afa50034 	sw	a1,52(sp)
  400af4:	afa70038 	sw	a3,56(sp)
  400af8:	0c100202 	jal	400808 <__pf_endfield>
  400afc:	afa0003c 	sw	zero,60(sp)
  400b00:	82300000 	lb	s0,0(s1)
  400b04:	00000000 	nop
  400b08:	12000017 	beqz	s0,400b68 <__vprintf+0xb4>
  400b0c:	0220a021 	move	s4,s1
  400b10:	081002ce 	j	400b38 <__vprintf+0x84>
  400b14:	00000000 	nop
  400b18:	27a50010 	addiu	a1,sp,16
  400b1c:	24060001 	li	a2,1
  400b20:	0c1001f0 	jal	4007c0 <__pf_print>
  400b24:	a3b00010 	sb	s0,16(sp)
  400b28:	82900001 	lb	s0,1(s4)
  400b2c:	00000000 	nop
  400b30:	1200000d 	beqz	s0,400b68 <__vprintf+0xb4>
  400b34:	26940001 	addiu	s4,s4,1
  400b38:	8fa20040 	lw	v0,64(sp)
  400b3c:	00000000 	nop
  400b40:	14400016 	bnez	v0,400b9c <__vprintf+0xe8>
  400b44:	24020025 	li	v0,37
  400b48:	1602fff3 	bne	s0,v0,400b18 <__vprintf+0x64>
  400b4c:	03c02021 	move	a0,s8
  400b50:	24020001 	li	v0,1
  400b54:	afa20040 	sw	v0,64(sp)
  400b58:	82900001 	lb	s0,1(s4)
  400b5c:	00000000 	nop
  400b60:	1600fff5 	bnez	s0,400b38 <__vprintf+0x84>
  400b64:	26940001 	addiu	s4,s4,1
  400b68:	8fa2003c 	lw	v0,60(sp)
  400b6c:	8fbf0094 	lw	ra,148(sp)
  400b70:	8fbe0090 	lw	s8,144(sp)
  400b74:	8fb7008c 	lw	s7,140(sp)
  400b78:	8fb60088 	lw	s6,136(sp)
  400b7c:	8fb50084 	lw	s5,132(sp)
  400b80:	8fb40080 	lw	s4,128(sp)
  400b84:	8fb3007c 	lw	s3,124(sp)
  400b88:	8fb20078 	lw	s2,120(sp)
  400b8c:	8fb10074 	lw	s1,116(sp)
  400b90:	8fb00070 	lw	s0,112(sp)
  400b94:	03e00008 	jr	ra
  400b98:	27bd0098 	addiu	sp,sp,152
  400b9c:	3c040040 	lui	a0,0x40
  400ba0:	248419d0 	addiu	a0,a0,6608
  400ba4:	0c1003f8 	jal	400fe0 <strchr>
  400ba8:	02002821 	move	a1,s0
  400bac:	10400031 	beqz	v0,400c74 <__vprintf+0x1c0>
  400bb0:	24020030 	li	v0,48
  400bb4:	1202001d 	beq	s0,v0,400c2c <__vprintf+0x178>
  400bb8:	2a020031 	slti	v0,s0,49
  400bbc:	10400013 	beqz	v0,400c0c <__vprintf+0x158>
  400bc0:	2402006c 	li	v0,108
  400bc4:	24020023 	li	v0,35
  400bc8:	12020027 	beq	s0,v0,400c68 <__vprintf+0x1b4>
  400bcc:	2402002d 	li	v0,45
  400bd0:	1202004a 	beq	s0,v0,400cfc <__vprintf+0x248>
  400bd4:	24020001 	li	v0,1
  400bd8:	2602ffcf 	addiu	v0,s0,-49
  400bdc:	2c420009 	sltiu	v0,v0,9
  400be0:	1040001a 	beqz	v0,400c4c <__vprintf+0x198>
  400be4:	3c040040 	lui	a0,0x40
  400be8:	8fa20054 	lw	v0,84(sp)
  400bec:	00000000 	nop
  400bf0:	000218c0 	sll	v1,v0,0x3
  400bf4:	00021040 	sll	v0,v0,0x1
  400bf8:	00431021 	addu	v0,v0,v1
  400bfc:	02021021 	addu	v0,s0,v0
  400c00:	2442ffd0 	addiu	v0,v0,-48
  400c04:	081002ca 	j	400b28 <__vprintf+0x74>
  400c08:	afa20054 	sw	v0,84(sp)
  400c0c:	1602fff3 	bne	s0,v0,400bdc <__vprintf+0x128>
  400c10:	2602ffcf 	addiu	v0,s0,-49
  400c14:	8fa20044 	lw	v0,68(sp)
  400c18:	24030001 	li	v1,1
  400c1c:	10430039 	beq	v0,v1,400d04 <__vprintf+0x250>
  400c20:	24020002 	li	v0,2
  400c24:	081002ca 	j	400b28 <__vprintf+0x74>
  400c28:	afa30044 	sw	v1,68(sp)
  400c2c:	8fa20054 	lw	v0,84(sp)
  400c30:	00000000 	nop
  400c34:	1840008c 	blez	v0,400e68 <__vprintf+0x3b4>
  400c38:	000218c0 	sll	v1,v0,0x3
  400c3c:	00021040 	sll	v0,v0,0x1
  400c40:	00431021 	addu	v0,v0,v1
  400c44:	081002ca 	j	400b28 <__vprintf+0x74>
  400c48:	afa20054 	sw	v0,84(sp)
  400c4c:	3c060040 	lui	a2,0x40
  400c50:	248419e0 	addiu	a0,a0,6624
  400c54:	24c61a08 	addiu	a2,a2,6664
  400c58:	0c100440 	jal	401100 <__bad_assert>
  400c5c:	240500dc 	li	a1,220
  400c60:	081002fa 	j	400be8 <__vprintf+0x134>
  400c64:	00000000 	nop
  400c68:	24020001 	li	v0,1
  400c6c:	081002ca 	j	400b28 <__vprintf+0x74>
  400c70:	afa20068 	sw	v0,104(sp)
  400c74:	3c040040 	lui	a0,0x40
  400c78:	24841a1c 	addiu	a0,a0,6684
  400c7c:	0c1003f8 	jal	400fe0 <strchr>
  400c80:	02002821 	move	a1,s0
  400c84:	10400091 	beqz	v0,400ecc <__vprintf+0x418>
  400c88:	24020070 	li	v0,112
  400c8c:	1202001f 	beq	s0,v0,400d0c <__vprintf+0x258>
  400c90:	24020064 	li	v0,100
  400c94:	1202009e 	beq	s0,v0,400f10 <__vprintf+0x45c>
  400c98:	24020001 	li	v0,1
  400c9c:	8fa30044 	lw	v1,68(sp)
  400ca0:	00000000 	nop
  400ca4:	10620003 	beq	v1,v0,400cb4 <__vprintf+0x200>
  400ca8:	00000000 	nop
  400cac:	14600074 	bnez	v1,400e80 <__vprintf+0x3cc>
  400cb0:	24020002 	li	v0,2
  400cb4:	8fa20038 	lw	v0,56(sp)
  400cb8:	afa00048 	sw	zero,72(sp)
  400cbc:	8c430000 	lw	v1,0(v0)
  400cc0:	24420004 	addiu	v0,v0,4
  400cc4:	afa20038 	sw	v0,56(sp)
  400cc8:	afa3004c 	sw	v1,76(sp)
  400ccc:	2602ff9c 	addiu	v0,s0,-100
  400cd0:	304200ff 	andi	v0,v0,0xff
  400cd4:	2c430015 	sltiu	v1,v0,21
  400cd8:	10600015 	beqz	v1,400d30 <__vprintf+0x27c>
  400cdc:	3c030040 	lui	v1,0x40
  400ce0:	00021080 	sll	v0,v0,0x2
  400ce4:	24631820 	addiu	v1,v1,6176
  400ce8:	00431021 	addu	v0,v0,v1
  400cec:	8c440000 	lw	a0,0(v0)
  400cf0:	00000000 	nop
  400cf4:	00800008 	jr	a0
  400cf8:	00000000 	nop
  400cfc:	081002ca 	j	400b28 <__vprintf+0x74>
  400d00:	afa20058 	sw	v0,88(sp)
  400d04:	081002ca 	j	400b28 <__vprintf+0x74>
  400d08:	afa20044 	sw	v0,68(sp)
  400d0c:	8fa20038 	lw	v0,56(sp)
  400d10:	afa00048 	sw	zero,72(sp)
  400d14:	24430004 	addiu	v1,v0,4
  400d18:	afa30038 	sw	v1,56(sp)
  400d1c:	8c440000 	lw	a0,0(v0)
  400d20:	00000000 	nop
  400d24:	afa4004c 	sw	a0,76(sp)
  400d28:	24020010 	li	v0,16
  400d2c:	afa20060 	sw	v0,96(sp)
  400d30:	8fa20068 	lw	v0,104(sp)
  400d34:	00000000 	nop
  400d38:	1440004d 	bnez	v0,400e70 <__vprintf+0x3bc>
  400d3c:	24020001 	li	v0,1
  400d40:	24020070 	li	v0,112
  400d44:	1202004a 	beq	s0,v0,400e70 <__vprintf+0x3bc>
  400d48:	24020001 	li	v0,1
  400d4c:	8fb60060 	lw	s6,96(sp)
  400d50:	3c020040 	lui	v0,0x40
  400d54:	8fb1004c 	lw	s1,76(sp)
  400d58:	8fb00048 	lw	s0,72(sp)
  400d5c:	a3a00029 	sb	zero,41(sp)
  400d60:	24571a24 	addiu	s7,v0,6692
  400d64:	27b50028 	addiu	s5,sp,40
  400d68:	02c09821 	move	s3,s6
  400d6c:	001697c3 	sra	s2,s6,0x1f
  400d70:	02202821 	move	a1,s1
  400d74:	02002021 	move	a0,s0
  400d78:	02603821 	move	a3,s3
  400d7c:	0c100434 	jal	4010d0 <__umoddi3>
  400d80:	02403021 	move	a2,s2
  400d84:	02e31821 	addu	v1,s7,v1
  400d88:	90620000 	lbu	v0,0(v1)
  400d8c:	02202821 	move	a1,s1
  400d90:	02002021 	move	a0,s0
  400d94:	02603821 	move	a3,s3
  400d98:	02403021 	move	a2,s2
  400d9c:	0c10042c 	jal	4010b0 <__udivdi3>
  400da0:	a2a20000 	sb	v0,0(s5)
  400da4:	00408021 	move	s0,v0
  400da8:	02031025 	or	v0,s0,v1
  400dac:	00608821 	move	s1,v1
  400db0:	1440ffef 	bnez	v0,400d70 <__vprintf+0x2bc>
  400db4:	26b5ffff 	addiu	s5,s5,-1
  400db8:	8fa20064 	lw	v0,100(sp)
  400dbc:	00000000 	nop
  400dc0:	10400006 	beqz	v0,400ddc <__vprintf+0x328>
  400dc4:	3c020040 	lui	v0,0x40
  400dc8:	24020010 	li	v0,16
  400dcc:	12c2005e 	beq	s6,v0,400f48 <__vprintf+0x494>
  400dd0:	24020008 	li	v0,8
  400dd4:	12c20037 	beq	s6,v0,400eb4 <__vprintf+0x400>
  400dd8:	3c020040 	lui	v0,0x40
  400ddc:	24461aec 	addiu	a2,v0,6892
  400de0:	8fa20050 	lw	v0,80(sp)
  400de4:	00000000 	nop
  400de8:	10400023 	beqz	v0,400e78 <__vprintf+0x3c4>
  400dec:	3c020040 	lui	v0,0x40
  400df0:	3c020040 	lui	v0,0x40
  400df4:	244519c4 	addiu	a1,v0,6596
  400df8:	03c02021 	move	a0,s8
  400dfc:	0c10022c 	jal	4008b0 <__pf_printstuff>
  400e00:	26a70001 	addiu	a3,s5,1
  400e04:	0c100202 	jal	400808 <__pf_endfield>
  400e08:	03c02021 	move	a0,s8
  400e0c:	081002ca 	j	400b28 <__vprintf+0x74>
  400e10:	00000000 	nop
  400e14:	8fa20038 	lw	v0,56(sp)
  400e18:	2403fff8 	li	v1,-8
  400e1c:	24420007 	addiu	v0,v0,7
  400e20:	00431024 	and	v0,v0,v1
  400e24:	8c470004 	lw	a3,4(v0)
  400e28:	8c460000 	lw	a2,0(v0)
  400e2c:	24420008 	addiu	v0,v0,8
  400e30:	afa20038 	sw	v0,56(sp)
  400e34:	04c10040 	bgez	a2,400f38 <__vprintf+0x484>
  400e38:	2402000a 	li	v0,10
  400e3c:	00071823 	negu	v1,a3
  400e40:	0003282b 	sltu	a1,zero,v1
  400e44:	00061023 	negu	v0,a2
  400e48:	00451023 	subu	v0,v0,a1
  400e4c:	2404ffff 	li	a0,-1
  400e50:	afa40050 	sw	a0,80(sp)
  400e54:	afa3004c 	sw	v1,76(sp)
  400e58:	afa20048 	sw	v0,72(sp)
  400e5c:	2402000a 	li	v0,10
  400e60:	0810034c 	j	400d30 <__vprintf+0x27c>
  400e64:	afa20060 	sw	v0,96(sp)
  400e68:	081002ca 	j	400b28 <__vprintf+0x74>
  400e6c:	afb0005c 	sw	s0,92(sp)
  400e70:	08100353 	j	400d4c <__vprintf+0x298>
  400e74:	afa20064 	sw	v0,100(sp)
  400e78:	0810037e 	j	400df8 <__vprintf+0x344>
  400e7c:	24451aec 	addiu	a1,v0,6892
  400e80:	1462ff93 	bne	v1,v0,400cd0 <__vprintf+0x21c>
  400e84:	2602ff9c 	addiu	v0,s0,-100
  400e88:	8fa20038 	lw	v0,56(sp)
  400e8c:	2403fff8 	li	v1,-8
  400e90:	24420007 	addiu	v0,v0,7
  400e94:	00431024 	and	v0,v0,v1
  400e98:	8c450004 	lw	a1,4(v0)
  400e9c:	8c440000 	lw	a0,0(v0)
  400ea0:	24420008 	addiu	v0,v0,8
  400ea4:	afa20038 	sw	v0,56(sp)
  400ea8:	afa5004c 	sw	a1,76(sp)
  400eac:	08100333 	j	400ccc <__vprintf+0x218>
  400eb0:	afa40048 	sw	a0,72(sp)
  400eb4:	3c020040 	lui	v0,0x40
  400eb8:	08100378 	j	400de0 <__vprintf+0x32c>
  400ebc:	24461a3c 	addiu	a2,v0,6716
  400ec0:	24020008 	li	v0,8
  400ec4:	0810034c 	j	400d30 <__vprintf+0x27c>
  400ec8:	afa20060 	sw	v0,96(sp)
  400ecc:	24020073 	li	v0,115
  400ed0:	12020028 	beq	s0,v0,400f74 <__vprintf+0x4c0>
  400ed4:	24020063 	li	v0,99
  400ed8:	12020037 	beq	s0,v0,400fb8 <__vprintf+0x504>
  400edc:	00000000 	nop
  400ee0:	a3b00011 	sb	s0,17(sp)
  400ee4:	3c050040 	lui	a1,0x40
  400ee8:	24a51aec 	addiu	a1,a1,6892
  400eec:	03c02021 	move	a0,s8
  400ef0:	00a03021 	move	a2,a1
  400ef4:	27a70011 	addiu	a3,sp,17
  400ef8:	0c10022c 	jal	4008b0 <__pf_printstuff>
  400efc:	a3a00012 	sb	zero,18(sp)
  400f00:	0c100202 	jal	400808 <__pf_endfield>
  400f04:	03c02021 	move	a0,s8
  400f08:	081002ca 	j	400b28 <__vprintf+0x74>
  400f0c:	00000000 	nop
  400f10:	8fa30044 	lw	v1,68(sp)
  400f14:	00000000 	nop
  400f18:	1062000e 	beq	v1,v0,400f54 <__vprintf+0x4a0>
  400f1c:	00000000 	nop
  400f20:	1060000c 	beqz	v1,400f54 <__vprintf+0x4a0>
  400f24:	24020002 	li	v0,2
  400f28:	1062ffba 	beq	v1,v0,400e14 <__vprintf+0x360>
  400f2c:	00003821 	move	a3,zero
  400f30:	00003021 	move	a2,zero
  400f34:	2402000a 	li	v0,10
  400f38:	afa7004c 	sw	a3,76(sp)
  400f3c:	afa60048 	sw	a2,72(sp)
  400f40:	0810034c 	j	400d30 <__vprintf+0x27c>
  400f44:	afa20060 	sw	v0,96(sp)
  400f48:	3c020040 	lui	v0,0x40
  400f4c:	08100378 	j	400de0 <__vprintf+0x32c>
  400f50:	24461a38 	addiu	a2,v0,6712
  400f54:	8fa20038 	lw	v0,56(sp)
  400f58:	00000000 	nop
  400f5c:	8c430000 	lw	v1,0(v0)
  400f60:	24420004 	addiu	v0,v0,4
  400f64:	00603821 	move	a3,v1
  400f68:	000337c3 	sra	a2,v1,0x1f
  400f6c:	0810038d 	j	400e34 <__vprintf+0x380>
  400f70:	afa20038 	sw	v0,56(sp)
  400f74:	8fa30038 	lw	v1,56(sp)
  400f78:	00000000 	nop
  400f7c:	8c670000 	lw	a3,0(v1)
  400f80:	00000000 	nop
  400f84:	10e00013 	beqz	a3,400fd4 <__vprintf+0x520>
  400f88:	3c020040 	lui	v0,0x40
  400f8c:	3c050040 	lui	a1,0x40
  400f90:	24a51aec 	addiu	a1,a1,6892
  400f94:	24620004 	addiu	v0,v1,4
  400f98:	03c02021 	move	a0,s8
  400f9c:	00a03021 	move	a2,a1
  400fa0:	0c10022c 	jal	4008b0 <__pf_printstuff>
  400fa4:	afa20038 	sw	v0,56(sp)
  400fa8:	0c100202 	jal	400808 <__pf_endfield>
  400fac:	03c02021 	move	a0,s8
  400fb0:	081002ca 	j	400b28 <__vprintf+0x74>
  400fb4:	00000000 	nop
  400fb8:	8fa20038 	lw	v0,56(sp)
  400fbc:	00000000 	nop
  400fc0:	8c430000 	lw	v1,0(v0)
  400fc4:	24420004 	addiu	v0,v0,4
  400fc8:	afa20038 	sw	v0,56(sp)
  400fcc:	081003b9 	j	400ee4 <__vprintf+0x430>
  400fd0:	a3a30011 	sb	v1,17(sp)
  400fd4:	081003e3 	j	400f8c <__vprintf+0x4d8>
  400fd8:	244719c8 	addiu	a3,v0,6600
  400fdc:	00000000 	nop

00400fe0 <strchr>:
  400fe0:	80830000 	lb	v1,0(a0)
  400fe4:	00052e00 	sll	a1,a1,0x18
  400fe8:	00801021 	move	v0,a0
  400fec:	1060000c 	beqz	v1,401020 <strchr+0x40>
  400ff0:	00052e03 	sra	a1,a1,0x18
  400ff4:	14a30006 	bne	a1,v1,401010 <strchr+0x30>
  400ff8:	24420001 	addiu	v0,v0,1
  400ffc:	03e00008 	jr	ra
  401000:	2442ffff 	addiu	v0,v0,-1
  401004:	10a3000c 	beq	a1,v1,401038 <strchr+0x58>
  401008:	00000000 	nop
  40100c:	24420001 	addiu	v0,v0,1
  401010:	80430000 	lb	v1,0(v0)
  401014:	00000000 	nop
  401018:	1460fffa 	bnez	v1,401004 <strchr+0x24>
  40101c:	00000000 	nop
  401020:	14a00003 	bnez	a1,401030 <strchr+0x50>
  401024:	00000000 	nop
  401028:	03e00008 	jr	ra
  40102c:	00000000 	nop
  401030:	03e00008 	jr	ra
  401034:	00001021 	move	v0,zero
  401038:	03e00008 	jr	ra
  40103c:	00000000 	nop

00401040 <strerror>:
  401040:	3c020040 	lui	v0,0x40
  401044:	00042880 	sll	a1,a0,0x2
  401048:	24421880 	addiu	v0,v0,6272
  40104c:	3c030040 	lui	v1,0x40
  401050:	2c840041 	sltiu	a0,a0,65
  401054:	00a22821 	addu	a1,a1,v0
  401058:	10800002 	beqz	a0,401064 <strerror+0x24>
  40105c:	24621a40 	addiu	v0,v1,6720
  401060:	8ca20000 	lw	v0,0(a1)
  401064:	03e00008 	jr	ra
  401068:	00000000 	nop
  40106c:	00000000 	nop

00401070 <strlen>:
  401070:	80820000 	lb	v0,0(a0)
  401074:	00000000 	nop
  401078:	1040000a 	beqz	v0,4010a4 <strlen+0x34>
  40107c:	00002821 	move	a1,zero
  401080:	24a50001 	addiu	a1,a1,1
  401084:	00851021 	addu	v0,a0,a1
  401088:	80430000 	lb	v1,0(v0)
  40108c:	00000000 	nop
  401090:	1460fffc 	bnez	v1,401084 <strlen+0x14>
  401094:	24a50001 	addiu	a1,a1,1
  401098:	24a5ffff 	addiu	a1,a1,-1
  40109c:	03e00008 	jr	ra
  4010a0:	00a01021 	move	v0,a1
  4010a4:	03e00008 	jr	ra
  4010a8:	00a01021 	move	v0,a1
  4010ac:	00000000 	nop

004010b0 <__udivdi3>:
  4010b0:	27bdffe0 	addiu	sp,sp,-32
  4010b4:	afbf0018 	sw	ra,24(sp)
  4010b8:	0c1004bb 	jal	4012ec <__qdivrem>
  4010bc:	afa00010 	sw	zero,16(sp)
  4010c0:	8fbf0018 	lw	ra,24(sp)
  4010c4:	00000000 	nop
  4010c8:	03e00008 	jr	ra
  4010cc:	27bd0020 	addiu	sp,sp,32

004010d0 <__umoddi3>:
  4010d0:	27bdffd8 	addiu	sp,sp,-40
  4010d4:	27a20018 	addiu	v0,sp,24
  4010d8:	afbf0020 	sw	ra,32(sp)
  4010dc:	0c1004bb 	jal	4012ec <__qdivrem>
  4010e0:	afa20010 	sw	v0,16(sp)
  4010e4:	8fa3001c 	lw	v1,28(sp)
  4010e8:	8fa20018 	lw	v0,24(sp)
  4010ec:	8fbf0020 	lw	ra,32(sp)
  4010f0:	00000000 	nop
  4010f4:	03e00008 	jr	ra
  4010f8:	27bd0028 	addiu	sp,sp,40
  4010fc:	00000000 	nop

00401100 <__bad_assert>:
  401100:	27bdfee0 	addiu	sp,sp,-288
  401104:	00c03821 	move	a3,a2
  401108:	afb00118 	sw	s0,280(sp)
  40110c:	3c060040 	lui	a2,0x40
  401110:	27b00018 	addiu	s0,sp,24
  401114:	24c62044 	addiu	a2,a2,8260
  401118:	afa40010 	sw	a0,16(sp)
  40111c:	afa50014 	sw	a1,20(sp)
  401120:	02002021 	move	a0,s0
  401124:	afbf011c 	sw	ra,284(sp)
  401128:	0c10048c 	jal	401230 <snprintf>
  40112c:	24050100 	li	a1,256
  401130:	0c10041c 	jal	401070 <strlen>
  401134:	02002021 	move	a0,s0
  401138:	00403021 	move	a2,v0
  40113c:	02002821 	move	a1,s0
  401140:	0c1000fb 	jal	4003ec <write>
  401144:	24040002 	li	a0,2
  401148:	0c100498 	jal	401260 <abort>
  40114c:	00000000 	nop

00401150 <__snprintf_send>:
  401150:	10c00012 	beqz	a2,40119c <__snprintf_send+0x4c>
  401154:	00004021 	move	t0,zero
  401158:	8c870008 	lw	a3,8(a0)
  40115c:	8c820004 	lw	v0,4(a0)
  401160:	00a81821 	addu	v1,a1,t0
  401164:	00e2102b 	sltu	v0,a3,v0
  401168:	1040000a 	beqz	v0,401194 <__snprintf_send+0x44>
  40116c:	25080001 	addiu	t0,t0,1
  401170:	8c820000 	lw	v0,0(a0)
  401174:	90630000 	lbu	v1,0(v1)
  401178:	00471021 	addu	v0,v0,a3
  40117c:	a0430000 	sb	v1,0(v0)
  401180:	8c870008 	lw	a3,8(a0)
  401184:	00000000 	nop
  401188:	24e20001 	addiu	v0,a3,1
  40118c:	00403821 	move	a3,v0
  401190:	ac820008 	sw	v0,8(a0)
  401194:	14c8fff1 	bne	a2,t0,40115c <__snprintf_send+0xc>
  401198:	00000000 	nop
  40119c:	03e00008 	jr	ra
  4011a0:	00000000 	nop

004011a4 <vsnprintf>:
  4011a4:	27bdffd8 	addiu	sp,sp,-40
  4011a8:	afb00020 	sw	s0,32(sp)
  4011ac:	00a01021 	move	v0,a1
  4011b0:	00808021 	move	s0,a0
  4011b4:	3c040040 	lui	a0,0x40
  4011b8:	24a3ffff 	addiu	v1,a1,-1
  4011bc:	afbf0024 	sw	ra,36(sp)
  4011c0:	24841150 	addiu	a0,a0,4432
  4011c4:	27a50010 	addiu	a1,sp,16
  4011c8:	1440000c 	bnez	v0,4011fc <vsnprintf+0x58>
  4011cc:	afb00010 	sw	s0,16(sp)
  4011d0:	3c040040 	lui	a0,0x40
  4011d4:	24841150 	addiu	a0,a0,4432
  4011d8:	afa00014 	sw	zero,20(sp)
  4011dc:	0c1002ad 	jal	400ab4 <__vprintf>
  4011e0:	afa00018 	sw	zero,24(sp)
  4011e4:	00401821 	move	v1,v0
  4011e8:	8fbf0024 	lw	ra,36(sp)
  4011ec:	8fb00020 	lw	s0,32(sp)
  4011f0:	00601021 	move	v0,v1
  4011f4:	03e00008 	jr	ra
  4011f8:	27bd0028 	addiu	sp,sp,40
  4011fc:	afa30014 	sw	v1,20(sp)
  401200:	0c1002ad 	jal	400ab4 <__vprintf>
  401204:	afa00018 	sw	zero,24(sp)
  401208:	00401821 	move	v1,v0
  40120c:	8fa20018 	lw	v0,24(sp)
  401210:	00000000 	nop
  401214:	02021021 	addu	v0,s0,v0
  401218:	a0400000 	sb	zero,0(v0)
  40121c:	8fbf0024 	lw	ra,36(sp)
  401220:	8fb00020 	lw	s0,32(sp)
  401224:	00601021 	move	v0,v1
  401228:	03e00008 	jr	ra
  40122c:	27bd0028 	addiu	sp,sp,40

00401230 <snprintf>:
  401230:	27bdffe0 	addiu	sp,sp,-32
  401234:	27a2002c 	addiu	v0,sp,44
  401238:	afa7002c 	sw	a3,44(sp)
  40123c:	00403821 	move	a3,v0
  401240:	afbf0018 	sw	ra,24(sp)
  401244:	0c100469 	jal	4011a4 <vsnprintf>
  401248:	afa20010 	sw	v0,16(sp)
  40124c:	8fbf0018 	lw	ra,24(sp)
  401250:	00000000 	nop
  401254:	03e00008 	jr	ra
  401258:	27bd0020 	addiu	sp,sp,32
  40125c:	00000000 	nop

00401260 <abort>:
  401260:	27bdffe8 	addiu	sp,sp,-24
  401264:	afbf0010 	sw	ra,16(sp)
  401268:	0c1000bb 	jal	4002ec <_exit>
  40126c:	240400ff 	li	a0,255

00401270 <shl>:
  401270:	18a00016 	blez	a1,4012cc <shl+0x5c>
  401274:	24020010 	li	v0,16
  401278:	00464823 	subu	t1,v0,a2
  40127c:	00803821 	move	a3,a0
  401280:	00004021 	move	t0,zero
  401284:	8ce20000 	lw	v0,0(a3)
  401288:	8ce30004 	lw	v1,4(a3)
  40128c:	00c21004 	sllv	v0,v0,a2
  401290:	3042ffff 	andi	v0,v0,0xffff
  401294:	01231806 	srlv	v1,v1,t1
  401298:	00431025 	or	v0,v0,v1
  40129c:	25080001 	addiu	t0,t0,1
  4012a0:	ace20000 	sw	v0,0(a3)
  4012a4:	14a8fff7 	bne	a1,t0,401284 <shl+0x14>
  4012a8:	24e70004 	addiu	a3,a3,4
  4012ac:	00051880 	sll	v1,a1,0x2
  4012b0:	00831821 	addu	v1,a0,v1
  4012b4:	8c620000 	lw	v0,0(v1)
  4012b8:	00000000 	nop
  4012bc:	00c21004 	sllv	v0,v0,a2
  4012c0:	3042ffff 	andi	v0,v0,0xffff
  4012c4:	03e00008 	jr	ra
  4012c8:	ac620000 	sw	v0,0(v1)
  4012cc:	00001821 	move	v1,zero
  4012d0:	00831821 	addu	v1,a0,v1
  4012d4:	8c620000 	lw	v0,0(v1)
  4012d8:	00000000 	nop
  4012dc:	00c21004 	sllv	v0,v0,a2
  4012e0:	3042ffff 	andi	v0,v0,0xffff
  4012e4:	03e00008 	jr	ra
  4012e8:	ac620000 	sw	v0,0(v1)

004012ec <__qdivrem>:
  4012ec:	27bdff80 	addiu	sp,sp,-128
  4012f0:	00c71025 	or	v0,a2,a3
  4012f4:	afb20060 	sw	s2,96(sp)
  4012f8:	afbf007c 	sw	ra,124(sp)
  4012fc:	afbe0078 	sw	s8,120(sp)
  401300:	afb70074 	sw	s7,116(sp)
  401304:	afb60070 	sw	s6,112(sp)
  401308:	afb5006c 	sw	s5,108(sp)
  40130c:	afb40068 	sw	s4,104(sp)
  401310:	afb30064 	sw	s3,100(sp)
  401314:	afb1005c 	sw	s1,92(sp)
  401318:	afb00058 	sw	s0,88(sp)
  40131c:	00a04821 	move	t1,a1
  401320:	8fb20090 	lw	s2,144(sp)
  401324:	14400018 	bnez	v0,401388 <__qdivrem+0x9c>
  401328:	00804021 	move	t0,a0
  40132c:	3c031000 	lui	v1,0x1000
  401330:	8c640000 	lw	a0,0(v1)
  401334:	24020001 	li	v0,1
  401338:	14800002 	bnez	a0,401344 <__qdivrem+0x58>
  40133c:	0044001b 	divu	zero,v0,a0
  401340:	0007000d 	break	0x7
  401344:	00001012 	mflo	v0
  401348:	12400003 	beqz	s2,401358 <__qdivrem+0x6c>
  40134c:	00401821 	move	v1,v0
  401350:	ae450004 	sw	a1,4(s2)
  401354:	ae480000 	sw	t0,0(s2)
  401358:	8fbf007c 	lw	ra,124(sp)
  40135c:	8fbe0078 	lw	s8,120(sp)
  401360:	8fb70074 	lw	s7,116(sp)
  401364:	8fb60070 	lw	s6,112(sp)
  401368:	8fb5006c 	lw	s5,108(sp)
  40136c:	8fb40068 	lw	s4,104(sp)
  401370:	8fb30064 	lw	s3,100(sp)
  401374:	8fb20060 	lw	s2,96(sp)
  401378:	8fb1005c 	lw	s1,92(sp)
  40137c:	8fb00058 	lw	s0,88(sp)
  401380:	03e00008 	jr	ra
  401384:	27bd0080 	addiu	sp,sp,128
  401388:	0086102b 	sltu	v0,a0,a2
  40138c:	10400008 	beqz	v0,4013b0 <__qdivrem+0xc4>
  401390:	00000000 	nop
  401394:	1240010c 	beqz	s2,4017c8 <__qdivrem+0x4dc>
  401398:	00000000 	nop
  40139c:	00001821 	move	v1,zero
  4013a0:	00001021 	move	v0,zero
  4013a4:	ae490004 	sw	t1,4(s2)
  4013a8:	081004d6 	j	401358 <__qdivrem+0x6c>
  4013ac:	ae480000 	sw	t0,0(s2)
  4013b0:	10860046 	beq	a0,a2,4014cc <__qdivrem+0x1e0>
  4013b4:	00a7102b 	sltu	v0,a1,a3
  4013b8:	00e08821 	move	s1,a3
  4013bc:	01001821 	move	v1,t0
  4013c0:	00c08021 	move	s0,a2
  4013c4:	30c7ffff 	andi	a3,a2,0xffff
  4013c8:	3108ffff 	andi	t0,t0,0xffff
  4013cc:	312affff 	andi	t2,t1,0xffff
  4013d0:	3226ffff 	andi	a2,s1,0xffff
  4013d4:	00031c02 	srl	v1,v1,0x10
  4013d8:	00092c02 	srl	a1,t1,0x10
  4013dc:	00101402 	srl	v0,s0,0x10
  4013e0:	00112402 	srl	a0,s1,0x10
  4013e4:	afa00010 	sw	zero,16(sp)
  4013e8:	afa30014 	sw	v1,20(sp)
  4013ec:	afa80018 	sw	t0,24(sp)
  4013f0:	afa5001c 	sw	a1,28(sp)
  4013f4:	afaa0020 	sw	t2,32(sp)
  4013f8:	afa20028 	sw	v0,40(sp)
  4013fc:	afa7002c 	sw	a3,44(sp)
  401400:	afa40030 	sw	a0,48(sp)
  401404:	144000f6 	bnez	v0,4017e0 <__qdivrem+0x4f4>
  401408:	afa60034 	sw	a2,52(sp)
  40140c:	14e00033 	bnez	a3,4014dc <__qdivrem+0x1f0>
  401410:	27a20028 	addiu	v0,sp,40
  401414:	148000f7 	bnez	a0,4017f4 <__qdivrem+0x508>
  401418:	27a2002c 	addiu	v0,sp,44
  40141c:	14c00002 	bnez	a2,401428 <__qdivrem+0x13c>
  401420:	0066001b 	divu	zero,v1,a2
  401424:	0007000d 	break	0x7
  401428:	00001010 	mfhi	v0
  40142c:	00021400 	sll	v0,v0,0x10
  401430:	00481025 	or	v0,v0,t0
  401434:	00004812 	mflo	t1
	...
  401440:	14c00002 	bnez	a2,40144c <__qdivrem+0x160>
  401444:	0046001b 	divu	zero,v0,a2
  401448:	0007000d 	break	0x7
  40144c:	00001810 	mfhi	v1
  401450:	00031c00 	sll	v1,v1,0x10
  401454:	00651825 	or	v1,v1,a1
  401458:	00003812 	mflo	a3
	...
  401464:	14c00002 	bnez	a2,401470 <__qdivrem+0x184>
  401468:	0066001b 	divu	zero,v1,a2
  40146c:	0007000d 	break	0x7
  401470:	00001010 	mfhi	v0
  401474:	00021400 	sll	v0,v0,0x10
  401478:	00001812 	mflo	v1
  40147c:	12400008 	beqz	s2,4014a0 <__qdivrem+0x1b4>
  401480:	01422025 	or	a0,t2,v0
  401484:	14c00002 	bnez	a2,401490 <__qdivrem+0x1a4>
  401488:	0086001b 	divu	zero,a0,a2
  40148c:	0007000d 	break	0x7
  401490:	ae400000 	sw	zero,0(s2)
  401494:	00001010 	mfhi	v0
  401498:	ae420004 	sw	v0,4(s2)
  40149c:	00000000 	nop
  4014a0:	14c00002 	bnez	a2,4014ac <__qdivrem+0x1c0>
  4014a4:	0086001b 	divu	zero,a0,a2
  4014a8:	0007000d 	break	0x7
  4014ac:	00091400 	sll	v0,t1,0x10
  4014b0:	00031c00 	sll	v1,v1,0x10
  4014b4:	00e28025 	or	s0,a3,v0
  4014b8:	02001021 	move	v0,s0
  4014bc:	00002012 	mflo	a0
  4014c0:	00838825 	or	s1,a0,v1
  4014c4:	081004d6 	j	401358 <__qdivrem+0x6c>
  4014c8:	02201821 	move	v1,s1
  4014cc:	1040ffbb 	beqz	v0,4013bc <__qdivrem+0xd0>
  4014d0:	00e08821 	move	s1,a3
  4014d4:	081004e5 	j	401394 <__qdivrem+0xa8>
  4014d8:	00000000 	nop
  4014dc:	afa20050 	sw	v0,80(sp)
  4014e0:	24170003 	li	s7,3
  4014e4:	27be002c 	addiu	s8,sp,44
  4014e8:	8fa30014 	lw	v1,20(sp)
  4014ec:	24020004 	li	v0,4
  4014f0:	146000c4 	bnez	v1,401804 <__qdivrem+0x518>
  4014f4:	00579823 	subu	s3,v0,s7
  4014f8:	08100541 	j	401504 <__qdivrem+0x218>
  4014fc:	27b40014 	addiu	s4,sp,20
  401500:	0060a021 	move	s4,v1
  401504:	8e820004 	lw	v0,4(s4)
  401508:	2673ffff 	addiu	s3,s3,-1
  40150c:	1040fffc 	beqz	v0,401500 <__qdivrem+0x214>
  401510:	26830004 	addiu	v1,s4,4
  401514:	24020004 	li	v0,4
  401518:	00532023 	subu	a0,v0,s3
  40151c:	2483ffff 	addiu	v1,a0,-1
  401520:	046000bc 	bltz	v1,401814 <__qdivrem+0x528>
  401524:	00001821 	move	v1,zero
  401528:	27a60038 	addiu	a2,sp,56
  40152c:	00042880 	sll	a1,a0,0x2
  401530:	00c51021 	addu	v0,a2,a1
  401534:	2442fffc 	addiu	v0,v0,-4
  401538:	24630001 	addiu	v1,v1,1
  40153c:	ac400000 	sw	zero,0(v0)
  401540:	1464fffd 	bne	v1,a0,401538 <__qdivrem+0x24c>
  401544:	2442fffc 	addiu	v0,v0,-4
  401548:	8fcb0000 	lw	t3,0(s8)
  40154c:	34028000 	li	v0,0x8000
  401550:	0162102b 	sltu	v0,t3,v0
  401554:	00c5b021 	addu	s6,a2,a1
  401558:	104000ac 	beqz	v0,40180c <__qdivrem+0x520>
  40155c:	01601821 	move	v1,t3
  401560:	0000a821 	move	s5,zero
  401564:	34048000 	li	a0,0x8000
  401568:	00031840 	sll	v1,v1,0x1
  40156c:	0064102b 	sltu	v0,v1,a0
  401570:	1440fffd 	bnez	v0,401568 <__qdivrem+0x27c>
  401574:	26b50001 	addiu	s5,s5,1
  401578:	1aa00009 	blez	s5,4015a0 <__qdivrem+0x2b4>
  40157c:	02f32821 	addu	a1,s7,s3
  401580:	02a03021 	move	a2,s5
  401584:	0c10049c 	jal	401270 <shl>
  401588:	02802021 	move	a0,s4
  40158c:	03c02021 	move	a0,s8
  401590:	26e5ffff 	addiu	a1,s7,-1
  401594:	0c10049c 	jal	401270 <shl>
  401598:	02a03021 	move	a2,s5
  40159c:	8fcb0000 	lw	t3,0(s8)
  4015a0:	8fa20050 	lw	v0,80(sp)
  4015a4:	00177080 	sll	t6,s7,0x2
  4015a8:	8c580008 	lw	t8,8(v0)
  4015ac:	02c06821 	move	t5,s6
  4015b0:	02804821 	move	t1,s4
  4015b4:	028e6021 	addu	t4,s4,t6
  4015b8:	00007821 	move	t7,zero
  4015bc:	3416ffff 	li	s6,0xffff
  4015c0:	8d240000 	lw	a0,0(t1)
  4015c4:	8d230004 	lw	v1,4(t1)
  4015c8:	8d260008 	lw	a2,8(t1)
  4015cc:	11640081 	beq	t3,a0,4017d4 <__qdivrem+0x4e8>
  4015d0:	00041400 	sll	v0,a0,0x10
  4015d4:	00621025 	or	v0,v1,v0
  4015d8:	15600002 	bnez	t3,4015e4 <__qdivrem+0x2f8>
  4015dc:	004b001b 	divu	zero,v0,t3
  4015e0:	0007000d 	break	0x7
  4015e4:	00002810 	mfhi	a1
  4015e8:	00003812 	mflo	a3
	...
  4015f4:	00f80018 	mult	a3,t8
  4015f8:	00051400 	sll	v0,a1,0x10
  4015fc:	00c21025 	or	v0,a2,v0
  401600:	00001812 	mflo	v1
  401604:	0043182b 	sltu	v1,v0,v1
  401608:	10600006 	beqz	v1,401624 <__qdivrem+0x338>
  40160c:	00000000 	nop
  401610:	24e7ffff 	addiu	a3,a3,-1
  401614:	00ab2821 	addu	a1,a1,t3
  401618:	02c5102b 	sltu	v0,s6,a1
  40161c:	1040fff6 	beqz	v0,4015f8 <__qdivrem+0x30c>
  401620:	00f80018 	mult	a3,t8
  401624:	1ae00017 	blez	s7,401684 <__qdivrem+0x398>
  401628:	00004021 	move	t0,zero
  40162c:	8fa20050 	lw	v0,80(sp)
  401630:	01802021 	move	a0,t4
  401634:	004e3021 	addu	a2,v0,t6
  401638:	02e02821 	move	a1,s7
  40163c:	3c0a0001 	lui	t2,0x1
  401640:	8cc20000 	lw	v0,0(a2)
  401644:	8c830000 	lw	v1,0(a0)
  401648:	00e20018 	mult	a3,v0
  40164c:	24a5ffff 	addiu	a1,a1,-1
  401650:	24c6fffc 	addiu	a2,a2,-4
  401654:	00001012 	mflo	v0
  401658:	00621823 	subu	v1,v1,v0
  40165c:	00681823 	subu	v1,v1,t0
  401660:	00031402 	srl	v0,v1,0x10
  401664:	01421023 	subu	v0,t2,v0
  401668:	3063ffff 	andi	v1,v1,0xffff
  40166c:	ac830000 	sw	v1,0(a0)
  401670:	3048ffff 	andi	t0,v0,0xffff
  401674:	14a0fff2 	bnez	a1,401640 <__qdivrem+0x354>
  401678:	2484fffc 	addiu	a0,a0,-4
  40167c:	8d240000 	lw	a0,0(t1)
  401680:	00000000 	nop
  401684:	00881023 	subu	v0,a0,t0
  401688:	3044ffff 	andi	a0,v0,0xffff
  40168c:	00021c02 	srl	v1,v0,0x10
  401690:	10600018 	beqz	v1,4016f4 <__qdivrem+0x408>
  401694:	ad240000 	sw	a0,0(t1)
  401698:	1ae00012 	blez	s7,4016e4 <__qdivrem+0x3f8>
  40169c:	00004021 	move	t0,zero
  4016a0:	8fa20050 	lw	v0,80(sp)
  4016a4:	01802021 	move	a0,t4
  4016a8:	004e3021 	addu	a2,v0,t6
  4016ac:	02e02821 	move	a1,s7
  4016b0:	8c820000 	lw	v0,0(a0)
  4016b4:	8cc30000 	lw	v1,0(a2)
  4016b8:	01021021 	addu	v0,t0,v0
  4016bc:	00431021 	addu	v0,v0,v1
  4016c0:	3043ffff 	andi	v1,v0,0xffff
  4016c4:	24a5ffff 	addiu	a1,a1,-1
  4016c8:	ac830000 	sw	v1,0(a0)
  4016cc:	00024402 	srl	t0,v0,0x10
  4016d0:	2484fffc 	addiu	a0,a0,-4
  4016d4:	14a0fff6 	bnez	a1,4016b0 <__qdivrem+0x3c4>
  4016d8:	24c6fffc 	addiu	a2,a2,-4
  4016dc:	8d240000 	lw	a0,0(t1)
  4016e0:	00000000 	nop
  4016e4:	01041021 	addu	v0,t0,a0
  4016e8:	3042ffff 	andi	v0,v0,0xffff
  4016ec:	ad220000 	sw	v0,0(t1)
  4016f0:	24e7ffff 	addiu	a3,a3,-1
  4016f4:	25ef0001 	addiu	t7,t7,1
  4016f8:	026f102a 	slt	v0,s3,t7
  4016fc:	ada70000 	sw	a3,0(t5)
  401700:	25290004 	addiu	t1,t1,4
  401704:	25ad0004 	addiu	t5,t5,4
  401708:	1040ffad 	beqz	v0,4015c0 <__qdivrem+0x2d4>
  40170c:	258c0004 	addiu	t4,t4,4
  401710:	12400022 	beqz	s2,40179c <__qdivrem+0x4b0>
  401714:	00000000 	nop
  401718:	12a00016 	beqz	s5,401774 <__qdivrem+0x488>
  40171c:	02f32821 	addu	a1,s7,s3
  401720:	0265102a 	slt	v0,s3,a1
  401724:	10400011 	beqz	v0,40176c <__qdivrem+0x480>
  401728:	00051080 	sll	v0,a1,0x2
  40172c:	00051880 	sll	v1,a1,0x2
  401730:	24020010 	li	v0,16
  401734:	00553823 	subu	a3,v0,s5
  401738:	02833021 	addu	a2,s4,v1
  40173c:	8cc2fffc 	lw	v0,-4(a2)
  401740:	8cc30000 	lw	v1,0(a2)
  401744:	00e21004 	sllv	v0,v0,a3
  401748:	02a31806 	srlv	v1,v1,s5
  40174c:	3042ffff 	andi	v0,v0,0xffff
  401750:	24a5ffff 	addiu	a1,a1,-1
  401754:	00621825 	or	v1,v1,v0
  401758:	0265202a 	slt	a0,s3,a1
  40175c:	acc30000 	sw	v1,0(a2)
  401760:	1480fff6 	bnez	a0,40173c <__qdivrem+0x450>
  401764:	24c6fffc 	addiu	a2,a2,-4
  401768:	00051080 	sll	v0,a1,0x2
  40176c:	00541021 	addu	v0,v0,s4
  401770:	ac400000 	sw	zero,0(v0)
  401774:	8fa20014 	lw	v0,20(sp)
  401778:	8fa40018 	lw	a0,24(sp)
  40177c:	00021400 	sll	v0,v0,0x10
  401780:	8fa3001c 	lw	v1,28(sp)
  401784:	00448025 	or	s0,v0,a0
  401788:	8fa20020 	lw	v0,32(sp)
  40178c:	00031c00 	sll	v1,v1,0x10
  401790:	00628825 	or	s1,v1,v0
  401794:	ae510004 	sw	s1,4(s2)
  401798:	ae500000 	sw	s0,0(s2)
  40179c:	8fa2003c 	lw	v0,60(sp)
  4017a0:	8fa40040 	lw	a0,64(sp)
  4017a4:	00021400 	sll	v0,v0,0x10
  4017a8:	8fa30044 	lw	v1,68(sp)
  4017ac:	00448025 	or	s0,v0,a0
  4017b0:	8fa20048 	lw	v0,72(sp)
  4017b4:	00031c00 	sll	v1,v1,0x10
  4017b8:	00628825 	or	s1,v1,v0
  4017bc:	02201821 	move	v1,s1
  4017c0:	081004d6 	j	401358 <__qdivrem+0x6c>
  4017c4:	02001021 	move	v0,s0
  4017c8:	00001821 	move	v1,zero
  4017cc:	081004d6 	j	401358 <__qdivrem+0x6c>
  4017d0:	00001021 	move	v0,zero
  4017d4:	00602821 	move	a1,v1
  4017d8:	08100585 	j	401614 <__qdivrem+0x328>
  4017dc:	3407ffff 	li	a3,0xffff
  4017e0:	27a20024 	addiu	v0,sp,36
  4017e4:	24170004 	li	s7,4
  4017e8:	27be0028 	addiu	s8,sp,40
  4017ec:	0810053a 	j	4014e8 <__qdivrem+0x1fc>
  4017f0:	afa20050 	sw	v0,80(sp)
  4017f4:	24170002 	li	s7,2
  4017f8:	27be0030 	addiu	s8,sp,48
  4017fc:	0810053a 	j	4014e8 <__qdivrem+0x1fc>
  401800:	afa20050 	sw	v0,80(sp)
  401804:	08100545 	j	401514 <__qdivrem+0x228>
  401808:	27b40010 	addiu	s4,sp,16
  40180c:	08100568 	j	4015a0 <__qdivrem+0x2b4>
  401810:	0000a821 	move	s5,zero
  401814:	00042880 	sll	a1,a0,0x2
  401818:	08100552 	j	401548 <__qdivrem+0x25c>
  40181c:	27a60038 	addiu	a2,sp,56
