;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 20
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4
Declare LCD_Lines 4
Declare Hserial_Baud = 9600     
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100100
Declare Hserial_Clear = On
ADCON1 = 7
Cls

Symbol IR_1 = PORTB.0
Symbol motor = PORTA.0
Symbol pump = PORTA.5
Symbol hi_level = PORTC.4
Symbol lo_level = PORTC.5
Input IR_1 : Input hi_level
Input lo_level
Output motor : Output pump

Dim msg As Byte
Dim x As Byte
Dim y As Byte
Dim oil[2] As Byte
Dim oil_q As Byte
Dim bill As Byte
Dim cost As Word
Dim ID_no As Byte
Dim tmp_ID As Byte
Dim Card_ID[2] As Byte
Dim pass_1[8] As Byte
Dim pass_2[8] As Byte
Dim pass_3[8] As Byte
Dim pass_4[8] As Byte
Dim pass_5[8] As Byte
Dim temp_pass[8] As Byte

pump = 0 : motor = 0
bill = 0 : oil_q = 0

'----------------------------
  Str pass_1 = "12341234"
  Str pass_2 = "ABCDABCD"
  Str pass_3 = "ABCD1234"
  Str pass_4 = "1234ABCD"
  Str pass_5 = "123A456B"
'----------------------------
Card_ID[1] = $ff

Include "keypad4x4.inc"

main:
  GoSub check_serial
  If IR_1 = 0 Then GoSub gate_open
  If IR_1 = 1 Then GoSub gate_lock
  If hi_level = 1 Then
    Cls
    HSerOut ["hhhh"]
    While hi_level = 1
      Print At 1,1,"Fuel Level: HIGH"
    Wend
    Print At 2,1, "Sending SMS....."
    DelayMS 4000
    GoTo default
  EndIf  
  If lo_level = 1 Then
    Cls
    HSerOut ["llll"]
    While lo_level = 1 
      Print At 1,1,"Fuel Level: LOW"
    Wend
    Print At 2,1, "Sending SMS....."
    DelayMS 4000
    GoTo default
  EndIf
Return
GoTo main
  
check_serial:
  HSerIn 500, over, [msg]
  If msg = "H" Then GoSub Show_card
  If msg = "S" Then GoSub Show_card
  If msg = "P" Then GoSub pass_mode
over:
Return 
    
gate_lock:
  For x = 0 To 50  '0 degree
     motor = 1
     DelayUS 800
     motor = 0
     DelayUS 19200
  Next
Return

gate_open:
  For x = 0 To 50  '180 degree
     motor = 1
     DelayUS 2000
     motor = 0
     DelayUS 18000
  Next
Return

pass_mode:
  Cls
  Print At 1,1,"Enter ur pass:"
  For x = 0 To 7
    GoSub capture_key   
    temp_pass[x] = key_value
    Print At 2,x+1, temp_pass[x]  
  Next
  Cls
  For y = 0 To 4
    For x = 0 To 7
      If y = 0 And pass_1[x] != temp_pass[x] Then Break
      If y = 1 And pass_2[x] != temp_pass[x] Then Break
      If y = 2 And pass_3[x] != temp_pass[x] Then Break
      If y = 3 And pass_4[x] != temp_pass[x] Then Break
      If y = 4 And pass_5[x] != temp_pass[x] Then Break
      If x < 7 Then Continue
      If y = 0 Then ID_no = 1
      If y = 1 Then ID_no = 2
      If y = 2 Then ID_no = 3
      If y = 3 Then ID_no = 4
      If y = 4 Then ID_no = 5
      If msg = "H" And ID_no != tmp_ID Then Break
      Print At 1,1, "Matched."
      Print At 2,1, "ID No: ", Dec2 ID_no
      DelayMS 2000
      GoSub select_option
    Next
  Next
  ID_no = 0
  Print At 1,1, "No Match Found." 
  DelayMS 2000
  GoTo default     
Return

