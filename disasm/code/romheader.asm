
; ASM FILE code\romheader.asm :
; 0x0..0x200 : ROM header
initStack:      ; File Name   : C:\SEGADEV\IDB\LANDSTALKER\Landstalker (USA).bin
; Format      : Binary file
; Base Address: 0000h Range: 0000h - 200000h Loaded length: 200000h
                dc.l 0                  ; Initial Stack
startAddress:   dc.l Start              ; Start Address
                dc.l Int_OtherError     ; Bus Error
                dc.l Int_AddressError   ; Address Error
                dc.l Int_IllegalInstruction ; Illegal instruction
                dc.l Int_ZeroDivide     ; Zero Divide
                dc.l Int_OtherError     ; CHK instruction
                dc.l Int_OtherError     ; TRAPV instruction
                dc.l Int_OtherError     ; Privilege Violation
                dc.l Int_OtherError     ; Trace
                dc.l Int_OtherError     ; Line 1010 Emulator
                dc.l Int_OtherError     ; Line 1111 Emulator
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Unitialized Interrrupt
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Spurious Interrupt
                dc.l EInt               ; Level 1 interrupt
                dc.l EInt               ; Level 2/External  interrupt
                dc.l EInt               ; Level 3 interrupt
                dc.l HInt               ; Level 4/Horizontal interrupt
                dc.l EInt               ; Level 5 interrupt
                dc.l VInt               ; Level 6/Vertical interrupt
                dc.l IntLvl7            ; Level 7 interrupt
                dc.l Trap0_SoundCommand ; Trap
                dc.l Trap1_             ; Trap
                dc.l Trap2_             ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l EInt               ; Trap
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
                dc.l Int_OtherError     ; Reserved
aSegaGenesis:   dc.b 'SEGA GENESIS    '
aCSega1993_jul: dc.b '(C)SEGA 1993.JUL'
aLandstalker:   dc.b 'Landstalker     '
                dc.b '                '
asc_140:        dc.b '                '
aLandstalker_0: dc.b 'Landstalker     '
                dc.b '                '
                dc.b '                '
aGmMk13530:     dc.b 'GM MK-1353 -0'    ; Serial Number
                dc.b $30
CheckSum:       dc.w $F37C
aJ:             dc.b 'J               '
RomStartAdr:    dc.l 0                  ; Rom Start Adress
RomEndAdr:      declareRomEnd            ; Rom End Adress
RamStartAdr:    dc.l $FF0000            ; Ram Start Adress
RamEndAdr:      dc.l $FFFFFF            ; Ram End Adress
                dc.l $5241F820          ; SRam data
                dc.l $200001
                dc.l $203FFF
                dc.b '            '     ; Modem data
                dc.b '                    ' ; Memo
                dc.b '                    '
Country:        dc.b 'U               ' ; Countries codes
