
; ASM FILE music21.asm :
; 0xB6A0..0xBCCF : Music 21
Music21:        db 0
		db 0
		db 0
		db 0B5h
		dw Music21_Channel0
		dw Music21_Channel1
		dw Music21_Channel2
		dw Music21_Channel3
		dw Music21_Channel4
		dw Music21_Channel5
		dw Music21_Channel6
		dw Music21_Channel7
		dw Music21_Channel9
		dw Music21_Channel9
Music21_Channel0:
		  inst 39
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL F6,6
		        note  Cs6
		        note  A5
		        note  E6
		        note  Cs6
		        note  G5
		        note  D6
		        note  A5
		        note  Fs5
		        note  C6
		        note  A5
		        note  Fs5
		        note  B5
		        note  E5
		        note  D5
		        note  Gs5
		        note  D5
		        note  B4
		        note  A5
		        waitL 30
		mainLoopStart
		  stereo 0C0h
		  inst 16
		  vol 0Dh
		repeatStart
		countedLoopStart 1
		        noteL A6,5
		        noteL B6,4
		        noteL A6,3
		        note  B6
		        note  A6
		        note  B6
		        note  A6
		        noteL Gs6,4
		        waitL 8
		countedLoopEnd
		        noteL A6,5
		        noteL B6,4
		        noteL A6,3
		        note  B6
		        note  A6
		        note  Gs6
		        note  A6
		        noteL D7,4
		        waitL 8
		repeatSection1Start
		        noteL F6,36
		  setRelease 07h
		        noteL E6,12
		        note  Fs6
		        note  Gs6
		        note  A6
		        note  B6
		        note  Cs7
		        note  D7
		        note  E7
		        note  G7
		  setRelease 01h
		        noteL A6,5
		        waitL 6
		        noteL Gs7,2
		        noteL A7,5
		        waitL 18
		repeatEnd
		repeatSection2Start
		        noteL F7,36
		        waitL 12
		  setRelease 07h
		        note  Fs7
		        note  Cs7
		        note  D7
		        note  As6
		        note  B6
		        note  Gs6
		        note  A6
		        note  Cs6
		  setRelease 01h
		        note  D6
		  inst 54
		  vol 0Ch
		        noteL D5,4
		        note  E5
		        note  Fs5
		        note  G5
		        note  A5
		        note  As5
		        noteL B5,24
		        note  B5
		        note  B5
		        noteL B5,5
		        waitL 7
		        noteL B5,12
		        note  As5
		        noteL D6,5
		        waitL 7
		        noteL Gs5,24
		        note  A5
		        note  A5
		        note  A5
		        noteL A5,5
		        waitL 7
		        noteL A5,12
		        note  Gs5
		        noteL B5,5
		        waitL 7
		        noteL A5,24
		        note  C6
		        note  C6
		        note  C6
		        noteL C6,5
		        waitL 7
		        noteL C6,12
		        note  B5
		        note  A5
		        noteL G5,18
		        noteL A5,6
		        noteL B5,5
		        waitL 7
		        noteL D6,132
		        noteL E6,24
		        note  E6
		        note  E6
		        noteL E6,5
		        waitL 7
		        noteL E6,12
		        note  Ds6
		        noteL G6,5
		        waitL 7
		        noteL Cs6,24
		        note  D6
		        note  D6
		        note  D6
		        noteL D6,5
		        waitL 7
		        noteL D6,12
		        note  Cs6
		        noteL E6,5
		        waitL 7
		        noteL D6,24
		        note  F6
		        note  F6
		        note  F6
		        noteL F6,5
		countedLoopStart 3
		        waitL 7
		        noteL D6,6
		        note  E6
		        noteL F6,17
		countedLoopEnd
		        waitL 7
		        noteL D6,6
		        note  E6
		        note  F6
		        note  G6
		        note  A6
		        note  G6
		        note  F6
		        note  E6
		        note  D6
		        note  C6
		        note  B5
		        note  A5
		        note  G5
		        note  F5
		        note  E5
		        note  D5
		        note  Cs5
		        waitL 102
		mainLoopEnd