Show_card:
  Cls
  Print At 1,1,"Waiting for a"
  Print At 2,1,"registered card."
  HSerIn [Wait("ID"), Str Card_ID]
  Cls
  If Card_ID[1] = "0" Then
    Print At 2,1,"Unregistered.."
  Else
    ID_no = Card_ID[1] - 48
    Print At 2,1,"Card ID no: ", Dec2 ID_no, "  "
    tmp_ID = ID_no
    DelayMS 2000
    If msg = "H" Then GoSub pass_mode
    GoSub select_option
  EndIf
  DelayMS 2000
  GoTo default
Return

select_option:
  Cls
  Print At 1,1,"A: Fill Fuel"
  Print At 2,1,"B:+20TK C: Blnc"
  
  While 1 = 1
    GoSub capture_key
    If key_value = "A" Then GoSub fuel_fill
    If key_value = "B" Then GoSub Rechrg
    If key_value = "C" Then GoSub show_blnc
    If key_value = "D" Then GoTo default
  Wend

Rechrg:
  Cls
  Print At 1,1, "Recharge ur card" 
  Print At 2,1, "A:Confirm B:Back"
  While 1 = 1  
    GoSub capture_key
    If key_value = "A" Then
      Print At 2,1, "Recharging......"
  again_2:
      HSerOut ["R"]
      HSerIn 1000, again_2, [Wait("I")]
      HSerOut [Dec ID_no]
      HSerIn 1000, again_2, [Wait("K")]
      Print At 2,1, "Sending SMS....."
      DelayMS 4000
      GoTo default
    EndIf
    If key_value = "B" Then GoTo default
  Wend
Return

show_blnc:
  Cls
  Print At 1,1, "Your balance"
again_1:
  HSerOut [Dec ID_no]
  HSerIn 1000, again_1, [Wait("M"), Dec bill]
  Print At 2,1, "=", Dec bill, " TK"
  DelayMS 2000
GoTo default

fuel_fill:
  Cls
  Print At 1,1,"Enter quantity:"
    For x = 0 To 1
      GoSub capture_key
      Print At 2,x+1, key_value, " Litre" 
      If key_value >= "0" And key_value <= "9" Then 
        oil[x] = key_value - 48  
      Else
        Print At 2,1, "Error....!!"
        DelayMS 2000
        GoTo default
      EndIf
    Next
  oil_q = (oil[0] * 10) + oil[1]
  cost = oil_q * 10
  If cost > 255 Then
    Print At 1,1,"Overflowed."
    DelayMS 2000
    GoTo default
  EndIf
  Cls
  Print At 1,1,"Bill: ", Dec cost, "TK"
  Print At 2,1, "A:Confirm B:Back"
  
  While 1 = 1
    GoSub capture_key
    If key_value = "A" Then GoSub fillng
    If key_value = "B" Then GoTo default
  Wend 
  
fillng:
  Cls
  Print At 1,1,"Chacking Blnc..."
again_3:
  HSerOut [Dec ID_no]
  HSerIn 1000, again_3, [Wait("M"), Dec bill]
  If cost > bill Then
    Print At 1,1,"Balance is Low."
    DelayMS 2000
    GoTo default
  Else
again_4:
    HSerOut ["U"]
    HSerIn 1000, again_4, [Wait("B")]
    HSerOut [Dec ID_no] 
    HSerOut [Dec oil[0]]
    HSerOut [Dec oil[1]]
    Print At 1,1,"Balance Updated."
    DelayMS 1000 
  EndIf  
  Cls      
  Print At 1,1,"Fillng Fuel..."
  For y = 0 To oil_q
    For x = 0 To 4
      pump = 1
      Print At 1,1,"Remaining:", Dec oil_q - y, " L. "
      DelayMS 1000
    Next
  Next
  pump = 0
  Print At 2,1,"Done. Thanks."
  DelayMS 2000

default:
  Cls
  Print At 1,1,"A: Card B: Paswd"
  Print At 2,1,"C: Card + Paswd "
  ID_no = 0
GoTo main

