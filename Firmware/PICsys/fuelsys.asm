;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F73, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0006
PORTC equ 0X0007
PCLATH equ 0X000A
INTCON equ 0X000B
PIR1 equ 0X000C
PIR2 equ 0X000D
TMR1L equ 0X000E
TMR1LH equ 0X000F
TMR1H equ 0X000F
T1CON equ 0X0010
TMR2 equ 0X0011
T2CON equ 0X0012
SSPBUF equ 0X0013
SSPCON equ 0X0014
CCPR1L equ 0X0015
CCPR1LH equ 0X0016
CCPR1H equ 0X0016
CCP1CON equ 0X0017
RCSTA equ 0X0018
TXREG equ 0X0019
RCREG equ 0X001A
CCPR2L equ 0X001B
CCPR2LH equ 0X001C
CCPR2H equ 0X001C
CCP2CON equ 0X001D
ADRES equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
TXSTA equ 0X0098
SPBRG equ 0X0099
ADCON1 equ 0X009F
EEDATL equ 0X010C
PMDATL equ 0X010C
EEDATA equ 0X010C
EEDAT equ 0X010C
PMDATA equ 0X010C
EEADR equ 0X010D
PMADR equ 0X010D
EEDATLH equ 0X010E
PMDATLH equ 0X010E
EEDATH equ 0X010E
PMDATH equ 0X010E
EEADRH equ 0X010F
PMADRH equ 0X010F
EECON1 equ 0X018C
PMCON1 equ 0X018C
_I2C_SCL_PORT=TRISC
_I2C_SCL_PIN=3
_I2C_SDA_PORT=TRISC
_I2C_SDA_PIN=4
IRP=7
RP1=6
RP0=5
NOT_TO=4
NOT_PD=3
Z=2
DC=1
C=0
GIE=7
PEIE=6
T0IE=5
INTE=4
RBIE=3
T0IF=2
INTF=1
RBIF=0
ADIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
CCP2IF=0
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
T1INSYNC=2
TMR1CS=1
TMR1ON=0
TOUTPS3=6
TOUTPS2=5
TOUTPS1=4
TOUTPS0=3
TMR2ON=2
PP_TMR2ON=2
T2CKPS1=1
PP_T2CKPS1=1
T2CKPS0=0
PP_T2CKPS0=0
WCOL=7
SSPOV=6
SSPEN=5
CKP=4
SSPM3=3
SSPM2=2
SSPM1=1
SSPM0=0
CCP1X=5
CCP1Y=4
CCP1M3=3
CCP1M2=2
CCP1M1=1
CCP1M0=0
SPEN=7
RX9=6
RC9=6
NOT_RC8=6
RC8_9=6
SREN=5
CREN=4
PP_CREN=4
FERR=2
OERR=1
PP_OERR=1
RX9D=0
RCD8=0
CCP2X=5
CCP2Y=4
CCP2M3=3
CCP2M2=2
CCP2M1=1
CCP2M0=0
ADCS1=7
ADCS0=6
CHS2=5
CHS1=4
CHS0=3
GO=2
NOT_DONE=2
GO_DONE=2
PP_GO_DONE=2
ADON=0
NOT_RBPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
ADIE=6
RCIE=5
TXIE=4
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
CCP2IE=0
NOT_POR=1
NOT_BO=0
NOT_BOR=0
SMP=7
CKE=6
I2C_DATA=5
NOT_A=5
NOT_ADDRESS=5
D_A=5
DATA_ADDRESS=5
I2C_STOP=4
I2C_START=3
I2C_READ=2
NOT_W=2
NOT_WRITE=2
R_W=2
PP_R_W=2
READ_WRITE=2
UA=1
BF=0
PP_BF=0
CSRC=7
TX9=6
NOT_TX8=6
TX8_9=6
TXEN=5
SYNC=4
BRGH=2
TRMT=1
TX9D=0
TXD8=0
PCFG2=2
PCFG1=1
PCFG0=0
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X08-0X09
  __BADRAM 0X88-0X89, 0X8F-0X91, 0X95-0X97, 0X9A-0X9E
  __BADRAM 0X105, 0X107-0X109, 0X110-0X11F
  __BADRAM 0X185, 0X187-0X189, 0X18D-0X19F
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
CP_ALL equ 0X3FEF
CP_OFF equ 0X3FFF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
LP_OSC equ 0X3FFC
XT_OSC equ 0X3FFD
HS_OSC equ 0X3FFE
RC_OSC equ 0X3FFF
BOREN_OFF equ 0X3FBF
BOREN_ON equ 0X3FFF
CP_ON equ 0X3FEF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_RC equ 0X3FFF
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
#define __16F73 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 192
#define _RAM_END 0X00C0
#define _MAXMEM 4096
#define _ADC 5
#define _ADC_RES 8
#define _EEPROM 0
#define _PAGES 2
#define _BANKS 3
#define RAM_BANKS 2
#define _USART 1
#define _USB 0
#define _FLASH 2
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00FF
#define BANK2_START 0X0110
#define BANK2_END 0X0120
#define BANK3_START 0X0190
#define BANK3_END 0X01A0
#define _SYSTEM_VARIABLE_COUNT 35
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#DTPORT PORTB
#define LCD#DTPIN 4
#define LCD#RSPORT PORTB
#define LCD#RSPIN 2
#define LCD#ENPORT PORTB
#define LCD#ENPIN 3
#define LCD#INTERFACE 4
#define LCD#LINES 4
#define LCD#TYPE 0
f@call macro PDEST
if(PDEST < 1)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if((PDEST & 6144) == 0)
        clrf 10
else
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
endif
endif
endif
        call PDEST
        endm
F@JUMP macro PDEST
if(PDEST < 1)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if((PDEST & 6144) == 0)
        clrf 10
else
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
endif
endif
endif
        goto PDEST
        endm
set@page macro PDEST
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
        endm
s@b     macro pVarin
if((pVarin & 384) == 0)
if(ram_bank == 1)
        bcf 3,5
endif
if(ram_bank == 2)
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
        bcf 3,6
endif
ram_bank = 0
endif
if((pVarin & 384) == 128)
if(ram_bank == 0)
        bsf 3,5
endif
if(ram_bank == 2)
        bsf 3,5
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,6
endif
ram_bank = 1
endif
if((pVarin & 384) == 256)
if(ram_bank == 0)
        bsf 3,6
endif
if(ram_bank == 1)
        bcf 3,5
        bsf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
endif
ram_bank = 2
endif
if((pVarin & 384) == 384)
if(ram_bank == 0)
        bsf 3,5
        bsf 3,6
endif
if(ram_bank == 1)
        bsf 3,6
endif
if(ram_bank == 2)
        bsf 3,5
endif
ram_bank = 3
endif
        endm
r@b     macro
if((ram_bank & 1) != 0)
        bcf 3,5
endif
if((ram_bank & 2) != 0)
        bcf 3,6
endif
ram_bank = 0
        endm
jump macro PLABEL
    goto PLABEL
    endm
wreg_byte macro pByteOut
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
wreg_bit macro pVarOut,pBitout
    s@b pVarOut
    andlw 1
    btfsc STATUS,2
    bcf pVarOut,pBitout
    btfss STATUS,2
    bsf pVarOut,pBitout
    r@b
    endm
wreg_word macro pWordOut
    s@b pWordOut
    movwf pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    r@b
    endm
wreg_dword macro pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    s@b pDwordOut
    movwf pDwordOut
    r@b
    endm
byte_wreg macro pByteIn
    s@b pByteIn
    movf pByteIn,W
    r@b
    endm
num_wreg macro pNumIn
    movlw (pNumIn & 255)
    endm
num_byte macro pNumIn,pByteOut
    s@b pByteOut
if(pNumIn == 0)
    clrf pByteOut
else
    movlw (pNumIn & 255)
    movwf pByteOut
endif
    r@b
    endm
num_bit macro pNumIn,pVarOut,pBitout
    s@b pVarOut
if((pNumIn & 1) == 1)
    bsf pVarOut,pBitout
else
    bcf pVarOut,pBitout
endif
    r@b
    endm
num_word macro pNumIn,pWordOut
if((pNumIn & 255) == 0)
    s@b pWordOut
    clrf pWordOut
else
    s@b pWordOut
    movlw low (pNumIn)
    movwf pWordOut
endif
if(((pNumIn >> 8) & 255) == 0)
    s@b pWordOut+1
    clrf pWordOut+1
else
    s@b pWordOut+1
    movlw high (pNumIn)
    movwf pWordOut+1
endif
    r@b
    endm
num_dword macro pNumIn,pDwordOut
if ((pNumIn >> 24 & 255) == 0)
    s@b pDwordOut+3
    clrf pDwordOut+3
else
    s@b pDwordOut+3
    movlw ((pNumIn >> 24) & 255)
    movwf pDwordOut+3
endif
if( ((pNumIn >> 16) & 255) == 0)
    s@b pDwordOut+2
    clrf pDwordOut+2
else
    s@b pDwordOut+2
    movlw ((pNumIn >> 16) & 255)
    movwf pDwordOut+2
endif
if( ((pNumIn >> 8) & 255) == 0)
    s@b pDwordOut+1
    clrf pDwordOut+1
else
    s@b pDwordOut+1
    movlw high (pNumIn)
    movwf pDwordOut+1
endif
if((pNumIn & 255) == 0)
    s@b pDwordOut
    clrf pDwordOut
else
    s@b pDwordOut
    movlw low (pNumIn)
    movwf pDwordOut
endif
    r@b
    endm
bit_wreg macro pVarin,pBitIn
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    r@b
    endm
bit_byte macro pVarin,pBitIn,pByteOut
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
bit_bit macro pVarin,pBitIn,pVarOut,pBitout
if((pVarin & 65408) == (pVarOut & 65408))
    s@b pVarOut
    btfsc pVarin,pBitIn
    bsf pVarOut,pBitout
    btfss pVarin,pBitIn
    bcf pVarOut,pBitout
