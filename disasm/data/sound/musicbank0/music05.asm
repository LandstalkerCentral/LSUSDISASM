
; ASM FILE music05.asm :
; 0x937C..0x99AD : Music 05
Music_5:        db 0
		db 0
		db 0
		db 0CAh
		dw Music_5_Channel_0
		dw Music_5_Channel_1
		dw Music_5_Channel_2
		dw Music_5_Channel_3
		dw Music_5_Channel_4
		dw Music_5_Channel_5
		dw Music_5_Channel_6
		dw Music_5_Channel_7
		dw Music_5_Channel_9
		dw Music_5_Channel_9
Music_5_Channel_0:
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		  inst 26
		  vol 0Ch
		        noteL G5,48
		        noteL C6,72
		        noteL B5,12
		        note  A5
		        note  B5
		        note  C6
		        note  D6
		        wait
		        noteL G5,144
		        waitL 24
		        note  E6
		        noteL F6,12
		        note  E6
		        note  F6
		        note  A6
		        noteL As5,72
		        noteL B5,24
		        note  G6
		        note  F6
		        noteL Ds6,48
		        note  E6
		        waitL 24
		        note  B6
		        note  C7
		        note  E6
		        noteL G6,36
		        noteL F6,12
		        noteL F6,48
		        waitL 24
		        note  B6
		        note  C7
		        note  Ds6
		        noteL F6,36
		        noteL E6,12
		        noteL E6,96
		        noteL A6,48
		        noteL C6,12
		        note  B5
		        note  C6
		        note  F6
		        noteL A5,72
		        noteL B5,12
		        note  C6
		        noteL E6,36
		        noteL D6,12
		        noteL G6,96
		        wait
		  inst 27
		  vol 0Ah
		        noteL G5,48
		        noteL C6,72
		        noteL B5,12
		        note  A5
		        note  B5
		        note  C6
		        note  D6
		        wait
		        noteL G5,48
		        noteL E6,72
		        noteL D6,12
		        note  Cs6
		        note  D6
		        note  E6
		        note  F6
		        wait
		  inst 16
		  vol 0Bh
		  shifting 084h
		  setRelease 05h
		        note  G6
		        note  G6
		        note  E6
		        note  E6
		        note  A6
		        note  A6
		        note  E6
		        note  E6
		        note  F6
		        note  F6
		        note  D6
		        note  D6
		        note  C6
		        note  C6
		        note  B5
		        note  B5
		        note  G6
		        note  G6
		        note  As6
		        note  As6
		        note  A6
		        note  A6
		        note  E6
		        note  E6
		        note  F6
		        note  F6
		        note  A6
		        note  A6
		        note  G6
		        note  G6
		        note  D6
		        note  D6
		  shifting 00h
		        waitL 120
		  inst 26
		  vol 0Bh
		  setRelease 01h
		        noteL B5,12
		        note  C6
		        noteL D6,30
		        waitL 138
		        noteL Cs6,12
		        note  D6
		        noteL E6,24
		  vol 0Ch
		        note  Gs6
		        note  A6
		        note  E6
		        noteL G6,36
		        noteL F6,12
		        noteL F6,60
		        waitL 12
		        noteL B6,24
		        note  C7
		        note  G6
		        noteL As6,36
		        noteL A6,12
		        noteL A6,60
		        waitL 12
		        noteL Cs6,24
		        note  D6
		        note  A5
		        noteL E6,36
		        noteL D6,12
		        noteL F6,18
		        waitL 6
		        noteL E6,24
		        noteL G6,36
		        noteL F6,12
		        noteL A6,18
		        waitL 6
		        noteL Gs6,24
		        noteL B6,36
		        noteL A6,12
		        noteL C7,36
		        waitL 12
		        noteL C6,36
		        noteL D6,12
		        noteL E6,60
		        waitL 12
		        note  E6
		        note  F6
		        noteL D6,60
		        waitL 12
		        note  G5
		        wait
		        noteL F6,60
		        waitL 12
		        note  F6
		        note  G6
		        noteL E6,60
		        waitL 12
		        note  C6
		        wait
		        noteL G6,60
		        waitL 12
		        note  G6
		        note  A6
		        noteL F6,24
		        waitL 12
		        note  C7
		        noteL C7,36
		        noteL F6,12
		        noteL E6,60
		        waitL 12
		        note  E6
		        note  E6
		        noteL F6,24
		        noteL E6,48
		        noteL D6,24
		mainLoopEnd