Music21_Channel1:
		  inst 41
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL Cs6,36
		        note  D6
		        note  E6
		        noteL E6,41
		  shifting 020h
		mainLoopStart
		  stereo 080h
		  inst 16
		  vol 0Bh
		repeatStart
		countedLoopStart 1
		        noteL A6,5
		        noteL B6,4
		        noteL A6,3
		        note  B6
		        note  A6
		        note  B6
		        note  A6
		        noteL Gs6,4
		        waitL 8
		countedLoopEnd
		        noteL A6,5
		        noteL B6,4
		        noteL A6,3
		        note  B6
		        note  A6
		        note  Gs6
		        note  A6
		        noteL D7,4
		        waitL 8
		repeatSection1Start
		        noteL F6,36
		  setRelease 07h
		        noteL E6,12
		        note  Fs6
		        note  Gs6
		        note  A6
		        note  B6
		        note  Cs7
		        note  D7
		        note  E7
		        note  G7
		  setRelease 01h
		        noteL A6,5
		        waitL 6
		        noteL Gs7,2
		        noteL A7,5
		        waitL 18
		repeatEnd
		repeatSection2Start
		        noteL F7,36
		        waitL 12
		  setRelease 07h
		        note  Fs7
		        note  Cs7
		        note  D7
		        note  As6
		        note  B6
		        note  Gs6
		        note  A6
		        note  Cs6
		  setRelease 01h
		        note  D6
		  stereo 040h
		  inst 54
		  vol 0Ah
		        noteL D5,4
		        note  E5
		        note  Fs5
		        note  G5
		        note  A5
		        note  As5
		        noteL B5,24
		        note  B5
		        note  B5
		        noteL B5,5
		        waitL 7
		        noteL B5,12
		        note  As5
		        noteL D6,5
		        waitL 7
		        noteL Gs5,24
		        note  A5
		        note  A5
		        note  A5
		        noteL A5,5
		        waitL 7
		        noteL A5,12
		        note  Gs5
		        noteL B5,5
		        waitL 7
		        noteL A5,24
		        note  C6
		        note  C6
		        note  C6
		        noteL C6,5
		        waitL 7
		        noteL C6,12
		        note  B5
		        note  A5
		        noteL G5,18
		        noteL A5,6
		        noteL B5,5
		        waitL 7
		        noteL D6,132
		        noteL E6,24
		        note  E6
		        note  E6
		        noteL E6,5
		        waitL 7
		        noteL E6,12
		        note  Ds6
		        noteL G6,5
		        waitL 7
		        noteL Cs6,24
		        note  D6
		        note  D6
		        note  D6
		        noteL D6,5
		        waitL 7
		        noteL D6,12
		        note  Cs6
		        noteL E6,5
		        waitL 7
		        noteL D6,24
		        note  F6
		        note  F6
		        note  F6
		        noteL F6,5
		countedLoopStart 3
		        waitL 7
		        noteL D6,6
		        note  E6
		        noteL F6,17
		countedLoopEnd
		        waitL 7
		        noteL D6,6
		        note  E6
		        note  F6
		        note  G6
		        note  A6
		        note  G6
		        note  F6
		        note  E6
		        note  D6
		        note  C6
		        note  B5
		        note  A5
		        note  G5
		        note  F5
		        note  E5
		        note  D5
		        note  Cs5
		        waitL 102
		mainLoopEnd