else
    s@b pVarin
    clrdc
    btfsc pVarin,pBitIn
    setdc
    s@b pVarOut
    skpndc
    bsf pVarOut,pBitout
    skpdc
    bcf pVarOut,pBitout
endif
    endm
bit_word macro pVarin,pBitIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    bit_byte pVarin,pBitIn,pWordOut
    endm
bit_dword macro pVarin,pBitIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    bit_byte pVarin,pBitIn,pDwordOut
    endm
word_wreg macro pWordIn
    byte_wreg pWordIn
    endm
word_byte macro pWordIn,pByteOut
    byte_byte pWordIn,pByteOut
    endm
word_bit macro pWordIn,pVarOut,pBitout
    byte_bit pWordIn, pVarOut, pBitout
    endm
word_word macro pWordIn,pWordOut
    s@b pWordIn+1
    movf pWordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pWordIn,pWordOut
    endm
word_dword macro pWordIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    byte_byte pWordIn+1,pDwordOut+1
    byte_byte pWordIn,pDwordOut
    endm
byte_byte macro pByteIn,pByteOut
    s@b pByteIn
    movf pByteIn,W
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
byte_word macro pByteIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    byte_byte pByteIn,pWordOut
    endm
byte_dword macro pByteIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    byte_byte pByteIn,pDwordOut
    endm
    byte_bit macro pByteIn,pVarOut,pBitout
if((pByteIn & 65408) == (pVarOut & 65408))
    s@b pByteIn
    btfsc pByteIn,0
    bsf pVarOut,pBitout
    btfss pByteIn,0
    bcf pVarOut,pBitout
else
    s@b pByteIn
    rrf pByteIn,W
    s@b pVarOut
    skpnc
    bsf pVarOut,pBitout
    skpc
    bcf pVarOut,pBitout
endif
    r@b
    endm
dword_wreg macro pDwordIn
    byte_wreg pDwordIn
    endm
dword_byte macro pDwordIn,pByteOut
    byte_byte pDwordIn,pByteOut
    endm
dword_word macro pDwordIn,pWordOut
    s@b pDwordIn+1
    movf pDwordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pDwordIn,pWordOut
    endm
dword_dword macro pDwordIn,pDwordOut
    byte_byte pDwordIn+3,pDwordOut+3
    byte_byte pDwordIn+2,pDwordOut+2
    byte_byte pDwordIn+1,pDwordOut+1
    byte_byte pDwordIn,pDwordOut
    endm
dword_bit macro pDwordIn,pVarOut,pBitout
    byte_bit pDwordIn,pVarOut,pBitout
    endm
variable CURRENT@PAGE = 0
variable PDESTINATION@PAGE = 0
FIND@PAGE macro pLabelIn
local CURRENT_ADDR = $
local DEST_ADDR = pLabelIn
if((CURRENT_ADDR >= 0X1800) && (CURRENT_ADDR <= 0X2000))
    CURRENT@PAGE = 3
endif
if((CURRENT_ADDR >= 0X1000) && (CURRENT_ADDR <= 0X1800))
    CURRENT@PAGE = 2
endif
if((CURRENT_ADDR >= 0X0800) && (CURRENT_ADDR <= 0X1000))
    CURRENT@PAGE = 1
endif
if((CURRENT_ADDR >= 0) && (CURRENT_ADDR <= 0X0800))
    CURRENT@PAGE = 0
endif
if((DEST_ADDR >= 0X1800) && (DEST_ADDR <= 0X2000))
    PDESTINATION@PAGE = 3
endif
if((DEST_ADDR >= 0X1000) && (DEST_ADDR <= 0X1800))
    PDESTINATION@PAGE = 2
endif
if((DEST_ADDR >= 0X0800) && (DEST_ADDR <= 0X1000))
    PDESTINATION@PAGE = 1
endif
if((DEST_ADDR >= 0) && (DEST_ADDR <= 0X0800))
    PDESTINATION@PAGE = 0
endif
    endm
NUM_FSR macro pNumIn
    num_byte pNumIn, FSR
if (((pNumIn >> 8) & 255) == 1)
    bsf STATUS,7
else
    bcf STATUS,7
endif
    endm
label_word macro pLabelIn,pWordOut
    movlw low (pLabelIn)
    s@b pWordOut
    movwf pWordOut
    movlw high (pLabelIn)
    s@b pWordOut
    movwf pWordOut+1
    r@b
    endm
BPF = 32
BPFH = 33
CSTR#CT = 34
GEN = 35
GEN3H = 36
GEN4 = 37
GEN4H = 38
GENH = 39
GPR = 40
PBP#VAR0 = 41
PBP#VAR1 = 42
PP0 = 43
PP0H = 44
PP0HH = 45
PP0HHH = 46
PP1 = 47
PP1H = 48
PP2 = 49
PP2H = 50
PP2HH = 51
PP2HHH = 52
PP3 = 53
PP3H = 54
PP4 = 55
PP5 = 56
PP6 = 57
PP6H = 58
PP7 = 59
PP7H = 60
PPZ = 61
PPZH = 62
PPZHH = 63
PPZHHH = 64
RPFH = 65
SP#P9 = 66
msg = 67
_X = 68
_Y = 69
oil = 70
variable oil#0=70,oil#1=71
oil_q = 72
bill = 73
cost = 74
costH = 75
ID_no = 76
tmp_ID = 77
Card_ID = 78
variable Card_ID#0=78,Card_ID#1=79
pass_1 = 80
variable pass_1#0=80,pass_1#1=81,pass_1#2=82,pass_1#3=83
variable pass_1#4=84,pass_1#5=85,pass_1#6=86,pass_1#7=87
pass_2 = 88
variable pass_2#0=88,pass_2#1=89,pass_2#2=90,pass_2#3=91
variable pass_2#4=92,pass_2#5=93,pass_2#6=94,pass_2#7=95
pass_3 = 96
variable pass_3#0=96,pass_3#1=97,pass_3#2=98,pass_3#3=99
variable pass_3#4=100,pass_3#5=101,pass_3#6=102,pass_3#7=103
pass_4 = 104
variable pass_4#0=104,pass_4#1=105,pass_4#2=106,pass_4#3=107
variable pass_4#4=108,pass_4#5=109,pass_4#6=110,pass_4#7=111
pass_5 = 112
variable pass_5#0=112,pass_5#1=113,pass_5#2=114,pass_5#3=115
variable pass_5#4=116,pass_5#5=117,pass_5#6=118,pass_5#7=119
temp_pass = 120
variable temp_pass#0=120,temp_pass#1=121,temp_pass#2=122,temp_pass#3=123
variable temp_pass#4=124,temp_pass#5=125,temp_pass#6=126,temp_pass#7=127
key = 160
key_value = 161
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define IR_1 PORTB,0
#define motor PORTA,0
#define pump PORTA,5
#define hi_level PORTC,4
#define lo_level PORTC,5
#define col_1 PORTC,3
#define col_2 PORTC,2
#define col_3 PORTC,1
#define col_4 PORTC,0
#define row_1 PORTA,4
#define row_2 PORTA,3
#define row_3 PORTA,2
#define row_4 PORTA,1
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __LCD_LINES 4
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
HSERIAL_SPBRG = 129
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 9600
proton#code#start
        org 0
        goto proton#main#start
T@LEB
        clrf 44
T@LEW
        clrf 48
T@LE
        movwf 47
        movlw 6
T@ST
        movwf 40
        movf 48,W
        subwf 44,W
        skpz
        goto $ + 3
        movf 47,W
        subwf 43,W
        movlw 4
        skpnc
        movlw 1
        skpnz
        movlw 2
        andwf 40,W
        skpz
        movlw 1
        goto I@NT
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call CH@SND
        movlw 1
        call CH@SND
        movlw 117
        movwf 44
        movlw 48
        goto DLUS@W
LCD@CUR
        clrf 33
        bsf 33,7
CURSOR
        movwf 56
        tstf 56
        skpz
        decf 56,F
        movlw 254
        call CH@SND
        tstf 35
        skpnz
        goto $ + 3
        decfsz 35,W
        goto $ + 3
        movlw 128
        goto $ + 18
        movf 35,W
        xorlw 2
        skpz
        goto $ + 3
        movlw 192
        goto $ + 12
        movf 35,W
        xorlw 3
        skpz
        goto $ + 3
        movlw 148
        goto $ + 6
        movf 35,W
        xorlw 4
        skpz
        goto $ + 3
        movlw 212
        movwf 35
        movf 56,W
        addwf 35,W
        goto CH@SND
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 56
        movlw 254
        call CH@SND
        movf 56,W
        goto CH@SND
IN@DEC32
        clrf 49
        clrf 50
        clrf 51
        clrf 52
        bcf 40,5
IN@DECB32
        call CH@RCV
        skpc
        return
        addlw 211
        skpnz
        bsf 40,5
        addlw 45
        addlw 198
        skpnc
        goto IN@DECB32
        addlw 10
        skpc
        goto IN@DECB32
IN@DCL132
        movwf 47
        clrf 46
        clrf 45
        clrf 44
        movlw 10
        movwf 43
        call AL@MUL
        movf 47,W
        addwf 43,W
        movwf 49
        movf 44,W
        movwf 50
        clrw
        skpnc
        movlw 1
        addwf 50,F
        movf 45,W
        movwf 51
        clrw
        skpnc
        movlw 1
        addwf 51,F
        movf 46,W
        movwf 52
        clrw
        skpnc
        movlw 1
        addwf 52,F
        decf 38,F
        skpnz
        goto IN@BNF32
        call CH@RCV
        skpc
        return
        addlw 198
        skpnc
        goto IN@BNF32
        addlw 10
        skpnc
        goto IN@DCL132