Music_5_Channel_1:
		mainLoopStart
		  inst 26
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL E5,24
		        note  C5
		        note  E5
		        note  C5
		        noteL D5,72
		        noteL C5,12
		        note  B4
		        noteL C5,24
		        note  G4
		        note  C5
		        noteL E5,48
		        note  D5
		        noteL Cs5,24
		        note  D5
		        note  A4
		        note  F5
		        note  D5
		        note  Cs5
		        noteL D5,48
		        note  B4
		        noteL G4,24
		        note  C5
		        note  G4
		        note  C5
		        note  E5
		        note  G5
		        noteL C5,48
		        noteL F5,24
		        note  C5
		        note  F5
		        note  C5
		        note  F5
		        note  C5
		        note  F5
		        note  C5
		        note  G5
		        note  C5
		        note  G5
		        note  C5
		        note  A5
		        note  E5
		        note  C5
		        wait
		  inst 3
		  vol 0Ah
		        noteL A4,12
		        wait
		        noteL D5,36
		        noteL C5,12
		        noteL F5,96
		        waitL 24
		        noteL B4,12
		        wait
		        noteL E5,36
		        noteL D5,12
		        noteL G5,96
		        waitL 48
		        note  E5
		        noteL F5,36
		        noteL E5,12
		        note  D5
		        wait
		        note  B4
		        wait
		        waitL 48
		        note  G5
		        noteL A5,36
		        noteL G5,12
		        note  F5
		        wait
		        note  A5
		        wait
		  inst 16
		  vol 0Bh
		  setRelease 05h
		  shifting 084h
		        note  B5
		        note  B5
		        note  G5
		        note  G5
		        note  E6
		        note  E6
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  F5
		        note  F5
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  As5
		        note  As5
		        note  E6
		        note  E6
		        note  E6
		        note  E6
		        note  A5
		        note  A5
		        note  A5
		        note  A5
		        note  D6
		        note  D6
		        note  B5
		        note  B5
		        note  B5
		        note  B5
		  shifting 00h
		  inst 3
		  vol 0Bh
		  setRelease 01h
		        noteL C5,72
		        noteL B4,12
		        note  C5
		        noteL D5,60
		        waitL 12
		        note  G4
		        wait
		        noteL D5,72
		        noteL C5,12
		        note  D5
		        noteL E5,96
		  inst 26
		  vol 0Ah
		        note  D5
		        waitL 24
		        note  Cs5
		        noteL E5,36
		        noteL D5,12
		        noteL C5,96
		        waitL 24
		        note  E5
		        noteL F5,36
		        noteL G5,12
		        noteL F5,60
		        waitL 12
		        note  F5
		        note  G5
		        noteL A5,72
		        noteL B5,12
		        note  C6
		        noteL D6,60
		        waitL 12
		        note  D6
		        note  E6
		        noteL F6,36
		        waitL 12
		        noteL Gs5,24
		        waitL 12
		        note  Gs5
		        noteL G5,60
		        waitL 12
		        note  G5
		        wait
		        noteL G5,60
		        waitL 36
		        noteL G5,60
		        waitL 12
		        note  G5
		        wait
		        noteL G5,60
		        waitL 12
		        note  G5
		        wait
		        noteL C6,60
		        waitL 12
		        note  C6
		        wait
		        noteL C6,40
		        waitL 8
		        noteL C6,40
		        waitL 8
		        noteL C6,12
		        note  B5
		        note  C6
		        note  D6
		        noteL C6,96
		        noteL B5,48
		mainLoopEnd
