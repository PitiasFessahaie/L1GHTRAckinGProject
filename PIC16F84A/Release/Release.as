opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F84A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 10 "../main.c"
	psect config,class=CONFIG,delta=2 ;#
# 10 "../main.c"
	dw 0x3FF1 ;#
	FNCALL	_main,_init
	FNCALL	_main,___lwdiv
	FNCALL	_main,_forward
	FNCALL	_main,_right
	FNCALL	_main,_left
	FNCALL	_main,_halt
	FNROOT	_main
	global	_i
	global	_EEADR
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:
_EEADR	set	9
	global	_EEDATA
_EEDATA	set	8
	global	_PORTB
_PORTB	set	6
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_LD1
_LD1	set	50
	global	_LD2
_LD2	set	51
	global	_SIGIO
_SIGIO	set	52
	global	_EECON1
_EECON1	set	136
	global	_EECON2
_EECON2	set	137
	global	_TRISB
_TRISB	set	134
	global	_TRISBbits
_TRISBbits	set	134
	global	_RD
_RD	set	1088
	global	_WR
_WR	set	1089
	global	_WREN
_WREN	set	1090
	file	"Release.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_i:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_init
??_init:	; 0 bytes @ 0x0
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_forward
?_forward:	; 0 bytes @ 0x0
	global	??_forward
??_forward:	; 0 bytes @ 0x0
	global	?_right
?_right:	; 0 bytes @ 0x0
	global	??_right
??_right:	; 0 bytes @ 0x0
	global	?_left
?_left:	; 0 bytes @ 0x0
	global	??_left
??_left:	; 0 bytes @ 0x0
	global	?_halt
?_halt:	; 0 bytes @ 0x0
	global	??_halt
??_halt:	; 0 bytes @ 0x0
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	1
	global	main@Distance
main@Distance:	; 2 bytes @ 0x9
	ds	2
	global	main@EchoTime