IN@BNF32
        btfss 40,5
        goto $ + 12
        comf 49,F
        comf 50,F
        comf 51,F
        comf 52,F
        incf 49,F
        skpnz
        incf 50,F
        skpnz
        incf 51,F
        skpnz
        incf 52,F
        movf 49,W
        setc
        goto I@NT
OUT@DECB
        clrf 38
OUT@DECC
        movwf 49
        clrf 50
OUT@DEC
        bcf 32,3
        movf 38,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 37
        movlw 39
        movwf 48
        movlw 16
        call D@DIG
        movlw 3
        movwf 48
        movlw 232
        call D@DIG
        clrf 48
        movlw 100
        call D@DIG
        clrf 48
        movlw 10
        call D@DIG
        movf 49,W
        goto SEND@IT
D@DIG
        movwf 47
        movf 50,W
        movwf 44
        movf 49,W
        movwf 43
        call D@VD
        movf 43,W
SEND@IT
        movwf 43
        decf 37,F
        skpnz
        bcf 32,3
        movf 38,W
        skpnz
        goto $ + 4
        subwf 37,W
        skpnc
        goto EX@SEND@IT
        movf 43,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
PRINT
        movwf 54
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 54,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 44
        movlw 128
        call DLUS@W
        movlw 51
        movwf 53
        call PR@LP
        movlw 19
        movwf 44
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 53
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 54,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 53
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 44
        movlw 208
        call DLUS@W
        bsf 3,0
        return
PRIT@SKP
        bsf 32,0
        sublw 254
        skpnz
        goto PR@EX
        bsf PORTB,2
PRT@S
        btfss 32,0
PR@LP
        bcf 32,0
        bsf PORTB,3
        movlw 15
        andwf PORTB,F
        movf 53,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 53,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 54,W
        goto I@NT
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 35,W
        movwf 43
        movf 39,W
        movwf 44
        clrf 47
        clrf 48
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 47,F
        skpc
        addwf 48,F
        skpc
        addwf 43,F
        skpc
        addwf 44,F
        skpc
        goto I@NT
        incfsz 47,W
        goto $ - 16
        incfsz 48,W
        goto $ - 17
        movlw 250
        movwf 47
        clrf 48
        goto HRSIN@LPT
HRSIN
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        btfss 12,PP_RCIF
        goto $ - 1
H@RSIN
        movf 26,W
        bsf 3,0
        goto I@NT
HRSOUT
        btfss 12,PP_TXIF
        goto $ - 1
        movwf 25
        bsf 3,0
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        btfsc 33,2
        goto HRSOUT
        return
CH@RCV
        movf 65,F
        skpnz
        goto HRSIN2
        decf 65,W
        skpnz
        goto HRSIN
C@STROUT
        movwf 37
C@STROUTW
        clrf 34
C@STROUTLP
        movf 37,W
        bsf 3,6
        movwf 269
        bcf 3,6
        movf 38,W
        bsf 3,6
        movwf 271
        call C@READ
        skpnz
        goto I@NT
        call CH@SND
        incf 37,F
        skpnz
        incf 38,F
        incfsz 34,F
        goto C@STROUTLP
        goto I@NT
C@READ
        bsf 3,5
        bsf 3,6
        bsf 396,PP_RD
        nop
        nop
        bcf 3,5
        movf 268,W
        goto I@NT
DL@MS
        clrf 48
DLY@W
        movwf 47
DLY@P
        movlw 255
        addwf 47,F
        skpc
        addwf 48,F
        skpc
        goto I@NT
        movlw 3
        movwf 44
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 44
DLUS@W
        addlw 252
        movwf 43
        comf 44,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 43,F
        skpnc
        goto $ - 3
        addwf 43,F
        nop
        incfsz 44,F
        goto $ - 8
        return
D@VD
        clrf 50
        clrf 49
D@VD2
        movlw 16
        movwf 53
        rlf 44,W
        rlf 49,F
        rlf 50,F
        movf 47,W
        subwf 49,F
        movf 48,W
        skpc
        incfsz 48,W
        subwf 50,F
        skpnc
        goto $ + 8
        movf 47,W
        addwf 49,F
        movf 48,W
        skpnc
        incfsz 48,W
        addwf 50,F
        bcf 3,0
        rlf 43,F
        rlf 44,F
        decfsz 53,F
        goto $ - 21
        movf 43,W
        return
AL@MUL
        movlw 32
        movwf 53
        clrf 61
        clrf 62
        clrf 63
        clrf 64
MLT32@LP
        clrc
        btfss 43,0
        goto MLT32@BR
        movf 49,W
        addwf 61,F
        movf 50,W
        skpnc
        incfsz 50,W
        addwf 62,F
        movf 51,W
        skpnc
        incfsz 51,W
        addwf 63,F
        movf 52,W
        skpnc
        incfsz 52,W
        addwf 64,F
MLT32@BR
        rrf 64,F
        rrf 63,F
        rrf 62,F
        rrf 61,F
        rrf 46,F
        rrf 45,F
        rrf 44,F
        rrf 43,F
        decfsz 53,F
        goto MLT32@LP
        return
M@PY
        movlw 16
        movwf 58
        clrf 44
        clrf 43
        rrf 54,F
        rrf 53,F
        skpc
        goto $ + 7
        movf 47,W
        addwf 43,F
        movf 48,W
        skpnc
        incfsz 48,W
        addwf 44,F
        rrf 44,F
        rrf 43,F
        rrf 50,F
        rrf 49,F
        decfsz 58,F
        goto $ - 15
        movf 49,W
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
        bsf 3,5
        movlw 129
        movwf 153
        movlw 36
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
        clrf 32
F2_SOF equ $ ; FUELSYS.PRP
F2_EOF equ $ ; FUELSYS.PRP
F1_SOF equ $ ; FUELSYS.BAS
F1_000021 equ $ ; IN [FUELSYS.BAS] ADCON1 = 7
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000022 equ $ ; IN [FUELSYS.BAS] CLS
        bcf STATUS,5
ram_bank = 0
        f@call LCD@CLS
F1_000029 equ $ ; IN [FUELSYS.BAS] INPUT IR_1 : INPUT HI_LEVEL
        bsf STATUS,5
ram_bank = 1
        bsf TRISB,0
        bsf TRISC,4
F1_000030 equ $ ; IN [FUELSYS.BAS] INPUT LO_LEVEL
        bsf TRISC,5
F1_000031 equ $ ; IN [FUELSYS.BAS] OUTPUT MOTOR : OUTPUT PUMP
        bcf TRISA,0
        bcf TRISA,5
F1_000050 equ $ ; IN [FUELSYS.BAS] PUMP = 0 : MOTOR = 0
        bcf STATUS,5
ram_bank = 0
        bcf PORTA,5
        bcf PORTA,0
F1_000051 equ $ ; IN [FUELSYS.BAS] BILL = 0 : OIL_Q = 0
        clrf bill
        clrf oil_q
F1_000054 equ $ ; IN [FUELSYS.BAS] STR PASS_1 = "12341234"
        movlw 49
        movwf pass_1#0
        movlw 50
        movwf pass_1#1
        movlw 51
        movwf pass_1#2
        movlw 52
        movwf pass_1#3
        movlw 49
        movwf pass_1#4
        movlw 50
        movwf pass_1#5
        movlw 51
        movwf pass_1#6
        movlw 52
        movwf pass_1#7
F1_000055 equ $ ; IN [FUELSYS.BAS] STR PASS_2 = "ABCDABCD"
        movlw 65
        movwf pass_2#0
        movlw 66
        movwf pass_2#1
        movlw 67
        movwf pass_2#2
        movlw 68
        movwf pass_2#3
        movlw 65
        movwf pass_2#4
        movlw 66
        movwf pass_2#5
        movlw 67
        movwf pass_2#6
        movlw 68
        movwf pass_2#7
F1_000056 equ $ ; IN [FUELSYS.BAS] STR PASS_3 = "ABCD1234"
        movlw 65
        movwf pass_3#0
        movlw 66
        movwf pass_3#1
        movlw 67
        movwf pass_3#2
        movlw 68
        movwf pass_3#3
        movlw 49
        movwf pass_3#4
        movlw 50
        movwf pass_3#5
        movlw 51
        movwf pass_3#6
        movlw 52
        movwf pass_3#7
F1_000057 equ $ ; IN [FUELSYS.BAS] STR PASS_4 = "1234ABCD"
        movlw 49
        movwf pass_4#0
        movlw 50
        movwf pass_4#1
        movlw 51
        movwf pass_4#2
        movlw 52
        movwf pass_4#3
        movlw 65
        movwf pass_4#4
        movlw 66
        movwf pass_4#5
        movlw 67
        movwf pass_4#6
        movlw 68
        movwf pass_4#7
F1_000058 equ $ ; IN [FUELSYS.BAS] STR PASS_5 = "123A456B"
        movlw 49
        movwf pass_5#0
        movlw 50
        movwf pass_5#1
        movlw 51
        movwf pass_5#2
        movlw 65
        movwf pass_5#3
        movlw 52
        movwf pass_5#4
        movlw 53
        movwf pass_5#5
        movlw 54
        movwf pass_5#6
        movlw 66
        movwf pass_5#7
F1_000060 equ $ ; IN [FUELSYS.BAS] CARD_ID[1] = $FF
        movlw 255
        movwf Card_ID#1
F3_SOF equ $ ; KEYPAD4X4.INC
checking
F3_000022 equ $ ; IN [KEYPAD4X4.INC] INPUT ROW_1 : INPUT ROW_2 : INPUT ROW_3 : INPUT ROW_4
        bsf STATUS,5
ram_bank = 1
        bsf TRISA,4
        bsf TRISA,3
        bsf TRISA,2
        bsf TRISA,1
