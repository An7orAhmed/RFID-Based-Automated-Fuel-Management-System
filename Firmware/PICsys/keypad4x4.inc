'****************************************************************
'*  Name    : keypad.inc                                        *
'*  Author  : Antor Ahmed                                       *
'*  Notice  : Copyright (c) 2016 Antor Ahmed                    *
'*          : All Rights Reserved                               *
'*  Date    : 27-Aug-16                                         *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************

checking:
Symbol col_1 = PORTC.3
Symbol col_2 = PORTC.2
Symbol col_3 = PORTC.1
Symbol col_4 = PORTC.0
Symbol row_1 = PORTA.4
Symbol row_2 = PORTA.3
Symbol row_3 = PORTA.2
Symbol row_4 = PORTA.1

Input row_1 : Input row_2 : Input row_3 : Input row_4
Output col_1 : Output col_2 : Output col_3 : Output col_4
Dim key As Byte : key = 0
Dim key_value As Byte

GoSub default

capture_key:
key_value = 0 : key = 0
Repeat
  col_1 = 1 : col_2 = 0 : col_3 = 0 : col_4 = 0
  DelayMS 1
   If row_1 = 1 Then 
     key = 1 : GoSub get_code
   ElseIf row_2 = 1 Then 
     key = 2 : GoSub get_code
   ElseIf row_3 = 1 Then 
     key = 3 : GoSub get_code
   ElseIf row_4 = 1 Then 
     key = 4 : GoSub get_code
   EndIf
  col_1 = 0 : col_2 = 1 : col_3 = 0 : col_4 = 0
  DelayMS 1
   If row_1 = 1 Then 
     key = 5 : GoSub get_code
   ElseIf row_2 = 1 Then 
     key = 6 : GoSub get_code
   ElseIf row_3 = 1 Then 
     key = 7 : GoSub get_code
   ElseIf row_4 = 1 Then 
     key = 8 : GoSub get_code
   EndIf
  col_1 = 0 : col_2 = 0 : col_3 = 1 : col_4 = 0
  DelayMS 1
   If row_1 = 1 Then 
     key = 9 : GoSub get_code
   ElseIf row_2 = 1 Then 
     key = 10 : GoSub get_code
   ElseIf row_3 = 1 Then 
     key = 11 : GoSub get_code
   ElseIf row_4 = 1 Then 
     key = 12 : GoSub get_code
   EndIf
  col_1 = 0 : col_2 = 0 : col_3 = 0 : col_4 = 1
  DelayMS 1
   If row_1 = 1 Then 
     key = 13 : GoSub get_code
   ElseIf row_2 = 1 Then 
     key = 14 : GoSub get_code
   ElseIf row_3 = 1 Then 
     key = 15 : GoSub get_code
   ElseIf row_4 = 1 Then 
     key = 16 : GoSub get_code
   EndIf
Until key != 0
Return

get_code:
   Select key
     Case 0 : key_value = 0 : Return
     Case 1 : key_value = "1" : DelayMS 500
     Case 2 : key_value = "2" : DelayMS 500
     Case 3 : key_value = "3" : DelayMS 500
     Case 4 : key_value = "A" : DelayMS 500
     Case 5 : key_value = "4" : DelayMS 500
     Case 6 : key_value = "5" : DelayMS 500
     Case 7 : key_value = "6" : DelayMS 500
     Case 8 : key_value = "B" : DelayMS 500
     Case 9 : key_value = "7" : DelayMS 500
     Case 10 : key_value = "8" : DelayMS 500
     Case 11 : key_value = "9" : DelayMS 500
     Case 12 : key_value = "C" : DelayMS 500
     Case 13 : key_value = "*" : DelayMS 500
     Case 14 : key_value = "0" : DelayMS 500
     Case 15 : key_value = "#" : DelayMS 500
     Case 16 : key_value = "D" : DelayMS 500
     Case Else : key_value = 0 : Return
   EndSelect
Return