Music21_Channel2:
		  inst 41
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL G5,36
		        note  Fs5
		        note  Gs5
		        note  A5
		mainLoopStart
		  inst 41
		  vol 09h
		countedLoopStart 1
		        waitL 12
		        noteL D5,36
		        noteL D5,24
		countedLoopEnd
		  inst 39
		  vol 0Ah
		        noteL D6,12
		        note  Cs6
		        note  B5
		        note  A5
		        note  G5
		        note  Fs5
		        note  F5
		        note  E5
		        note  D5
		        note  Cs5
		        noteL Cs6,24
		  inst 41
		  vol 09h
		countedLoopStart 1
		        waitL 12
		        noteL D5,36
		        noteL D5,24
		countedLoopEnd
		  inst 39
		  vol 0Ah
		        noteL Fs5,24
		        noteL A5,12
		        noteL B5,24
		        noteL D6,12
		        noteL Cs6,24
		        noteL E6,12
		        noteL D6,48
		  inst 58
		  vol 09h
		        noteL G5,6
		        note  B5
		        note  D6
		        waitL 18
		        noteL Fs5,6
		        note  As5
		        note  D6
		        waitL 18
		        noteL F5,6
		        note  A5
		        note  D6
		        wait
		        note  E5
		        note  Gs5
		        note  B5
		        note  D6
		        note  B5
		        note  Gs5
		        waitL 12
		        noteL E5,6
		        note  A5
		        note  C6
		        waitL 18
		        noteL E5,6
		        note  Gs5
		        note  C6
		        waitL 18
		        noteL E5,6
		        note  G5
		        note  C6
		        wait
		        note  Fs5
		        note  A5
		        note  C6
		        note  E6
		        note  C6
		        note  A5
		        waitL 12
		        noteL E5,6
		        note  G5
		        note  C6
		        waitL 18
		        noteL Ds5,6
		        note  G5
		        note  C6
		        waitL 18
		        noteL D5,6
		        note  Fs5
		        note  C6
		        wait
		        note  E5
		        note  Fs5
		        note  A5
		        note  C6
		        note  E6
		        note  D6
		        noteL G5,36
		        note  Fs5
		        noteL F5,24
		        noteL D5,12
		        noteL B4,36
		        waitL 12
		        noteL C5,6
		        note  E5
		        note  G5
		        waitL 18
		        noteL B4,6
		        note  Ds5
		        note  G5
		        waitL 18
		        noteL As4,6
		        note  D5
		        note  G5
		        wait
		        note  A4
		        note  Cs5
		        note  E5
		        note  G5
		        note  E5
		        note  Cs5
		        waitL 12
		        noteL D5,6
		        note  F5
		        note  A5
		        waitL 18
		        noteL Cs5,6
		        note  F5
		        note  A5
		        waitL 18
		        noteL C5,6
		        note  F5
		        note  A5
		        wait
		        note  B4
		        note  D5
		        note  F5
		        note  A5
		        note  F5
		        note  D5
		        waitL 12
		        noteL C5,6
		        note  F5
		        note  A5
		        waitL 18
		        noteL C5,6
		        note  F5
		        note  Gs5
		        wait
		        note  G5
		        waitL 12
		countedLoopStart 1
		        waitL 6
		        note  B4
		        note  C5
		        note  D5
		        note  E5
		        note  F5
		        wait
		        note  F5
		        note  G5
		        note  A5
		        note  G5
		        note  F5
		countedLoopEnd
		        noteL E5,6
		        note  D5
		        note  C5
		        note  B4
		        waitL 30
		        waitL 36
		        noteL A4,6
		        note  G4
		        note  Fs4
		        note  E4
		        note  D4
		        note  Cs4
		        note  E4
		        waitL 66
		mainLoopEnd
Music21_Channel3:
		  setRelease 01h
		  vibrato 02Ch
		  inst 41
		  vol 0Bh
		        noteL A4,36
		        note  A4
		        note  D5
		        noteL Cs5,12
		        note  A4
		        note  A3
		  vol 0Ah
		mainLoopStart
		repeatStart
		countedLoopStart 2
		        noteL D4,12
		        note  Fs4
		        note  A3
		countedLoopEnd
		repeatSection1Start
		        noteL As3,12
		        note  Gs4
		        note  As3
		        note  E4
		        note  B4
		        note  E4
		        note  Fs4
		        note  Cs5
		        note  Fs4
		        note  B3
		        note  A4
		        note  As3
		        noteL A3,24
		        noteL A4,12
		repeatEnd
		repeatSection2Start
		        noteL B3,12
		        note  Gs4
		        note  B3
		        noteL A3,36
		        note  A3
		        note  A3
		        note  D4
		        noteL G3,24
		        noteL G4,12
		        noteL Fs3,24
		        noteL Fs4,12
		        noteL F3,24
		        noteL F4,12
		        noteL E3,24
		        noteL E4,12
		        noteL A3,24
		        noteL A4,12
		        noteL Gs3,24
		        noteL Gs4,12
		        noteL G3,24
		        noteL G4,12
		        noteL Fs3,24
		        noteL Fs4,12
		        noteL E3,24
		        noteL E4,12
		        noteL Ds3,24
		        noteL Ds4,12
		        noteL D3,24
		        noteL D4,12
		        noteL Fs3,24
		        noteL Fs4,12
		        noteL G3,24
		        note  G4
		        noteL G4,12
		        note  D4
		        noteL G3,24
		        noteL G4,12
		        noteL G3,6
		        note  A3
		        note  B3
		        note  D4
		        note  A4
		        note  G4
		        noteL C4,24
		        noteL C5,12
		        noteL B3,24
		        noteL B4,12
		        noteL As3,24
		        noteL As4,12
		        noteL A3,24
		        noteL A4,12
		        noteL D4,24
		        noteL D5,12
		        noteL Cs4,24
		        noteL Cs5,12
		        noteL C4,24
		        noteL C5,12
		        noteL B3,24
		        noteL B4,12
		        noteL A3,24
		        noteL A4,12
		        noteL Gs3,24
		        noteL Gs4,12
		countedLoopStart 1
		        noteL G3,24
		        note  G4
		        noteL G4,12
		        note  D4
		countedLoopEnd
		        noteL G3,42
		        waitL 66
		        noteL A3,36
		        noteL A3,24
		        noteL E4,12
		        note  A4
		        note  E4
		        note  A3
		mainLoopEnd