F3_000023 equ $ ; IN [KEYPAD4X4.INC] OUTPUT COL_1 : OUTPUT COL_2 : OUTPUT COL_3 : OUTPUT COL_4
        bcf TRISC,3
        bcf TRISC,2
        bcf TRISC,1
        bcf TRISC,0
F3_000027 equ $ ; IN [KEYPAD4X4.INC] GOSUB DEFAULT
        bcf STATUS,5
ram_bank = 0
        f@call default
capture_key
F3_000030 equ $ ; IN [KEYPAD4X4.INC] KEY_VALUE = 0 : KEY = 0
        bsf STATUS,5
ram_bank = 1
        clrf key_value
        clrf key
F3_000031 equ $ ; IN [KEYPAD4X4.INC] REPEAT
BC@LL1
        bcf STATUS,5
ram_bank = 0
F3_000032 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 1 : COL_2 = 0 : COL_3 = 0 : COL_4 = 0
        bsf PORTC,3
        bcf PORTC,2
        bcf PORTC,1
        bcf PORTC,0
F3_000033 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000034 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL5
        btfss PORTA,4
        goto BC@LL5
F3_000035 equ $ ; IN [KEYPAD4X4.INC] KEY = 1 : GOSUB GET_CODE
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL4
F3_000036 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL5
        set@page BC@LL6
        btfss PORTA,3
        goto BC@LL6
F3_000037 equ $ ; IN [KEYPAD4X4.INC] KEY = 2 : GOSUB GET_CODE
        movlw 2
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL4
F3_000038 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL6
        set@page BC@LL7
        btfss PORTA,2
        goto BC@LL7
F3_000039 equ $ ; IN [KEYPAD4X4.INC] KEY = 3 : GOSUB GET_CODE
        movlw 3
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL4
F3_000040 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL7
        set@page BC@LL8
        btfss PORTA,1
        goto BC@LL8
F3_000041 equ $ ; IN [KEYPAD4X4.INC] KEY = 4 : GOSUB GET_CODE
        movlw 4
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
F3_000042 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL8
BC@LL4
F3_000043 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 0 : COL_2 = 1 : COL_3 = 0 : COL_4 = 0
        bcf PORTC,3
        bsf PORTC,2
        bcf PORTC,1
        bcf PORTC,0
F3_000044 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000045 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL10
        btfss PORTA,4
        goto BC@LL10
F3_000046 equ $ ; IN [KEYPAD4X4.INC] KEY = 5 : GOSUB GET_CODE
        movlw 5
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL9
F3_000047 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL10
        set@page BC@LL11
        btfss PORTA,3
        goto BC@LL11
F3_000048 equ $ ; IN [KEYPAD4X4.INC] KEY = 6 : GOSUB GET_CODE
        movlw 6
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL9
F3_000049 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL11
        set@page BC@LL12
        btfss PORTA,2
        goto BC@LL12
F3_000050 equ $ ; IN [KEYPAD4X4.INC] KEY = 7 : GOSUB GET_CODE
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL9
F3_000051 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL12
        set@page BC@LL13
        btfss PORTA,1
        goto BC@LL13
F3_000052 equ $ ; IN [KEYPAD4X4.INC] KEY = 8 : GOSUB GET_CODE
        movlw 8
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
F3_000053 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL13
BC@LL9
F3_000054 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 0 : COL_2 = 0 : COL_3 = 1 : COL_4 = 0
        bcf PORTC,3
        bcf PORTC,2
        bsf PORTC,1
        bcf PORTC,0
F3_000055 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000056 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL15
        btfss PORTA,4
        goto BC@LL15
F3_000057 equ $ ; IN [KEYPAD4X4.INC] KEY = 9 : GOSUB GET_CODE
        movlw 9
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL14
F3_000058 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL15
        set@page BC@LL16
        btfss PORTA,3
        goto BC@LL16
F3_000059 equ $ ; IN [KEYPAD4X4.INC] KEY = 10 : GOSUB GET_CODE
        movlw 10
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL14
F3_000060 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL16
        set@page BC@LL17
        btfss PORTA,2
        goto BC@LL17
F3_000061 equ $ ; IN [KEYPAD4X4.INC] KEY = 11 : GOSUB GET_CODE
        movlw 11
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL14
F3_000062 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL17
        set@page BC@LL18
        btfss PORTA,1
        goto BC@LL18
F3_000063 equ $ ; IN [KEYPAD4X4.INC] KEY = 12 : GOSUB GET_CODE
        movlw 12
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
F3_000064 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL18
BC@LL14
F3_000065 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 0 : COL_2 = 0 : COL_3 = 0 : COL_4 = 1
        bcf PORTC,3
        bcf PORTC,2
        bcf PORTC,1
        bsf PORTC,0
F3_000066 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000067 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL20
        btfss PORTA,4
        goto BC@LL20
F3_000068 equ $ ; IN [KEYPAD4X4.INC] KEY = 13 : GOSUB GET_CODE
        movlw 13
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL19
F3_000069 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL20
        set@page BC@LL21
        btfss PORTA,3
        goto BC@LL21
F3_000070 equ $ ; IN [KEYPAD4X4.INC] KEY = 14 : GOSUB GET_CODE
        movlw 14
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL19
F3_000071 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL21
        set@page BC@LL22
        btfss PORTA,2
        goto BC@LL22
F3_000072 equ $ ; IN [KEYPAD4X4.INC] KEY = 15 : GOSUB GET_CODE
        movlw 15
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
        F@JUMP BC@LL19
F3_000073 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL22
        set@page BC@LL23
        btfss PORTA,1
        goto BC@LL23
F3_000074 equ $ ; IN [KEYPAD4X4.INC] KEY = 16 : GOSUB GET_CODE
        movlw 16
        bsf STATUS,5
ram_bank = 1
        movwf key
        bcf STATUS,5
ram_bank = 0
        f@call get_code
F3_000075 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL23
BC@LL19
BC@LL3
F3_000076 equ $ ; IN [KEYPAD4X4.INC] UNTIL KEY != 0
        bsf STATUS,5
ram_bank = 1
        movf key,F
        set@page BC@LL1
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,2
        goto BC@LL1
BC@LL2
F3_000077 equ $ ; IN [KEYPAD4X4.INC] RETURN
        return
get_code
F3_000080 equ $ ; IN [KEYPAD4X4.INC] SELECT KEY
F3_000081 equ $ ; IN [KEYPAD4X4.INC] CASE 0 : KEY_VALUE = 0 : RETURN
        bsf STATUS,5
ram_bank = 1
        movf key,F
        set@page BC@LL25
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL25
ram_bank = 0
        bsf STATUS,5
ram_bank = 1
        clrf key_value
        bcf STATUS,5
ram_bank = 0
        return
        F@JUMP BC@LL24
BC@LL25
F3_000082 equ $ ; IN [KEYPAD4X4.INC] CASE 1 : KEY_VALUE = "1" : DELAYMS 500
        movlw 1
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL28
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL28
ram_bank = 0
        movlw 49
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL28
F3_000083 equ $ ; IN [KEYPAD4X4.INC] CASE 2 : KEY_VALUE = "2" : DELAYMS 500
        movlw 2
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL30
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL30
ram_bank = 0
        movlw 50
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL30
F3_000084 equ $ ; IN [KEYPAD4X4.INC] CASE 3 : KEY_VALUE = "3" : DELAYMS 500
        movlw 3
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL32
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL32
ram_bank = 0
        movlw 51
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL32
F3_000085 equ $ ; IN [KEYPAD4X4.INC] CASE 4 : KEY_VALUE = "A" : DELAYMS 500
        movlw 4
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL34
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL34
ram_bank = 0
        movlw 65
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL34
F3_000086 equ $ ; IN [KEYPAD4X4.INC] CASE 5 : KEY_VALUE = "4" : DELAYMS 500
        movlw 5
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL36
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL36
ram_bank = 0
        movlw 52
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL36
F3_000087 equ $ ; IN [KEYPAD4X4.INC] CASE 6 : KEY_VALUE = "5" : DELAYMS 500
        movlw 6
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL38
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL38
ram_bank = 0
        movlw 53
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL38
F3_000088 equ $ ; IN [KEYPAD4X4.INC] CASE 7 : KEY_VALUE = "6" : DELAYMS 500
        movlw 7
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL40
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL40
ram_bank = 0
        movlw 54
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL40
F3_000089 equ $ ; IN [KEYPAD4X4.INC] CASE 8 : KEY_VALUE = "B" : DELAYMS 500
        movlw 8
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL42
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL42
ram_bank = 0
        movlw 66
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL42
F3_000090 equ $ ; IN [KEYPAD4X4.INC] CASE 9 : KEY_VALUE = "7" : DELAYMS 500
        movlw 9
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL44
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL44
ram_bank = 0
        movlw 55
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL44
F3_000091 equ $ ; IN [KEYPAD4X4.INC] CASE 10 : KEY_VALUE = "8" : DELAYMS 500
        movlw 10
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL46
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL46
ram_bank = 0
        movlw 56
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL46
F3_000092 equ $ ; IN [KEYPAD4X4.INC] CASE 11 : KEY_VALUE = "9" : DELAYMS 500
        movlw 11
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL48
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL48
ram_bank = 0
        movlw 57
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL48
F3_000093 equ $ ; IN [KEYPAD4X4.INC] CASE 12 : KEY_VALUE = "C" : DELAYMS 500
        movlw 12
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL50
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL50
ram_bank = 0
        movlw 67
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL50
F3_000094 equ $ ; IN [KEYPAD4X4.INC] CASE 13 : KEY_VALUE = "*" : DELAYMS 500
        movlw 13
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL52
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL52
ram_bank = 0
        movlw 42
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL52
F3_000095 equ $ ; IN [KEYPAD4X4.INC] CASE 14 : KEY_VALUE = "0" : DELAYMS 500
        movlw 14
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL54
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL54
ram_bank = 0
        movlw 48
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL54
F3_000096 equ $ ; IN [KEYPAD4X4.INC] CASE 15 : KEY_VALUE = "#" : DELAYMS 500
        movlw 15
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL56
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL56
ram_bank = 0
        movlw 35
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL24
BC@LL56
F3_000097 equ $ ; IN [KEYPAD4X4.INC] CASE 16 : KEY_VALUE = "D" : DELAYMS 500
        movlw 16
        bsf STATUS,5