Music_5_Channel_2:
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		countedLoopStart 6
		        waitL 192
		countedLoopEnd
		        waitL 120
		  inst 26
		  vol 0Ah
		        noteL D5,24
		        note  C5
		        note  B4
		        waitL 192
		        wait
		        noteL E5,12
		        waitL 36
		        noteL E5,12
		        waitL 36
		        noteL D5,12
		        waitL 36
		        noteL D5,12
		        waitL 36
		        noteL E5,12
		        waitL 36
		        noteL E5,12
		        waitL 36
		        noteL D5,12
		        waitL 36
		        noteL D5,48
		  inst 3
		  vol 0Ah
		        noteL A4,72
		        noteL G4,12
		        note  A4
		        noteL B4,60
		        waitL 12
		        note  D4
		        wait
		        noteL B4,72
		        noteL A4,12
		        note  B4
		        noteL Cs5,96
		        waitL 192
		        wait
		  inst 26
		  vol 0Ah
		        noteL D5,96
		        note  D5
		        noteL F5,60
		        waitL 12
		        note  F5
		        note  G5
		        noteL Gs5,36
		        waitL 12
		        noteL F5,24
		        waitL 12
		        note  F5
		        noteL C5,60
		        waitL 12
		        note  C5
		        wait
		        noteL D5,60
		        waitL 12
		        note  B4
		        wait
		        noteL B4,60
		        waitL 12
		        note  B4
		        wait
		        noteL C5,60
		        waitL 12
		        note  C5
		        wait
		        noteL E5,60
		        waitL 12
		        note  E5
		        wait
		        noteL F5,40
		        waitL 8
		        noteL F5,40
		        waitL 8
		        waitL 72
		        noteL G5,12
		        wait
		        noteL G5,96
		mainLoopEnd
Music_5_Channel_3:
		  inst 36
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL C4,96
		        noteL F4,120
		        noteL E4,12
		        note  D4
		        note  E4
		        note  F4
		        note  G4
		        wait
		        noteL As3,48
		        note  A3
		        noteL D4,96
		        note  G3
		        note  C4
		        note  As3
		        note  A3
		        note  Gs3
		        note  G3
		        note  Fs3
		  setRelease 0Bh
		countedLoopStart 2
		        noteL G3,24
		        note  G3
		        wait
		        note  G3
		countedLoopEnd
		  setRelease 01h
		        noteL G4,48
		        note  G3
		  setRelease 0Bh
		        noteL C4,24
		        note  C4
		        wait
		        note  G3
		        note  D4
		        note  D4
		        wait
		        note  G3
		        note  E4
		        note  E4
		        wait
		        note  G3
		        note  F4
		        note  F4
		        wait
		        note  D4
		  setRelease 024h
		        noteL E4,48
		        note  Cs4
		        note  D4
		        note  G4
		        note  E4
		        note  Cs4
		        note  D4
		  setRelease 01h
		        note  E3
		  setRelease 0Bh
		countedLoopStart 6
		        noteL F3,24
		countedLoopEnd
		  setRelease 01h
		        noteL F3,24
		  setRelease 0Bh
		countedLoopStart 3
		        noteL E3,24
		countedLoopEnd
		countedLoopStart 3
		        noteL A3,24
		countedLoopEnd
		  setRelease 01h
		        noteL D3,12
		        wait
		        note  D3
		        waitL 36
		        noteL E3,12
		        note  F3
		        note  G3
		        wait
		        note  G3
		        waitL 36
		        noteL G3,12
		        note  F3
		        note  E3
		        wait
		        note  E3
		        waitL 36
		        noteL F3,12
		        note  G3
		        note  A3
		        wait
		        note  A3
		        waitL 36
		        noteL A3,12
		        wait
		        noteL D4,48
		        waitL 24
		        noteL D4,12
		        wait
		        noteL C4,48
		        waitL 24
		        noteL C4,12
		        wait
		        noteL B3,48
		        waitL 24
		        noteL B3,12
		        wait
		        noteL As3,48
		        waitL 72
		        noteL G3,12
		        wait
		        noteL C4,72
		        noteL B3,12
		        note  A3
		        note  B3
		        note  C4
		        note  D4
		        waitL 36
		        noteL G3,12
		        wait
		        noteL D4,72
		        noteL C4,12
		        note  B3
		        note  C4
		        note  D4
		        note  E4
		        waitL 36
		        noteL C4,12
		        wait
		        noteL As4,48
		        note  A4
		        note  Gs4
		        noteL G4,96
		        note  G3
		mainLoopEnd