Music21_Channel4:
		  shifting 020h
		  stereo 080h
		        waitL 6
		  inst 39
		  vol 08h
		  setRelease 01h
		  vibrato 02Ch
		        note  F6
		        note  Cs6
		        note  A5
		        note  E6
		        note  Cs6
		        note  G5
		        note  D6
		        note  A5
		        note  Fs5
		        note  C6
		        note  A5
		        note  Fs5
		        note  B5
		        note  E5
		        note  D5
		        note  Gs5
		        note  D5
		        note  B4
		        note  A5
		        waitL 30
		mainLoopStart
		        waitL 144
		  stereo 040h
		  inst 39
		  vol 08h
		        noteL D6,12
		        note  Cs6
		        note  B5
		        note  A5
		        note  G5
		        note  Fs5
		        note  F5
		        note  E5
		        note  D5
		        note  Cs5
		        noteL Cs6,24
		        waitL 144
		        noteL Fs5,24
		        noteL A5,12
		        noteL B5,24
		        noteL D6,12
		        noteL Cs6,24
		        noteL E6,12
		        noteL D6,48
		  stereo 080h
		  inst 58
		  vol 07h
		        noteL G5,6
		        note  B5
		        note  D6
		        waitL 18
		        noteL Fs5,6
		        note  As5
		        note  D6
		        waitL 18
		        noteL F5,6
		        note  A5
		        note  D6
		        wait
		        note  E5
		        note  Gs5
		        note  B5
		        note  D6
		        note  B5
		        note  Gs5
		        waitL 12
		        noteL E5,6
		        note  A5
		        note  C6
		        waitL 18
		        noteL E5,6
		        note  Gs5
		        note  C6
		        waitL 18
		        noteL E5,6
		        note  G5
		        note  C6
		        wait
		        note  Fs5
		        note  A5
		        note  C6
		        note  E6
		        note  C6
		        note  A5
		        waitL 12
		        noteL E5,6
		        note  G5
		        note  C6
		        waitL 18
		        noteL Ds5,6
		        note  G5
		        note  C6
		        waitL 18
		        noteL D5,6
		        note  Fs5
		        note  C6
		        wait
		        note  E5
		        note  Fs5
		        note  A5
		        note  C6
		        note  E6
		        note  D6
		        noteL G5,36
		        note  Fs5
		        noteL F5,24
		        noteL D5,12
		        noteL B4,36
		        waitL 12
		        noteL C5,6
		        note  E5
		        note  G5
		        waitL 18
		        noteL B4,6
		        note  Ds5
		        note  G5
		        waitL 18
		        noteL As4,6
		        note  D5
		        note  G5
		        wait
		        note  A4
		        note  Cs5
		        note  E5
		        note  G5
		        note  E5
		        note  Cs5
		        waitL 12
		        noteL D5,6
		        note  F5
		        note  A5
		        waitL 18
		        noteL Cs5,6
		        note  F5
		        note  A5
		        waitL 18
		        noteL C5,6
		        note  F5
		        note  A5
		        wait
		        note  B4
		        note  D5
		        note  F5
		        note  A5
		        note  F5
		        note  D5
		        waitL 12
		        noteL C5,6
		        note  F5
		        note  A5
		        waitL 18
		        noteL C5,6
		        note  F5
		        note  Gs5
		        wait
		        note  G5
		        waitL 12
		countedLoopStart 1
		        waitL 6
		        note  B4
		        note  C5
		        note  D5
		        note  E5
		        note  F5
		        wait
		        note  F5
		        note  G5
		        note  A5
		        note  G5
		        note  F5
		countedLoopEnd
		        noteL E5,6
		        note  D5
		        note  C5
		        note  B4
		        waitL 30
		        waitL 36
		        noteL A4,6
		        note  G4
		        note  Fs4
		        note  E4
		        note  D4
		        note  Cs4
		        note  E4
		        waitL 66
		mainLoopEnd