ram_bank = 1
        subwf key,W
        set@page BC@LL58
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL58
ram_bank = 0
        movlw 68
        bsf STATUS,5
ram_bank = 1
        movwf key_value
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf PP1H
        movlw 244
        f@call DLY@W
F3_000098 equ $ ; IN [KEYPAD4X4.INC] CASE ELSE : KEY_VALUE = 0 : RETURN
        F@JUMP BC@LL60
BC@LL58
        bsf STATUS,5
ram_bank = 1
        clrf key_value
        bcf STATUS,5
ram_bank = 0
        return
F3_000099 equ $ ; IN [KEYPAD4X4.INC] ENDSELECT
BC@LL60
BC@LL24
F3_000100 equ $ ; IN [KEYPAD4X4.INC] RETURN
        return
F3_EOF equ $ ; KEYPAD4X4.INC
main
F1_000065 equ $ ; IN [FUELSYS.BAS] GOSUB CHECK_SERIAL
        f@call check_serial
F1_000066 equ $ ; IN [FUELSYS.BAS] IF IR_1 = 0 THEN GOSUB GATE_OPEN
        set@page BC@LL62
        btfsc PORTB,0
        goto BC@LL62
        f@call gate_open
BC@LL62
F1_000067 equ $ ; IN [FUELSYS.BAS] IF IR_1 = 1 THEN GOSUB GATE_LOCK
        set@page BC@LL64
        btfss PORTB,0
        goto BC@LL64
        f@call gate_lock
BC@LL64
F1_000068 equ $ ; IN [FUELSYS.BAS] IF HI_LEVEL = 1 THEN
        set@page BC@LL66
        btfss PORTC,4
        goto BC@LL66
F1_000069 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000070 equ $ ; IN [FUELSYS.BAS] HSEROUT["HHHH"]
        movlw 104
        f@call HRSOUT
        f@call HRSOUT
        f@call HRSOUT
        f@call HRSOUT
F1_000071 equ $ ; IN [FUELSYS.BAS] WHILE HI_LEVEL = 1
BC@LL67
        set@page BC@LL68
        btfss PORTC,4
        goto BC@LL68
F1_000072 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"FUEL LEVEL: HIGH"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
F1_000073 equ $ ; IN [FUELSYS.BAS] WEND
        F@JUMP BC@LL67
BC@LL68
F1_000074 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1, "SENDING SMS....."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
F1_000075 equ $ ; IN [FUELSYS.BAS] DELAYMS 4000
        movlw 15
        movwf PP1H
        movlw 160
        f@call DLY@W
F1_000076 equ $ ; IN [FUELSYS.BAS] GOTO DEFAULT
        F@JUMP default
F1_000077 equ $ ; IN [FUELSYS.BAS] ENDIF
BC@LL66
F1_000078 equ $ ; IN [FUELSYS.BAS] IF LO_LEVEL = 1 THEN
        set@page BC@LL70
        btfss PORTC,5
        goto BC@LL70
F1_000079 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000080 equ $ ; IN [FUELSYS.BAS] HSEROUT["LLLL"]
        movlw 108
        f@call HRSOUT
        f@call HRSOUT
        f@call HRSOUT
        f@call HRSOUT
F1_000081 equ $ ; IN [FUELSYS.BAS] WHILE LO_LEVEL = 1
BC@LL71
        set@page BC@LL72
        btfss PORTC,5
        goto BC@LL72
F1_000082 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"FUEL LEVEL: LOW"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
F1_000083 equ $ ; IN [FUELSYS.BAS] WEND
        F@JUMP BC@LL71
BC@LL72
F1_000084 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1, "SENDING SMS....."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
F1_000085 equ $ ; IN [FUELSYS.BAS] DELAYMS 4000
        movlw 15
        movwf PP1H
        movlw 160
        f@call DLY@W
F1_000086 equ $ ; IN [FUELSYS.BAS] GOTO DEFAULT
        F@JUMP default
F1_000087 equ $ ; IN [FUELSYS.BAS] ENDIF
BC@LL70
F1_000088 equ $ ; IN [FUELSYS.BAS] RETURN
        return
F1_000089 equ $ ; IN [FUELSYS.BAS] GOTO MAIN
        F@JUMP main
check_serial
F1_000092 equ $ ; IN [FUELSYS.BAS] HSERIN 500, OVER,[MSG]
        movlw 1
        movwf GENH
        movlw 244
        movwf GEN
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        movwf msg
F1_000093 equ $ ; IN [FUELSYS.BAS] IF MSG = "H" THEN GOSUB SHOW_CARD
        movlw 72
        subwf msg,W
        set@page BC@LL74
        btfss STATUS,2
        goto BC@LL74
        f@call Show_card
BC@LL74
F1_000094 equ $ ; IN [FUELSYS.BAS] IF MSG = "S" THEN GOSUB SHOW_CARD
        movlw 83
        subwf msg,W
        set@page BC@LL76
        btfss STATUS,2
        goto BC@LL76
        f@call Show_card
BC@LL76
F1_000095 equ $ ; IN [FUELSYS.BAS] IF MSG = "P" THEN GOSUB PASS_MODE
        movlw 80
        subwf msg,W
        set@page BC@LL78
        btfss STATUS,2
        goto BC@LL78
        f@call pass_mode
BC@LL78
over
F1_000097 equ $ ; IN [FUELSYS.BAS] RETURN
        return
gate_lock
F1_000100 equ $ ; IN [FUELSYS.BAS] FOR X = 0 TO 50
        clrf _X
FR@LB80
        movlw 51
        subwf _X,W
        set@page NX@LB81
        btfsc STATUS,0
        goto NX@LB81
F1_000101 equ $ ; IN [FUELSYS.BAS] MOTOR = 1
        bsf PORTA,0
F1_000102 equ $ ; IN [FUELSYS.BAS] DELAYUS 800
        movlw 3
        movwf PP0H
        movlw 32
        f@call DLUS@W
F1_000103 equ $ ; IN [FUELSYS.BAS] MOTOR = 0
        bcf PORTA,0
F1_000104 equ $ ; IN [FUELSYS.BAS] DELAYUS 19200
        movlw 75
        movwf PP0H
        movlw 0
        f@call DLUS@W