Music_5_Channel_4:
		  stereo 040h
		        waitL 6
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		  shifting 020h
		  inst 26
		  vol 09h
		        noteL G5,48
		        noteL C6,72
		        noteL B5,12
		        note  A5
		        note  B5
		        note  C6
		        note  D6
		        wait
		        noteL G5,144
		        waitL 24
		        note  E6
		        noteL F6,12
		        note  E6
		        note  F6
		        note  A6
		        noteL As5,72
		        noteL B5,24
		        note  G6
		        note  F6
		        noteL Ds6,48
		        note  E6
		        waitL 24
		        note  B6
		        note  C7
		        note  E6
		        noteL G6,36
		        noteL F6,12
		        noteL F6,48
		        waitL 24
		        note  B6
		        note  C7
		        note  Ds6
		        noteL F6,36
		        noteL E6,12
		        noteL E6,96
		        noteL A6,48
		        noteL C6,12
		        note  B5
		        note  C6
		        note  F6
		        noteL A5,72
		        noteL B5,12
		        note  C6
		        noteL E6,36
		        noteL D6,12
		        noteL G6,96
		        wait
		  stereo 080h
		  inst 27
		  vol 06h
		        noteL G5,48
		        noteL C6,72
		        noteL B5,12
		        note  A5
		        note  B5
		        note  C6
		        note  D6
		        wait
		        noteL G5,48
		        noteL E6,72
		        noteL D6,12
		        note  Cs6
		        note  D6
		        note  E6
		        note  F6
		        wait
		  stereo 0C0h
		  inst 16
		  vol 08h
		  shifting 0A4h
		  setRelease 05h
		        note  G6
		        note  G6
		        note  E6
		        note  E6
		        note  A6
		        note  A6
		        note  E6
		        note  E6
		        note  F6
		        note  F6
		        note  D6
		        note  D6
		        note  C6
		        note  C6
		        note  B5
		        note  B5
		        note  G6
		        note  G6
		        note  As6
		        note  As6
		        note  A6
		        note  A6
		        note  E6
		        note  E6
		        note  F6
		        note  F6
		        note  A6
		        note  A6
		        note  G6
		        note  G6
		        note  D6
		        note  D6
		  shifting 020h
		        waitL 120
		  stereo 040h
		  inst 26
		  vol 08h
		  setRelease 01h
		        noteL B5,12
		        note  C6
		        noteL D6,30
		        waitL 138
		        noteL Cs6,12
		        note  D6
		        noteL E6,24
		  vol 09h
		        note  Gs6
		        note  A6
		        note  E6
		        noteL G6,36
		        noteL F6,12
		        noteL F6,60
		        waitL 12
		        noteL B6,24
		        note  C7
		        note  G6
		        noteL As6,36
		        noteL A6,12
		        noteL A6,60
		        waitL 12
		        noteL Cs6,24
		        note  D6
		        note  A5
		        noteL E6,36
		        noteL D6,12
		        noteL F6,18
		        waitL 6
		        noteL E6,24
		        noteL G6,36
		        noteL F6,12
		        noteL A6,18
		        waitL 6
		        noteL Gs6,24
		        noteL B6,36
		        noteL A6,12
		        noteL C7,36
		        waitL 12
		        noteL C6,36
		        noteL D6,12
		        noteL E6,60
		        waitL 12
		        note  E6
		        note  F6
		        noteL D6,60
		        waitL 12
		        note  G5
		        wait
		        noteL F6,60
		        waitL 12
		        note  F6
		        note  G6
		        noteL E6,60
		        waitL 12
		        note  C6
		        wait
		        noteL G6,60
		        waitL 12
		        note  G6
		        note  A6
		        noteL F6,24
		        waitL 12
		        note  C7
		        noteL C7,36
		        noteL F6,12
		        noteL E6,60
		        waitL 12
		        note  E6
		        note  E6
		        noteL F6,24
		        noteL E6,48
		        noteL D6,24
		mainLoopEnd
Music_5_Channel_5:
		channel_end
