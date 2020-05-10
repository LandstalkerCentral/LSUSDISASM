
; ASM FILE music15.asm :
; 0xDB74..0xDC96 : Music 15
Music06:        db 0
		db 0
		db 0
		db 0A8h
		dw Music06_Channel0
		dw Music06_Channel1
		dw Music06_Channel2
		dw Music06_Channel3
		dw Music06_Channel4
		dw Music06_Channel5
		dw Music06_Channel6
		dw Music06_Channel7
		dw Music06_Channel9
		dw Music06_Channel9
Music06_Channel0:
		  inst 26
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL Gs4,25
		        noteL F4,24
		        waitL 9
		  vol 0Bh
		        noteL B5,8
		        note  Cs6
		        noteL F6,18
		        noteL Ds6,8
		        noteL D6,100
		        waitL 6
		channel_end
Music06_Channel1:
		  inst 26
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        waitL 9
		        noteL E5,8
		        note  F5
		        noteL Gs5,17
		        noteL G5,7
		        noteL Gs5,51
		  vol 0Ah
		        noteL G5,100
		        waitL 6
		channel_end
Music06_Channel2:
		  inst 26
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL D5,49
		        noteL Ds5,25
		        noteL B4,26
		        waitL 24
		  inst 63
		  vol 07h
		  setRelease 01h
		        noteL G5,10
		        noteL C5,3
		        note  C5
		        noteL C5,4
		        noteL C5,3
		        noteL C5,4
		        note  C5
		        noteL G5,8
		        noteL C4,5
		        note  C4
		        noteL C4,6
		        noteL C5,9
		        noteL G4,6
		        noteL G4,5
		        noteL G4,6
		        waitL 1
		channel_end
Music06_Channel3:
		  inst 26
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL As3,49
		        noteL Cs4,51
		        noteL Ds4,100
		        waitL 6
		channel_end
Music06_Channel4:
		        waitL 100
		        waitL 34
		  inst 63
		  vol 06h
		  setRelease 01h
		  vibrato 00h
		        noteL A5,2
		        note  A5
		        note  A5
		        noteL C6,3
		        note  C6
		        note  C6
		        note  C6
		        noteL F5,4
		        note  F5
		        noteL F5,2
		        note  A5
		        note  A5
		        note  A5
		        note  C6
		        noteL C6,3
		        noteL C6,2
		        noteL C6,3
		        noteL C6,4
		        noteL A5,2
		        note  A5
		        note  F5
		        noteL F5,3
		        noteL F5,2
		        note  D5
		        note  A5
		        noteL A5,3
		        noteL A5,4
		        waitL 2
		channel_end
Music06_Channel5:
		channel_end
Music06_Channel6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    117
		  psgInst 02Ah
		        psgNoteL G5,6
		        psgNoteL Ds5,5
		        psgNoteL D5,4
		        psgNote  As4
		        psgNoteL G4,3
		        psgNote  Ds4
		        psgNote  D4
		        psgNote  As3
		        psgNote  G3
		        psgNote  Ds3
		        psgNote  D3
		        psgNote  As2
		        psgNote  G2
		        psgNoteL Ds2,36
		  psgInst 00h
		        waitL    7
		channel_end
Music06_Channel7:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    120
		  psgInst 028h
		        psgNoteL G5,6
		        psgNoteL Ds5,5
		        psgNoteL D5,4
		        psgNote  As4
		        psgNoteL G4,3
		        psgNote  Ds4
		        psgNote  D4
		        psgNote  As3
		        psgNote  G3
		        psgNote  Ds3
		        psgNote  D3
		        psgNote  As2
		        psgNote  G2
		        psgNoteL Ds2,36
		  psgInst 00h
		        waitL    4
		channel_end
Music06_Channel9:
		channel_end