CT@LB82
F1_000105 equ $ ; IN [FUELSYS.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB80
        btfss STATUS,0
        goto FR@LB80
NX@LB81
F1_000106 equ $ ; IN [FUELSYS.BAS] RETURN
        return
gate_open
F1_000109 equ $ ; IN [FUELSYS.BAS] FOR X = 0 TO 50
        clrf _X
FR@LB83
        movlw 51
        subwf _X,W
        set@page NX@LB84
        btfsc STATUS,0
        goto NX@LB84
F1_000110 equ $ ; IN [FUELSYS.BAS] MOTOR = 1
        bsf PORTA,0
F1_000111 equ $ ; IN [FUELSYS.BAS] DELAYUS 2000
        movlw 7
        movwf PP0H
        movlw 208
        f@call DLUS@W
F1_000112 equ $ ; IN [FUELSYS.BAS] MOTOR = 0
        bcf PORTA,0
F1_000113 equ $ ; IN [FUELSYS.BAS] DELAYUS 18000
        movlw 70
        movwf PP0H
        movlw 80
        f@call DLUS@W
CT@LB85
F1_000114 equ $ ; IN [FUELSYS.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB83
        btfss STATUS,0
        goto FR@LB83
NX@LB84
F1_000115 equ $ ; IN [FUELSYS.BAS] RETURN
        return
pass_mode
F1_000118 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000119 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"ENTER UR PASS:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
F1_000120 equ $ ; IN [FUELSYS.BAS] FOR X = 0 TO 7
        clrf _X
FR@LB86
        movlw 8
        subwf _X,W
        set@page NX@LB87
        btfsc STATUS,0
        goto NX@LB87
F1_000121 equ $ ; IN [FUELSYS.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000122 equ $ ; IN [FUELSYS.BAS] TEMP_PASS[X] = KEY_VALUE
        movf _X,W
        addlw temp_pass
        movwf FSR
        bsf STATUS,5
ram_bank = 1
        movf key_value,W
        movwf INDF
F1_000123 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,X+1, TEMP_PASS[X]
        movlw 128
        bcf STATUS,5
ram_bank = 0
        movwf BPFH
        movlw 2
        movwf GEN
        incf _X,W
        f@call CURSOR
        movf _X,W
        addlw temp_pass
        movwf FSR
        movf INDF,W
        f@call PRINT
CT@LB88
F1_000124 equ $ ; IN [FUELSYS.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB86
        btfss STATUS,0
        goto FR@LB86
NX@LB87
F1_000125 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000126 equ $ ; IN [FUELSYS.BAS] FOR Y = 0 TO 4
        clrf _Y
FR@LB89
        movlw 5
        subwf _Y,W
        set@page NX@LB90
        btfsc STATUS,0
        goto NX@LB90
F1_000127 equ $ ; IN [FUELSYS.BAS] FOR X = 0 TO 7
        clrf _X
FR@LB92
        movlw 8
        subwf _X,W
        set@page NX@LB93
        btfsc STATUS,0
        goto NX@LB93
F1_000128 equ $ ; IN [FUELSYS.BAS] IF Y = 0 AND PASS_1[X] != TEMP_PASS[X] THEN BREAK
        movlw 1
        movf _Y,F
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf _X,W
        addlw pass_1
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf _X,W
        addlw temp_pass
        movwf FSR
        movf INDF,W
        movwf PBP#VAR1
        movf PBP#VAR0,W
        subwf PBP#VAR1,W
        btfss STATUS,2
        movlw 1
        andwf SP#P9,F
        set@page BC@LL95
        btfsc STATUS,2
        goto BC@LL95
        F@JUMP NX@LB93
BC@LL95
F1_000129 equ $ ; IN [FUELSYS.BAS] IF Y = 1 AND PASS_2[X] != TEMP_PASS[X] THEN BREAK
        movlw 1
        subwf _Y,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf _X,W
        addlw pass_2
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf _X,W
        addlw temp_pass
        movwf FSR
        movf INDF,W
        movwf PBP#VAR1
        movf PBP#VAR0,W
        subwf PBP#VAR1,W
        btfss STATUS,2
        movlw 1
        andwf SP#P9,F
        set@page BC@LL97
        btfsc STATUS,2
        goto BC@LL97
        F@JUMP NX@LB93
BC@LL97
F1_000130 equ $ ; IN [FUELSYS.BAS] IF Y = 2 AND PASS_3[X] != TEMP_PASS[X] THEN BREAK
        movlw 2
        subwf _Y,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf _X,W
        addlw pass_3
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf _X,W
        addlw temp_pass
        movwf FSR
        movf INDF,W
        movwf PBP#VAR1
        movf PBP#VAR0,W
        subwf PBP#VAR1,W
        btfss STATUS,2
        movlw 1
        andwf SP#P9,F
        set@page BC@LL99
        btfsc STATUS,2
        goto BC@LL99
        F@JUMP NX@LB93
BC@LL99
F1_000131 equ $ ; IN [FUELSYS.BAS] IF Y = 3 AND PASS_4[X] != TEMP_PASS[X] THEN BREAK
        movlw 3
        subwf _Y,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf _X,W
        addlw pass_4
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf _X,W
        addlw temp_pass
        movwf FSR
        movf INDF,W
        movwf PBP#VAR1
        movf PBP#VAR0,W
        subwf PBP#VAR1,W
        btfss STATUS,2
        movlw 1
        andwf SP#P9,F
        set@page BC@LL101
        btfsc STATUS,2
        goto BC@LL101
        F@JUMP NX@LB93
BC@LL101
F1_000132 equ $ ; IN [FUELSYS.BAS] IF Y = 4 AND PASS_5[X] != TEMP_PASS[X] THEN BREAK
        movlw 4
        subwf _Y,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf _X,W
        addlw pass_5
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf _X,W
        addlw temp_pass
        movwf FSR
        movf INDF,W
        movwf PBP#VAR1
        movf PBP#VAR0,W
        subwf PBP#VAR1,W
        btfss STATUS,2
        movlw 1
        andwf SP#P9,F
        set@page BC@LL103
        btfsc STATUS,2
        goto BC@LL103
        F@JUMP NX@LB93
BC@LL103
F1_000133 equ $ ; IN [FUELSYS.BAS] IF X < 7 THEN CONTINUE
        movlw 7
        subwf _X,W
        set@page BC@LL105
        btfsc STATUS,0
        goto BC@LL105
        F@JUMP CT@LB94
BC@LL105
F1_000134 equ $ ; IN [FUELSYS.BAS] IF Y = 0 THEN ID_NO = 1
        movf _Y,F
        set@page BC@LL107
        btfss STATUS,2
        goto BC@LL107
        movlw 1
        movwf ID_no
BC@LL107
F1_000135 equ $ ; IN [FUELSYS.BAS] IF Y = 1 THEN ID_NO = 2
        movlw 1
        subwf _Y,W
        set@page BC@LL109
        btfss STATUS,2
        goto BC@LL109
        movlw 2
        movwf ID_no
BC@LL109
F1_000136 equ $ ; IN [FUELSYS.BAS] IF Y = 2 THEN ID_NO = 3
        movlw 2
        subwf _Y,W
        set@page BC@LL111
        btfss STATUS,2
        goto BC@LL111
        movlw 3
        movwf ID_no
BC@LL111
F1_000137 equ $ ; IN [FUELSYS.BAS] IF Y = 3 THEN ID_NO = 4
        movlw 3
        subwf _Y,W
        set@page BC@LL113
        btfss STATUS,2
        goto BC@LL113
        movlw 4
        movwf ID_no
BC@LL113
F1_000138 equ $ ; IN [FUELSYS.BAS] IF Y = 4 THEN ID_NO = 5
        movlw 4
        subwf _Y,W
        set@page BC@LL115
        btfss STATUS,2
        goto BC@LL115
        movlw 5
        movwf ID_no
BC@LL115
F1_000139 equ $ ; IN [FUELSYS.BAS] IF MSG = "H" AND ID_NO != TMP_ID THEN BREAK
        movlw 72
        subwf msg,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf ID_no,W
        subwf tmp_ID,W
        btfss STATUS,2
        movlw 1
        andwf SP#P9,F
        set@page BC@LL117
        btfsc STATUS,2
        goto BC@LL117
        F@JUMP NX@LB93
BC@LL117
F1_000140 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1, "MATCHED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
F1_000141 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1, "ID NO: ", DEC2 ID_NO
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB7)
        movwf GEN4H
        movlw low (STR@LB7)
        f@call C@STROUT
        movlw 2
        movwf GEN4H
        movf ID_no,W
        f@call OUT@DECC
F1_000142 equ $ ; IN [FUELSYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000143 equ $ ; IN [FUELSYS.BAS] GOSUB SELECT_OPTION
        f@call select_option
CT@LB94
F1_000144 equ $ ; IN [FUELSYS.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB92
        btfss STATUS,0
        goto FR@LB92
NX@LB93
CT@LB91
F1_000145 equ $ ; IN [FUELSYS.BAS] NEXT
        movlw 1
        addwf _Y,F
        set@page FR@LB89
        btfss STATUS,0
        goto FR@LB89
NX@LB90
F1_000146 equ $ ; IN [FUELSYS.BAS] ID_NO = 0
        clrf ID_no
F1_000147 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1, "NO MATCH FOUND."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB8)
        movwf GEN4H
        movlw low (STR@LB8)
        f@call C@STROUT
F1_000148 equ $ ; IN [FUELSYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000149 equ $ ; IN [FUELSYS.BAS] GOTO DEFAULT
        F@JUMP default
F1_000150 equ $ ; IN [FUELSYS.BAS] RETURN
        return
Show_card
F1_000153 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000154 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"WAITING FOR A"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB9)
        movwf GEN4H
        movlw low (STR@LB9)
        f@call C@STROUT
F1_000155 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1,"REGISTERED CARD."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB10)
        movwf GEN4H
        movlw low (STR@LB10)
        f@call C@STROUT
F1_000156 equ $ ; IN [FUELSYS.BAS] HSERIN[WAIT("ID"), STR CARD_ID]
PB@LB119
        f@call HRSIN
        sublw 73
        set@page PB@LB119
        btfss STATUS,2
        goto PB@LB119
        f@call HRSIN
        sublw 68
        set@page PB@LB119
        btfss STATUS,2
        goto PB@LB119
        clrf PBP#VAR0
PB@LB122
        f@call HRSIN
        movf PBP#VAR0,W
        addlw Card_ID
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR0,F
        movf PBP#VAR0,W
        sublw 2
        set@page PB@LB122
        btfss STATUS,2
        goto PB@LB122
F1_000157 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000158 equ $ ; IN [FUELSYS.BAS] IF CARD_ID[1] = "0" THEN
        movf Card_ID#1,W
        movwf PBP#VAR0
        movlw 48
        subwf PBP#VAR0,W
        set@page BC@LL123
        btfss STATUS,2
        goto BC@LL123
F1_000159 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1,"UNREGISTERED.."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB11)
        movwf GEN4H
        movlw low (STR@LB11)
        f@call C@STROUT
        F@JUMP BC@LL124
BC@LL123
F1_000160 equ $ ; IN [FUELSYS.BAS] ELSE
F1_000161 equ $ ; IN [FUELSYS.BAS] ID_NO = CARD_ID[1] - 48
        movf Card_ID#1,W
        movwf PBP#VAR0
        movlw 48
        subwf PBP#VAR0,W
        movwf ID_no
F1_000162 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1,"CARD ID NO: ", DEC2 ID_NO, "  "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB12)
        movwf GEN4H
        movlw low (STR@LB12)
        f@call C@STROUT
        movlw 2
        movwf GEN4H
        movf ID_no,W
        f@call OUT@DECC
        movlw 32
        f@call PRINT
        f@call PRINT
F1_000163 equ $ ; IN [FUELSYS.BAS] TMP_ID = ID_NO
        movf ID_no,W
        movwf tmp_ID
F1_000164 equ $ ; IN [FUELSYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000165 equ $ ; IN [FUELSYS.BAS] IF MSG = "H" THEN GOSUB PASS_MODE
        movlw 72
        subwf msg,W
        set@page BC@LL126
        btfss STATUS,2
        goto BC@LL126
        f@call pass_mode
BC@LL126
F1_000166 equ $ ; IN [FUELSYS.BAS] GOSUB SELECT_OPTION
        f@call select_option
F1_000167 equ $ ; IN [FUELSYS.BAS] ENDIF
BC@LL124
F1_000168 equ $ ; IN [FUELSYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000169 equ $ ; IN [FUELSYS.BAS] GOTO DEFAULT
        F@JUMP default
F1_000170 equ $ ; IN [FUELSYS.BAS] RETURN
        return
select_option
F1_000173 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000174 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"A: FILL FUEL"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB13)
        movwf GEN4H
        movlw low (STR@LB13)
        f@call C@STROUT
F1_000175 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1,"B:+20TK C: BLNC"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB14)
        movwf GEN4H
        movlw low (STR@LB14)
        f@call C@STROUT
F1_000177 equ $ ; IN [FUELSYS.BAS] WHILE 1 = 1
BC@LL127
F1_000178 equ $ ; IN [FUELSYS.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000179 equ $ ; IN [FUELSYS.BAS] IF KEY_VALUE = "A" THEN GOSUB FUEL_FILL
        movlw 65
        bsf STATUS,5
ram_bank = 1
        subwf key_value,W
        set@page BC@LL130
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL130
        f@call fuel_fill
BC@LL130
F1_000180 equ $ ; IN [FUELSYS.BAS] IF KEY_VALUE = "B" THEN GOSUB RECHRG
        movlw 66
        bsf STATUS,5
ram_bank = 1
        subwf key_value,W
        set@page BC@LL132
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL132
        f@call Rechrg
BC@LL132
F1_000181 equ $ ; IN [FUELSYS.BAS] IF KEY_VALUE = "C" THEN GOSUB SHOW_BLNC
        movlw 67
        bsf STATUS,5
ram_bank = 1
        subwf key_value,W
        set@page BC@LL134
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL134
        f@call show_blnc
BC@LL134
F1_000182 equ $ ; IN [FUELSYS.BAS] IF KEY_VALUE = "D" THEN GOTO DEFAULT
        movlw 68
        bsf STATUS,5
ram_bank = 1
        subwf key_value,W
        set@page BC@LL136
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL136
        F@JUMP default
BC@LL136
F1_000183 equ $ ; IN [FUELSYS.BAS] WEND
        F@JUMP BC@LL127
BC@LL128
Rechrg
F1_000186 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000187 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1, "RECHARGE UR CARD"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB15)
        movwf GEN4H
        movlw low (STR@LB15)
        f@call C@STROUT
F1_000188 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1, "A:CONFIRM B:BACK"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB16)
        movwf GEN4H
        movlw low (STR@LB16)
        f@call C@STROUT