main@EchoTime:	; 2 bytes @ 0xB
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON           0      0       0
;; BANK0           66     13      15

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___lwdiv

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0     190
;;                                              8 BANK0      5     5      0
;;                               _init
;;                            ___lwdiv
;;                            _forward
;;                              _right
;;                               _left
;;                               _halt
;; ---------------------------------------------------------------------------------
;; (1) _halt                                                 3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _left                                                 3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _right                                                3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _forward                                              3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;   ___lwdiv
;;   _forward
;;   _right
;;   _left
;;   _halt
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            0      0       0       0        0.0%
;;EEDATA              40      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               42      D       F       3       22.7%
;;ABS                  0      0       F       4        0.0%
;;BITBANK0            42      0       0       5        0.0%
;;DATA                 0      0      10       6        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  EchoTime        2   11[BANK0 ] unsigned int 
;;  Distance        2    9[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       4
;;      Temps:          0       1
;;      Totals:         0       5
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_init
;;		___lwdiv
;;		_forward
;;		_right
;;		_left
;;		_halt
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"../main.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	
l1763:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(main@EchoTime)
	clrf	(main@EchoTime+1)
	clrf	(main@Distance)
	clrf	(main@Distance+1)
	line	28
	
l1765:	
	fcall	_init
	goto	l1767
	line	29
	
l188:	
	line	30
	
l1767:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7
	line	31
	
l1769:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h,4	;volatile
	line	32
	
l1771:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7
	line	33
	
l1773:	
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	34
	
l1775:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7
	line	35
	
l1777:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h,4	;volatile
	line	36
	
l1779:	
	opt asmopt_off
movlw	58
	bcf	status, 5	;RP0=0, select bank0
movwf	(??_main+0)+0,f
u2397:
decfsz	(??_main+0)+0,f
	goto	u2397
opt asmopt_on

	line	37
	
l1781:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h,4	;volatile
	line	38
	
l1783:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(main@EchoTime)
	clrf	(main@EchoTime+1)
	line	39
	
l1785:	
	clrf	(main@Distance)
	clrf	(main@Distance+1)
	line	40
	goto	l1789
	
l190:	
	
l1787:	
	movlw	low(01h)
	addwf	(main@EchoTime),f
	skipnc
	incf	(main@EchoTime+1),f
	movlw	high(01h)
	addwf	(main@EchoTime+1),f
	goto	l1789
	
l189:	
	
l1789:	
	btfsc	(52/8),(52)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l1787
u2340:
	goto	l1791
	
l191:	
	line	41
	
l1791:	
	movlw	low(03Ah)
	movwf	(?___lwdiv)
	movlw	high(03Ah)
	movwf	((?___lwdiv))+1
	movf	(main@EchoTime+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@EchoTime),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(main@Distance+1)
	addwf	(main@Distance+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@Distance)
	addwf	(main@Distance)

	line	42
	
l1793:	
	btfss	(50/8),(50)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l192
u2350:
	
l1795:	
	btfss	(51/8),(51)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l192
u2360:
	line	43
	
l1797:	
	fcall	_forward
	goto	l1767
	line	44
	
l192:	
	btfss	(50/8),(50)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l194
u2370:
	line	45
	
l1799:	
	fcall	_right
	goto	l1767
	line	46
	
l194:	
	btfss	(51/8),(51)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l1803
u2380:
	line	47
	
l1801:	
	fcall	_left
	goto	l1767
	line	48
	
l196:	
	
l1803:	
	fcall	_halt
	goto	l1767
	
l197:	
	goto	l1767
	
l195:	
	goto	l1767
	
l193:	
	goto	l1767
	
l198:	
	line	29
	goto	l1767
	
l199:	
	line	48
	
l200:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_halt
psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:

;; *************** function _halt *****************
;; Defined at:
;;		line 51 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       3
;;      Totals:         0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text224
	file	"../main.c"
	line	51
	global	__size_of_halt
	__size_of_halt	equ	__end_of_halt-_halt
	
_halt:	
	opt	stack 7
; Regs used in _halt: [wreg+status,2]
	
l1759:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	52
	
l1761:	
	opt asmopt_off
movlw  2
movwf	((??_halt+0)+0+2),f
movlw	69
movwf	((??_halt+0)+0+1),f
	movlw	169
movwf	((??_halt+0)+0),f
u2407:
	decfsz	((??_halt+0)+0),f
	goto	u2407
	decfsz	((??_halt+0)+0+1),f
	goto	u2407
	decfsz	((??_halt+0)+0+2),f
	goto	u2407
	nop2
opt asmopt_on

	
l203:	
	return
	opt stack 0
GLOBAL	__end_of_halt
	__end_of_halt:
;; =============== function _halt ends ============

	signat	_halt,88
	global	_left
psect	text225,local,class=CODE,delta=2
global __ptext225
__ptext225:

;; *************** function _left *****************
;; Defined at:
;;		line 63 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       3
;;      Totals:         0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text225
	file	"../main.c"
	line	63
	global	__size_of_left
	__size_of_left	equ	__end_of_left-_left
	
_left:	
	opt	stack 7
; Regs used in _left: [wreg]
	
l1757:	
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	64
	opt asmopt_off
movlw  2
movwf	((??_left+0)+0+2),f
movlw	69
movwf	((??_left+0)+0+1),f
	movlw	169
movwf	((??_left+0)+0),f
u2417:
	decfsz	((??_left+0)+0),f
	goto	u2417
	decfsz	((??_left+0)+0+1),f
	goto	u2417
	decfsz	((??_left+0)+0+2),f
	goto	u2417
	nop2
opt asmopt_on

	
l212:	
	return
	opt stack 0
GLOBAL	__end_of_left
	__end_of_left:
;; =============== function _left ends ============

	signat	_left,88
	global	_right
psect	text226,local,class=CODE,delta=2
global __ptext226
__ptext226:

;; *************** function _right *****************
;; Defined at:
;;		line 59 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       3
;;      Totals:         0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text226
	file	"../main.c"
	line	59
	global	__size_of_right
	__size_of_right	equ	__end_of_right-_right
	
_right:	
	opt	stack 7
; Regs used in _right: [wreg]
	
l1755:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	60
	opt asmopt_off
movlw  2
movwf	((??_right+0)+0+2),f
movlw	69
movwf	((??_right+0)+0+1),f
	movlw	169
movwf	((??_right+0)+0),f
u2427:
	decfsz	((??_right+0)+0),f
	goto	u2427
	decfsz	((??_right+0)+0+1),f
	goto	u2427
	decfsz	((??_right+0)+0+2),f
	goto	u2427
	nop2
opt asmopt_on

	
l209:	
	return
	opt stack 0
GLOBAL	__end_of_right
	__end_of_right:
;; =============== function _right ends ============

	signat	_right,88
	global	_forward
psect	text227,local,class=CODE,delta=2
global __ptext227
__ptext227:

;; *************** function _forward *****************
;; Defined at:
;;		line 55 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       3
;;      Totals:         0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text227
	file	"../main.c"
	line	55
	global	__size_of_forward
	__size_of_forward	equ	__end_of_forward-_forward
	
_forward:	
	opt	stack 7
; Regs used in _forward: [wreg]
	
l1753:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	56
	opt asmopt_off
movlw  2
movwf	((??_forward+0)+0+2),f
movlw	69
movwf	((??_forward+0)+0+1),f
	movlw	169
movwf	((??_forward+0)+0),f
u2437:
	decfsz	((??_forward+0)+0),f
	goto	u2437
	decfsz	((??_forward+0)+0+1),f
	goto	u2437
	decfsz	((??_forward+0)+0+2),f
	goto	u2437
	nop2
opt asmopt_on

	line	57
	
l206:	
	return
	opt stack 0
GLOBAL	__end_of_forward
	__end_of_forward:
;; =============== function _forward ends ============

	signat	_forward,88
	global	___lwdiv
psect	text228,local,class=CODE,delta=2
global __ptext228
__ptext228:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       4
;;      Locals:         0       3
;;      Temps:          0       1
;;      Totals:         0       8
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text228
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l1727:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l1729:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2271
	goto	u2270
u2271:
	goto	l1749
u2270:
	line	11
	
l1731:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l1737
	
l437:	
	line	13
	
l1733:	
	movlw	01h
	
u2285:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2285
	line	14
	
l1735:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1737
	line	15
	
l436:	
	line	12
	
l1737:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l1733
u2290:
	goto	l1739
	
l438:	
	goto	l1739
	line	16
	
l439:	
	line	17
	
l1739:	
	movlw	01h
	
u2305:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2305
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2315
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2315:
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l1745
u2310:
	line	19
	
l1741:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l1743:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1745
	line	21
	
l440:	
	line	22
	
l1745:	
	movlw	01h
	
u2325:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2325
	line	23
	
l1747:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l1739
u2330:
	goto	l1749
	
l441:	
	goto	l1749
	line	24
	
l435:	
	line	25
	
l1749:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l442
	
l1751:	
	line	26
	
l442:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_init
psect	text229,local,class=CODE,delta=2
global __ptext229
__ptext229:

;; *************** function _init *****************
;; Defined at:
;;		line 17 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text229
	file	"../main.c"
	line	17
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 7
; Regs used in _init: [wreg]
	line	18
	
l1725:	
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	19
	
l185:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
psect	text230,local,class=CODE,delta=2
global __ptext230
__ptext230:
	global	btemp
	btemp set 04Eh

	DABS	1,78,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