Music_5_Channel_6:
		  setRelease 01h
		  vibrato 04Ch
		mainLoopStart
		  psgInst 00h
		countedLoopStart 5
		        waitL    192
		countedLoopEnd
		  setRelease 03h
		  psgInst 07Ah
		countedLoopStart 7
		        psgNoteL A2,12
		        psgNote  C3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL B2,12
		        psgNote  D3
		countedLoopEnd
		        psgNoteL B2,12
		  setRelease 00h
		  psgInst 07Ch
		        psgNote  G4
		        psgNote  F4
		        psgNote  D4
		        psgNote  C4
		        psgNote  B3
		        psgNote  A3
		        psgNote  B3
		  setRelease 03h
		  psgInst 07Ah
		countedLoopStart 3
		        psgNoteL E3,12
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL F3,12
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL G3,12
		        psgNote  C4
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL F3,12
		        psgNote  A3
		countedLoopEnd
		  psgInst 0Ah
		        psgNoteL B3,6
		        wait
		  psgInst 00h
		        waitL    36
		  psgInst 0Ah
		        psgNoteL A3,6
		        wait
		  psgInst 00h
		        waitL    36
		  psgInst 07Ah
		        psgNoteL A3,6
		        wait
		  psgInst 00h
		        waitL    36
		  psgInst 07Ah
		        psgNoteL G3,6
		        wait
		  psgInst 00h
		        waitL    36
		  psgInst 07Ah
		        psgNoteL As3,6
		        wait
		  psgInst 00h
		        waitL    36
		  psgInst 07Ah
		        psgNoteL A3,6
		        wait
		  psgInst 00h
		        waitL    36
		  psgInst 07Ah
		        psgNoteL A3,6
		        wait
		  psgInst 00h
		        waitL    36
		  psgInst 07Ah
		        psgNoteL B3,48
		countedLoopStart 3
		        psgNoteL F2,12
		        psgNote  A2
		countedLoopEnd
		countedLoopStart 7
		        psgNoteL G2,12
		        psgNote  B2
		countedLoopEnd
		countedLoopStart 1
		        psgNoteL As2,12
		        psgNote  Cs3
		countedLoopEnd
		countedLoopStart 1
		        psgNoteL A2,12
		        psgNote  Cs3
		countedLoopEnd
		  setRelease 00h
		  psgInst 07Ch
		        psgNoteL D3,12
		        psgNote  F3
		        psgNote  A3
		        psgNote  Cs4
		        psgNote  D4
		        psgNote  F4
		        psgNote  D4
		        psgNote  A3
		        psgNote  G3
		        psgNote  B3
		        psgNote  D4
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  G4
		        psgNote  F4
		        psgNote  D4
		        psgNote  E3
		        psgNote  G3
		        psgNote  B3
		        psgNote  C4
		        psgNote  E4
		        psgNote  G4
		        psgNote  E4
		        psgNote  C4
		        psgNote  A3
		        psgNote  Cs4
		        psgNote  E4
		        psgNote  G4
		        psgNote  As4
		        psgNote  A4
		        psgNote  G4
		        psgNote  E4
		  psgInst 00h
		countedLoopStart 5
		        waitL    192
		countedLoopEnd
		mainLoopEnd
Music_5_Channel_7:
		  setRelease 01h
		  vibrato 04Ch
		mainLoopStart
		  psgInst 00h
		countedLoopStart 5
		        waitL    192
		countedLoopEnd
		  setRelease 03h
		  psgInst 07Ah
		countedLoopStart 7
		        psgNoteL F2,12
		        psgNote  A2
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL G2,12
		        psgNote  F2
		countedLoopEnd
		        psgNoteL G2,12
		  setRelease 00h
		  psgInst 07Ch
		        psgNote  B3
		        psgNote  G3
		        psgNote  F3
		        psgNote  E3
		        psgNote  D3
		        psgNote  C3
		        psgNote  D3
		  setRelease 03h
		  psgInst 07Ah
		countedLoopStart 3
		        psgNoteL C3,12
		        psgNote  E3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D3,12
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL C3,12
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL C3,12
		        psgNote  F3
		countedLoopEnd
		repeatStart
		  psgInst 07Ah
		        psgNoteL G3,6
		        wait
		  psgInst 00h
		        waitL    36
		  psgInst 07Ah
		        psgNoteL E3,6
		        wait
		  psgInst 00h
		        waitL    36
		  psgInst 07Ah
		        psgNoteL F3,6
		        wait
		  psgInst 00h
		        waitL    36
		repeatSection1Start
		  psgInst 07Ah
		        psgNoteL D3,6
		        wait
		  psgInst 00h
		        waitL    36
		repeatEnd
		repeatSection2Start
		  psgInst 07Ah
		        psgNoteL G3,48
		  psgInst 00h
		countedLoopStart 9
		        waitL    192
		countedLoopEnd
		mainLoopEnd
Music_5_Channel_9:
		channel_end