F1_000189 equ $ ; IN [FUELSYS.BAS] WHILE 1 = 1
BC@LL137
F1_000190 equ $ ; IN [FUELSYS.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000191 equ $ ; IN [FUELSYS.BAS] IF KEY_VALUE = "A" THEN
        movlw 65
        bsf STATUS,5
ram_bank = 1
        subwf key_value,W
        set@page BC@LL140
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL140
F1_000192 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1, "RECHARGING......"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB17)
        movwf GEN4H
        movlw low (STR@LB17)
        f@call C@STROUT
again_2
F1_000194 equ $ ; IN [FUELSYS.BAS] HSEROUT["R"]
        movlw 82
        f@call HRSOUT
F1_000195 equ $ ; IN [FUELSYS.BAS] HSERIN 1000, AGAIN_2,[WAIT("I")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB142
        f@call HRSIN2
        set@page again_2
        btfss STATUS,0
        goto again_2
        sublw 73
        set@page PB@LB142
        btfss STATUS,2
        goto PB@LB142
F1_000196 equ $ ; IN [FUELSYS.BAS] HSEROUT[DEC ID_NO]
        movlw 4
        movwf BPFH
        movf ID_no,W
        f@call OUT@DECB
F1_000197 equ $ ; IN [FUELSYS.BAS] HSERIN 1000, AGAIN_2,[WAIT("K")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB143
        f@call HRSIN2
        set@page again_2
        btfss STATUS,0
        goto again_2
        sublw 75
        set@page PB@LB143
        btfss STATUS,2
        goto PB@LB143
F1_000198 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1, "SENDING SMS....."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB18)
        movwf GEN4H
        movlw low (STR@LB18)
        f@call C@STROUT
F1_000199 equ $ ; IN [FUELSYS.BAS] DELAYMS 4000
        movlw 15
        movwf PP1H
        movlw 160
        f@call DLY@W
F1_000200 equ $ ; IN [FUELSYS.BAS] GOTO DEFAULT
        F@JUMP default
F1_000201 equ $ ; IN [FUELSYS.BAS] ENDIF
BC@LL140
F1_000202 equ $ ; IN [FUELSYS.BAS] IF KEY_VALUE = "B" THEN GOTO DEFAULT
        movlw 66
        bsf STATUS,5
ram_bank = 1
        subwf key_value,W
        set@page BC@LL144
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL144
        F@JUMP default
BC@LL144
F1_000203 equ $ ; IN [FUELSYS.BAS] WEND
        F@JUMP BC@LL137
BC@LL138
F1_000204 equ $ ; IN [FUELSYS.BAS] RETURN
        return
show_blnc
F1_000207 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000208 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1, "YOUR BALANCE"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB19)
        movwf GEN4H
        movlw low (STR@LB19)
        f@call C@STROUT
again_1
F1_000210 equ $ ; IN [FUELSYS.BAS] HSEROUT[DEC ID_NO]
        movlw 4
        movwf BPFH
        movf ID_no,W
        f@call OUT@DECB
F1_000211 equ $ ; IN [FUELSYS.BAS] HSERIN 1000, AGAIN_1,[WAIT("M"), DEC BILL]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB146
        f@call HRSIN2
        set@page again_1
        btfss STATUS,0
        goto again_1
        sublw 77
        set@page PB@LB146
        btfss STATUS,2
        goto PB@LB146
        clrf RPFH
        clrf GEN4H
        f@call IN@DEC32
        set@page again_1
        btfss STATUS,0
        goto again_1
        movwf bill
F1_000212 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1, "=", DEC BILL, " TK"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 61
        f@call PRINT
        movf bill,W
        f@call OUT@DECB
        movlw 32
        f@call PRINT
        movlw 84
        f@call PRINT
        movlw 75
        f@call PRINT