Music21_Channel5:
		channel_end
Music21_Channel6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    144
		mainLoopStart
		        waitL    144
		        wait
		        wait
		  psgInst 07h
		        psgNoteL A3,36
		        psgNote  B3
		        psgNote  Cs4
		  psgInst 08h
		        psgNoteL D4,12
		  psgInst 00h
		        waitL    24
		countedLoopStart 3
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  D3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  E3
		        psgNote  E3
		countedLoopEnd
		countedLoopStart 2
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  C3
		        psgNote  C3
		countedLoopEnd
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  E3
		        psgNote  E3
		countedLoopStart 3
		  psgInst 00h
		        waitL    12
		  psgInst 02Ah
		        psgNote  D4
		        psgNote  D4
		countedLoopEnd
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  E3
		        psgNote  E3
		  psgInst 00h
		        wait
		  psgInst 029h
		        psgNote  Ds3
		        psgNote  Ds3
		  psgInst 00h
		        wait
		  psgInst 029h
		        psgNote  D3
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  E3
		        psgNote  E3
		countedLoopStart 10
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  F3
		        psgNote  F3
		countedLoopEnd
		        psgNoteL F3,12
		  psgInst 00h
		        waitL    60
		  psgInst 07h
		        psgNoteL Cs4,36
		  psgInst 02Bh
		        psgNoteL B3,12
		        psgNote  B4
		        psgNote  G4
		        psgNote  A4
		  psgInst 00h
		        waitL    24
		mainLoopEnd
Music21_Channel7:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    144
		mainLoopStart
		        waitL    144
		        wait
		        wait
		  psgInst 07h
		        psgNoteL Fs3,36
		        psgNote  G3
		        psgNoteL A3,24
		        psgNoteL G3,12
		  psgInst 08h
		        psgNote  Fs3
		  psgInst 00h
		        waitL    24
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  B2
		        psgNote  B2
		  psgInst 00h
		        wait
		  psgInst 029h
		        psgNote  As2
		        psgNote  As2
		  psgInst 00h
		        wait
		  psgInst 029h
		        psgNote  A2
		        psgNote  A2
		        psgNote  Gs2
		        psgNote  B2
		        psgNote  B2
		countedLoopStart 3
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  C3
		        psgNote  C3
		countedLoopEnd
		countedLoopStart 1
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  G2
		        psgNote  G2
		countedLoopEnd
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  Fs2
		        psgNote  Fs2
		  psgInst 00h
		        wait
		  psgInst 029h
		        psgNote  A2
		        psgNote  A2
		countedLoopStart 3
		  psgInst 00h
		        waitL    12
		  psgInst 02Ah
		        psgNote  B3
		        psgNote  B3
		countedLoopEnd
		countedLoopStart 3
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  G2
		        psgNote  G2
		countedLoopEnd
		countedLoopStart 3
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  A2
		        psgNote  A2
		countedLoopEnd
		countedLoopStart 1
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  C3
		        psgNote  C3
		countedLoopEnd
		countedLoopStart 4
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNote  B2
		        psgNote  B2
		countedLoopEnd
		        psgNoteL B2,12
		  psgInst 00h
		        waitL    60
		  psgInst 07h
		        psgNoteL G3,36
		  psgInst 02Bh
		        psgNoteL G3,12
		        psgNote  G4
		        psgNote  E4
		        psgNote  Cs4
		  psgInst 00h
		        waitL    24
		mainLoopEnd
Music21_Channel9:
		channel_end