F1_000213 equ $ ; IN [FUELSYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000214 equ $ ; IN [FUELSYS.BAS] GOTO DEFAULT
        F@JUMP default
fuel_fill
F1_000217 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000218 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"ENTER QUANTITY:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB20)
        movwf GEN4H
        movlw low (STR@LB20)
        f@call C@STROUT
F1_000219 equ $ ; IN [FUELSYS.BAS] FOR X = 0 TO 1
        clrf _X
FR@LB147
        movlw 2
        subwf _X,W
        set@page NX@LB148
        btfsc STATUS,0
        goto NX@LB148
F1_000220 equ $ ; IN [FUELSYS.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000221 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,X+1, KEY_VALUE, " LITRE"
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        incf _X,W
        f@call CURSOR
        bsf STATUS,5
ram_bank = 1
        movf key_value,W
        bcf STATUS,5
ram_bank = 0
        f@call PRINT
        movlw high (STR@LB21)
        movwf GEN4H
        movlw low (STR@LB21)
        f@call C@STROUT
F1_000222 equ $ ; IN [FUELSYS.BAS] IF KEY_VALUE >= "0" AND KEY_VALUE <= "9" THEN
        movlw 48
        bsf STATUS,5
ram_bank = 1
        subwf key_value,W
        movlw 0
        btfsc STATUS,0
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf SP#P9
        bsf STATUS,5
ram_bank = 1
        movf key_value,W
        bcf STATUS,5
ram_bank = 0
        movwf PP0
        movlw 57
        f@call T@LEB
        andwf SP#P9,F
        set@page BC@LL150
        btfsc STATUS,2
        goto BC@LL150
F1_000223 equ $ ; IN [FUELSYS.BAS] OIL[X] = KEY_VALUE - 48
        movlw 48
        bsf STATUS,5
ram_bank = 1
        subwf key_value,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf _X,W
        addlw oil
        movwf FSR
        movf PBP#VAR0,W
        movwf INDF
        F@JUMP BC@LL151
BC@LL150
F1_000224 equ $ ; IN [FUELSYS.BAS] ELSE
F1_000225 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1, "ERROR....!!"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB22)
        movwf GEN4H
        movlw low (STR@LB22)
        f@call C@STROUT
F1_000226 equ $ ; IN [FUELSYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000227 equ $ ; IN [FUELSYS.BAS] GOTO DEFAULT
        F@JUMP default
F1_000228 equ $ ; IN [FUELSYS.BAS] ENDIF
BC@LL151
CT@LB149
F1_000229 equ $ ; IN [FUELSYS.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB147
        btfss STATUS,0
        goto FR@LB147
NX@LB148
F1_000230 equ $ ; IN [FUELSYS.BAS] OIL_Q = (OIL[0] * 10) + OIL[1]
        movf oil#0,W
        movwf PBP#VAR0
        clrf PP3H
        movf PBP#VAR0,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        f@call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf oil#1,W
        movwf PBP#VAR1
        movf PBP#VAR1,W
        addwf PP7,W
        movwf oil_q
F1_000231 equ $ ; IN [FUELSYS.BAS] COST = OIL_Q * 10
        clrf PP3H
        movf oil_q,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        f@call M@PY
        movwf cost
        movf PP2H,W
        movwf costH
F1_000232 equ $ ; IN [FUELSYS.BAS] IF COST > 255 THEN
        movlw 1
        subwf costH,W
        set@page BC@LL153
        btfss STATUS,0
        goto BC@LL153
F1_000233 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"OVERFLOWED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB23)
        movwf GEN4H
        movlw low (STR@LB23)
        f@call C@STROUT
F1_000234 equ $ ; IN [FUELSYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000235 equ $ ; IN [FUELSYS.BAS] GOTO DEFAULT
        F@JUMP default
F1_000236 equ $ ; IN [FUELSYS.BAS] ENDIF
BC@LL153
F1_000237 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000238 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"BILL: ", DEC COST, "TK"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB24)
        movwf GEN4H
        movlw low (STR@LB24)
        f@call C@STROUT
        clrf GEN4H
        movf costH,W
        movwf PP2H
        movf cost,W
        movwf PP2
        f@call OUT@DEC
        movlw 84
        f@call PRINT
        movlw 75
        f@call PRINT
F1_000239 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1, "A:CONFIRM B:BACK"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB25)
        movwf GEN4H
        movlw low (STR@LB25)
        f@call C@STROUT
F1_000241 equ $ ; IN [FUELSYS.BAS] WHILE 1 = 1
BC@LL154
F1_000242 equ $ ; IN [FUELSYS.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000243 equ $ ; IN [FUELSYS.BAS] IF KEY_VALUE = "A" THEN GOSUB FILLNG
        movlw 65
        bsf STATUS,5
ram_bank = 1
        subwf key_value,W
        set@page BC@LL157
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL157
        f@call fillng
BC@LL157
F1_000244 equ $ ; IN [FUELSYS.BAS] IF KEY_VALUE = "B" THEN GOTO DEFAULT
        movlw 66
        bsf STATUS,5
ram_bank = 1
        subwf key_value,W
        set@page BC@LL159
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL159
        F@JUMP default
BC@LL159
F1_000245 equ $ ; IN [FUELSYS.BAS] WEND
        F@JUMP BC@LL154
BC@LL155
fillng
F1_000248 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000249 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"CHACKING BLNC..."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB26)
        movwf GEN4H
        movlw low (STR@LB26)
        f@call C@STROUT
again_3
F1_000251 equ $ ; IN [FUELSYS.BAS] HSEROUT[DEC ID_NO]
        movlw 4
        movwf BPFH
        movf ID_no,W
        f@call OUT@DECB
F1_000252 equ $ ; IN [FUELSYS.BAS] HSERIN 1000, AGAIN_3,[WAIT("M"), DEC BILL]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB161
        f@call HRSIN2
        set@page again_3
        btfss STATUS,0
        goto again_3
        sublw 77
        set@page PB@LB161
        btfss STATUS,2
        goto PB@LB161
        clrf RPFH
        clrf GEN4H
        f@call IN@DEC32
        set@page again_3
        btfss STATUS,0
        goto again_3
        movwf bill
F1_000253 equ $ ; IN [FUELSYS.BAS] IF COST > BILL THEN
        movf costH,F
        set@page CP@LB3
        btfss STATUS,2
        goto CP@LB3
        movf cost,W
        subwf bill,W
        set@page BC@LL162
        btfsc STATUS,0
        goto BC@LL162
CP@LB3
F1_000254 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"BALANCE IS LOW."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB27)
        movwf GEN4H
        movlw low (STR@LB27)
        f@call C@STROUT
F1_000255 equ $ ; IN [FUELSYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000256 equ $ ; IN [FUELSYS.BAS] GOTO DEFAULT
        F@JUMP default
        F@JUMP BC@LL163
BC@LL162
F1_000257 equ $ ; IN [FUELSYS.BAS] ELSE
again_4
F1_000259 equ $ ; IN [FUELSYS.BAS] HSEROUT["U"]
        movlw 85
        f@call HRSOUT
F1_000260 equ $ ; IN [FUELSYS.BAS] HSERIN 1000, AGAIN_4,[WAIT("B")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB165
        f@call HRSIN2
        set@page again_4
        btfss STATUS,0
        goto again_4
        sublw 66
        set@page PB@LB165
        btfss STATUS,2
        goto PB@LB165
F1_000261 equ $ ; IN [FUELSYS.BAS] HSEROUT[DEC ID_NO]
        movlw 4
        movwf BPFH
        movf ID_no,W
        f@call OUT@DECB
F1_000262 equ $ ; IN [FUELSYS.BAS] HSEROUT[DEC OIL[0]]
        movlw 4
        movwf BPFH
        movf oil#0,W
        f@call OUT@DECB
F1_000263 equ $ ; IN [FUELSYS.BAS] HSEROUT[DEC OIL[1]]
        movlw 4
        movwf BPFH
        movf oil#1,W
        f@call OUT@DECB
F1_000264 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"BALANCE UPDATED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB28)
        movwf GEN4H
        movlw low (STR@LB28)
        f@call C@STROUT
F1_000265 equ $ ; IN [FUELSYS.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000266 equ $ ; IN [FUELSYS.BAS] ENDIF
BC@LL163
F1_000267 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000268 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"FILLNG FUEL..."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB29)
        movwf GEN4H
        movlw low (STR@LB29)
        f@call C@STROUT
F1_000269 equ $ ; IN [FUELSYS.BAS] FOR Y = 0 TO OIL_Q
        clrf _Y
FR@LB166
        movf _Y,W
        subwf oil_q,W
        set@page NX@LB167
        btfss STATUS,0
        goto NX@LB167
F1_000270 equ $ ; IN [FUELSYS.BAS] FOR X = 0 TO 4
        clrf _X
FR@LB169
        movlw 5
        subwf _X,W
        set@page NX@LB170
        btfsc STATUS,0
        goto NX@LB170
F1_000271 equ $ ; IN [FUELSYS.BAS] PUMP = 1
        bsf PORTA,5
F1_000272 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"REMAINING:", DEC OIL_Q - Y, " L. "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB30)
        movwf GEN4H
        movlw low (STR@LB30)
        f@call C@STROUT
        clrf GEN4H
        movf _Y,W
        subwf oil_q,W
        movwf PP2
        clrf PP2H
        btfss STATUS,0
        decf PP2H,F
        f@call OUT@DEC
        movlw 32
        f@call PRINT
        movlw 76
        f@call PRINT
        movlw 46
        f@call PRINT
        movlw 32
        f@call PRINT
F1_000273 equ $ ; IN [FUELSYS.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
CT@LB171
F1_000274 equ $ ; IN [FUELSYS.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB169
        btfss STATUS,0
        goto FR@LB169
NX@LB170
CT@LB168
F1_000275 equ $ ; IN [FUELSYS.BAS] NEXT
        movlw 1
        addwf _Y,F
        set@page FR@LB166
        btfss STATUS,0
        goto FR@LB166
NX@LB167
F1_000276 equ $ ; IN [FUELSYS.BAS] PUMP = 0
        bcf PORTA,5
F1_000277 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1,"DONE. THANKS."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB31)
        movwf GEN4H
        movlw low (STR@LB31)
        f@call C@STROUT
F1_000278 equ $ ; IN [FUELSYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
default
F1_000281 equ $ ; IN [FUELSYS.BAS] CLS
        f@call LCD@CLS
F1_000282 equ $ ; IN [FUELSYS.BAS] PRINT AT 1,1,"A: CARD B: PASWD"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB32)
        movwf GEN4H
        movlw low (STR@LB32)
        f@call C@STROUT
F1_000283 equ $ ; IN [FUELSYS.BAS] PRINT AT 2,1,"C: CARD + PASWD "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB33)
        movwf GEN4H
        movlw low (STR@LB33)
        f@call C@STROUT
F1_000284 equ $ ; IN [FUELSYS.BAS] ID_NO = 0
        clrf ID_no
F1_000285 equ $ ; IN [FUELSYS.BAS] GOTO MAIN
        F@JUMP main
F1_EOF equ $ ; FUELSYS.BAS
PB@LB172
        F@JUMP PB@LB172
STR@LB1
        de 70,117,101,108,32,76,101,118,101,108,58,32,72,73,71,72,0
STR@LB2
STR@LB4
STR@LB18
        de 83,101,110,100,105,110,103,32,83,77,83,46,46,46,46,46,0
STR@LB3
        de 70,117,101,108,32,76,101,118,101,108,58,32,76,79,87,0
STR@LB5
        de 69,110,116,101,114,32,117,114,32,112,97,115,115,58,0
STR@LB6
        de 77,97,116,99,104,101,100,46,0
STR@LB7
        de 73,68,32,78,111,58,32,0
STR@LB8
        de 78,111,32,77,97,116,99,104,32,70,111,117,110,100,46,0
STR@LB9
        de 87,97,105,116,105,110,103,32,102,111,114,32,97,0
STR@LB10
        de 114,101,103,105,115,116,101,114,101,100,32,99,97,114,100,46,0
STR@LB11
        de 85,110,114,101,103,105,115,116,101,114,101,100,46,46,0
STR@LB12
        de 67,97,114,100,32,73,68,32,110,111,58,32,0
STR@LB13
        de 65,58,32,70,105,108,108,32,70,117,101,108,0
STR@LB14
        de 66,58,43,50,48,84,75,32,67,58,32,66,108,110,99,0
STR@LB15
        de 82,101,99,104,97,114,103,101,32,117,114,32,99,97,114,100,0
STR@LB16
STR@LB25
        de 65,58,67,111,110,102,105,114,109,32,66,58,66,97,99,107,0
STR@LB17
        de 82,101,99,104,97,114,103,105,110,103,46,46,46,46,46,46,0
STR@LB19
        de 89,111,117,114,32,98,97,108,97,110,99,101,0
STR@LB20
        de 69,110,116,101,114,32,113,117,97,110,116,105,116,121,58,0
STR@LB21
        de 32,76,105,116,114,101,0
STR@LB22
        de 69,114,114,111,114,46,46,46,46,33,33,0
STR@LB23
        de 79,118,101,114,102,108,111,119,101,100,46,0
STR@LB24
        de 66,105,108,108,58,32,0
STR@LB26
        de 67,104,97,99,107,105,110,103,32,66,108,110,99,46,46,46,0
STR@LB27
        de 66,97,108,97,110,99,101,32,105,115,32,76,111,119,46,0
STR@LB28
        de 66,97,108,97,110,99,101,32,85,112,100,97,116,101,100,46,0
STR@LB29
        de 70,105,108,108,110,103,32,70,117,101,108,46,46,46,0
STR@LB30
        de 82,101,109,97,105,110,105,110,103,58,0
STR@LB31
        de 68,111,110,101,46,32,84,104,97,110,107,115,46,0
STR@LB32
        de 65,58,32,67,97,114,100,32,66,58,32,80,97,115,119,100,0
STR@LB33
        de 67,58,32,67,97,114,100,32,43,32,80,97,115,119,100,32,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
