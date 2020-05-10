
; ASM FILE music36.asm :
; 0x8C16..0x937C : Music 36
Music36:        db 0
		db 0
		db 0
		db 0B6h
		dw Music36_Channel0
		dw Music36_Channel1
		dw Music36_Channel2
		dw Music36_Channel3
		dw Music36_Channel4
		dw Music36_Channel5
		dw Music36_Channel6
		dw Music36_Channel7
		dw Music36_Channel9
		dw Music36_Channel9
Music36_Channel0:
		  inst 29
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		        noteL E4,24
		        noteL E4,18
		        noteL E4,6
		        wait
		        note  E4
		        note  A3
		        wait
		        note  A3
		        wait
		        noteL B3,12
		        noteL E4,18
		        noteL E4,12
		        noteL Ds4,6
		        note  E4
		        note  B4
		        wait
		        note  B4
		        note  A3
		        wait
		        noteL B3,24
		mainLoopStart
		  inst 29
		  vol 0Ch
		  vibrato 02Ch
		        noteL E4,24
		        noteL E4,18
		        noteL E4,6
		        wait
		        note  E4
		        note  B3
		        wait
		        note  B3
		        wait
		        noteL E4,24
		        noteL E4,18
		        noteL E4,6
		        wait
		        note  B3
		        wait
		        noteL E4,12
		        noteL B4,6
		        note  E4
		        wait
		        noteL B3,12
		        noteL A3,24
		        noteL A3,18
		        noteL E4,6
		        wait
		        note  E4
		        note  A3
		        wait
		        note  A3
		        wait
		        noteL A4,18
		        noteL A3,6
		        noteL E4,12
		        noteL E4,6
		        noteL A3,12
		        noteL Gs3,6
		        note  A3
		        wait
		        note  A4
		        wait
		        noteL A3,18
		        noteL E4,12
		        noteL Fs4,6
		        note  E4
		        note  B3
		        noteL E4,18
		        noteL E4,6
		        wait
		        note  E4
		        note  B3
		        wait
		        note  B3
		        wait
		        noteL E4,24
		        noteL E4,18
		        noteL E4,6
		        wait
		        note  B3
		        wait
		        noteL E4,12
		        noteL B4,6
		        note  E4
		        wait
		        noteL B3,12
		        noteL A3,24
		        noteL A3,18
		        noteL E4,6
		        wait
		        note  E4
		        note  A3
		        wait
		        note  A3
		        wait
		        noteL A4,18
		        noteL A3,6
		        noteL E4,12
		        noteL E4,6
		        noteL A3,12
		        noteL Gs3,6
		        note  A3
		        wait
		        note  A4
		        wait
		        noteL A3,12
		        noteL A3,6
		        note  E4
		        waitL 60
		  inst 33
		  vol 0Ch
		        noteL A3,6
		        note  B3
		        wait
		        note  B3
		        note  D4
		        note  E4
		        waitL 54
		        noteL E4,6
		        note  D4
		        wait
		        note  B3
		        wait
		        noteL E4,12
		repeatStart
		  inst 29
		  vol 0Ch
		        noteL D4,18
		        noteL D4,12
		        note  D4
		        noteL Cs4,6
		        note  D4
		        wait
		        note  A4
		        wait
		        note  A3
		        wait
		        note  D4
		        note  Ds4
		        noteL E4,18
		        note  E4
		        note  E4
		        note  E4
		        noteL E4,6
		        wait
		repeatSection1Start
		        noteL B3,6
		        wait
		        wait
		        noteL E4,18
		        note  E4
		        noteL E4,6
		        waitL 12
		        noteL B3,6
		        wait
		        noteL E4,24
		repeatEnd
		repeatSection2Start
		        noteL B4,6
		        wait
		        wait
		        noteL E4,18
		        noteL E4,12
		        noteL B4,6
		        note  E4
		        waitL 12
		        noteL B3,6
		        wait
		        noteL E4,24
		  inst 33
		  vol 0Ch
		        noteL D4,6
		        note  D4
		        waitL 48
		        noteL G3,6
		        note  A3
		        wait
		        note  A3
		        note  C4
		        note  D4
		        waitL 54
		        noteL D4,6
		        note  C4
		        wait
		        note  A3
		        wait
		        noteL D4,12
		  inst 29
		  vol 0Ch
		        noteL E4,18
		        note  E4
		        noteL E4,12
		        noteL E4,6
		        wait
		        note  A3
		        wait
		        note  B3
		        wait
		        note  D4
		        wait
		  setRelease 06h
		        noteL E4,12
		        note  E4
		        note  B3
		        note  E4
		        wait
		  inst 33
		  vol 0Ch
		  setRelease 01h
		  setSlide 031h
		        noteL B4,8
		        waitL 4
		  vol 0Dh
		  noSlide
		  vibrato 0D2h
		        noteL B3,24
		mainLoopEnd
Music36_Channel1:
		  setRelease 01h
		  vibrato 02Ch
		        waitL 192
		mainLoopStart
		  inst 60
		  vol 0Ah
		        noteL B5,12
		        noteL B5,6
		        note  Cs6
		        noteL B5,4
		        note  Cs6
		        note  B5
		        noteL As5,6
		        noteL B5,12
		        noteL Cs6,6
		        noteL Ds6,12
		        noteL E6,6
		        noteL Fs6,12
		        note  Gs6
		        noteL B5,6
		        noteL Cs6,12
		        noteL B5,4
		        note  Cs6
		        note  B5
		        noteL As5,6
		        noteL B5,12
		        noteL Cs6,6
		        noteL Ds6,12
		        noteL E6,6
		        noteL Fs6,12
		        note  Gs6
		        note  Cs6
		        noteL Cs6,18
		        noteL E6,6
		        noteL Cs6,12
		        note  Cs6
		        noteL C6,6
		        note  Cs6
		        noteL Gs5,12
		        note  Fs6
		        noteL Gs6,6
		        noteL Cs6,12
		        note  Cs6
		        noteL E6,6
		        noteL Cs6,12
		        note  Cs6
		        noteL C6,6
		        noteL Cs6,12
		        noteL E6,6
		        noteL B5,18
		        noteL B5,6
		        note  Cs6
		        noteL B5,4
		        note  Cs6
		        note  B5
		        noteL As5,6
		        noteL B5,12
		        noteL Cs6,6
		        noteL Ds6,12
		        noteL E6,6
		        noteL Fs6,12
		        note  Gs6
		        noteL B5,6
		        noteL Cs6,12
		        noteL B5,4
		        note  Cs6
		        note  B5
		        noteL As5,6
		        noteL B5,12
		        noteL Cs6,6
		        noteL Ds6,12
		        noteL E6,6
		        noteL Fs6,12
		        note  Gs6
		        note  Cs6
		        noteL Cs6,18
		        noteL E6,6
		        noteL Cs6,12
		        note  Cs6
		        noteL C6,6
		        note  Cs6
		        noteL Gs5,12
		        note  Fs6
		        noteL Gs6,6
		        noteL Cs6,12
		        note  Cs6
		        noteL E6,6
		        noteL Cs6,12
		        note  Cs6
		        noteL C6,6
		        noteL Cs6,12
		        noteL E6,6
		        noteL B5,36
		  stereo 080h
		  inst 3
		  vol 08h
		        noteL E4,24
		  setSlide 040h
		        noteL E5,36
		  noSlide
		        noteL D5,6
		        note  Cs5
		        note  D5
		        wait
		        note  Fs5
		        wait
		        noteL A4,18
		  setSlide 0Dh
		        noteL B4,48
		  noSlide
		        waitL 96
		  stereo 0C0h
		  inst 60
		repeatStart
		  vol 0Ah
		        noteL E6,6
		        note  D6
		        note  B5
		        note  Fs6
		        note  E6
		        note  B5
		        note  Gs6
		        note  Fs6
		        note  E6
		        note  A6
		        note  Gs6
		        note  Fs6
		        note  Gs6
		        note  Fs6
		        note  E6
		        noteL B5,12
		        noteL E6,6
		        note  D6
		        note  B5
		        note  Fs6
		        note  E6
		        note  D6
		        note  B5
		        note  A6
		        note  Gs6
		        note  Fs6
		        noteL Gs6,12
		        noteL E6,6
		        noteL B5,12
		repeatSection1Start
		  vol 00h
		        waitL 96
		repeatEnd
		repeatSection2Start
		  vol 0Bh
		        noteL D6,6
		        noteL D6,24
		  stereo 080h
		  inst 3
		  vol 08h
		        note  D4
		  setSlide 03Eh
		        noteL D5,36
		  noSlide
		        noteL C5,6
		        note  B4
		        note  C5
		        wait
		        note  E5
		        wait
		        noteL G4,18
		  setSlide 0Dh
		        noteL A4,6
		  noSlide
		  stereo 0C0h
		  inst 60
		  vol 0Bh
		        note  Fs6
		        note  E6
		        note  D6
		        note  C6
		        note  A5
		        note  G5
		        note  Fs5
		        waitL 96
		        noteL Gs5,12
		        note  A5
		        note  Fs5
		        note  Gs5
		        waitL 48
		mainLoopEnd
Music36_Channel2:
		  vibrato 02Ch
		        waitL 192
		mainLoopStart
		  setRelease 01h
		  inst 60
		  vol 0Ah
		        noteL Gs5,12
		        noteL Gs5,6
		        note  A5
		        noteL Gs5,4
		        note  A5
		        note  Gs5
		        noteL G5,6
		        noteL Gs5,12
		        noteL A5,6
		        noteL B5,12
		        noteL Cs6,6
		        noteL Ds6,12
		        note  E6
		        noteL Gs5,6
		        noteL A5,12
		        noteL Gs5,4
		        note  A5
		        note  Gs5
		        noteL G5,6
		        noteL Gs5,12
		        noteL A5,6
		        noteL B5,12
		        noteL Cs6,6
		        noteL Ds6,12
		        note  E6
		        note  A5
		        noteL A5,18
		        noteL Cs6,6
		        noteL A5,12
		        note  A5
		        noteL Gs5,6
		        note  A5
		        noteL E5,12
		        note  Ds6
		        noteL E6,6
		        noteL A5,12
		        note  A5
		        noteL Cs6,6
		        noteL A5,12
		        note  A5
		        noteL Gs5,6
		        noteL A5,12
		        noteL Cs6,6
		        noteL Gs5,18
		        noteL Gs5,6
		        note  A5
		        noteL Gs5,4
		        note  A5
		        note  Gs5
		        noteL G5,6
		        noteL Gs5,12
		        noteL A5,6
		        noteL B5,12
		        noteL Cs6,6
		        noteL Ds6,12
		        note  E6
		        noteL Gs5,6
		        noteL A5,12
		        noteL Gs5,4
		        note  A5
		        note  Gs5
		        noteL G5,6
		        noteL Gs5,12
		        noteL A5,6
		        noteL B5,12
		        noteL Cs6,6
		        noteL Ds6,12
		        note  E6
		        note  A5
		        noteL A5,18
		        noteL Cs6,6
		        noteL A5,12
		        note  A5
		        noteL Gs5,6
		        note  A5
		        noteL E5,12
		        note  Ds6
		        noteL E6,6
		        noteL A5,12
		        note  A5
		        noteL Cs6,6
		        noteL A5,12
		        note  A5
		        noteL Gs5,6
		        noteL A5,12
		        noteL Cs6,6
		        noteL Gs5,33
		  stereo 040h
		  inst 3
		  vol 09h
		        noteL E4,24
		  setSlide 040h
		        noteL E5,36
		  noSlide
		        noteL D5,6
		        note  Cs5
		        note  D5
		        wait
		        note  Fs5
		        wait
		        noteL A4,18
		  setSlide 0Dh
		        noteL B4,51
		  noSlide
		        waitL 96
		  stereo 0C0h
		  inst 60
		repeatStart
		  vol 0Ah
		        noteL Gs5,18
		        note  A5
		        note  B5
		        note  Cs6
		        noteL B5,12
		        noteL Gs5,18
		        note  Gs5
		        noteL A5,24
		        noteL Cs6,12
		        noteL A5,6
		        noteL B5,12
		        noteL Gs5,6
		        noteL B5,12
		repeatSection1Start
		  vol 00h
		        waitL 96
		repeatEnd
		repeatSection2Start
		  vol 0Bh
		        noteL Fs5,6
		        noteL Fs5,21
		  stereo 040h
		  inst 3
		  vol 09h
		        noteL D4,24
		  setSlide 03Eh
		        noteL D5,36
		  noSlide
		        noteL C5,6
		        note  B4
		        note  C5
		        wait
		        note  E5
		        wait
		        noteL G4,18
		  setSlide 0Dh
		        noteL A4,51
		  noSlide
		        waitL 12
		  stereo 0C0h
		  vol 0Ah
		        note  B4
		        waitL 6
		        noteL B4,4
		        waitL 8
		        noteL B4,6
		        note  Cs5
		        noteL Cs5,4
		        waitL 8
		        noteL B4,4
		        waitL 8
		        noteL Cs5,6
		        noteL A4,12
		  setRelease 08h
		        note  B4
		        note  Cs5
		        note  A4
		        note  B4
		        waitL 48
		mainLoopEnd
Music36_Channel3:
		  vibrato 02Ch
		        waitL 192
		mainLoopStart
		  setRelease 01h
		countedLoopStart 7
		        waitL 96
		countedLoopEnd
		        waitL 24
		  inst 3
		  vol 0Ah
		        note  E4
		  setSlide 040h
		        noteL E5,36
		  noSlide
		        noteL D5,6
		        note  Cs5
		        note  D5
		        wait
		        note  Fs5
		        wait
		        noteL A4,18
		  setSlide 0Dh
		        noteL B4,54
		  noSlide
		countedLoopStart 5
		        waitL 96
		countedLoopEnd
		        waitL 24
		        note  D4
		  setSlide 03Eh
		        noteL D5,36
		  noSlide
		        noteL C5,6
		        note  B4
		        note  C5
		        wait
		        note  E5
		        wait
		        noteL G4,18
		  setSlide 0Dh
		        noteL A4,54
		  noSlide
		        waitL 12
		        note  Gs5
		        waitL 6
		        noteL Gs5,4
		        waitL 8
		        noteL Gs5,6
		        note  A5
		        noteL A5,4
		        waitL 8
		        noteL Gs5,4
		        waitL 8
		        noteL A5,6
		        noteL Fs5,12
		  setRelease 08h
		        note  Gs5
		        note  A5
		        note  Fs5
		        note  Gs5
		        waitL 48
		mainLoopEnd
Music36_Channel4:
		  inst 47
		  vol 09h
		  setRelease 00h
		  vibrato 00h
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		mainLoopStart
		countedLoopStart 4
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		countedLoopEnd
		countedLoopStart 1
		        noteL C7,24
		        note  C7
		        note  C7
		        note  C7
		        noteL C7,18
		        note  C7
		        note  C7
		        note  C7
		        noteL C7,12
		        noteL C7,18
		        note  C7
		        noteL C7,36
		        noteL C7,12
		        noteL C7,24
		countedLoopEnd
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		        note  C7
		        note  C7
		        note  C7
		        noteL C7,60
		mainLoopEnd
Music36_Channel5:
		  stereo 0C0h
		        sampleL 0,12
		        sample  0
		  stereo 040h
		        sampleL 3,6
		  stereo 0C0h
		        sampleL 0,12
		        sampleL 0,6
		        sampleL 0,12
		  stereo 080h
		        sample  4
		  stereo 0C0h
		        sample  0
		  stereo 040h
		        sample  2
		  stereo 0C0h
		        sample  0
		        sample  0
		  stereo 080h
		        sampleL 3,6
		  stereo 0C0h
		        sampleL 0,12
		        sampleL 0,6
		        sampleL 0,12
		        sampleL 3,6
		        sample  3
		        sample  3
		  stereo 080h
		        sample  4
		  stereo 040h
		        sample  2
		  stereo 0C0h
		        sample  3
		mainLoopStart
		countedLoopStart 4
		  stereo 0C0h
		        sampleL 0,12
		        sample  0
		  stereo 040h
		        sampleL 3,6
		  stereo 0C0h
		        sampleL 0,12
		        sampleL 0,6
		        sampleL 0,12
		  stereo 080h
		        sample  4
		  stereo 0C0h
		        sample  0
		  stereo 040h
		        sample  2
		  stereo 0C0h
		        sample  0
		        sample  0
		  stereo 080h
		        sampleL 3,6
		  stereo 0C0h
		        sampleL 0,12
		        sampleL 0,6
		        sampleL 0,12
		  stereo 040h
		        sampleL 3,6
		  stereo 080h
		        sample  4
		  stereo 0C0h
		        sampleL 0,12
		  stereo 040h
		        sample  2
		countedLoopEnd
		countedLoopStart 1
		  stereo 0C0h
		        sampleL 0,12
		        sample  0
		  stereo 040h
		        sampleL 3,6
		  stereo 0C0h
		        sampleL 0,12
		        sampleL 0,6
		        sampleL 0,12
		  stereo 080h
		        sample  4
		  stereo 0C0h
		        sample  0
		  stereo 040h
		        sample  2
		  stereo 0C0h
		        sampleL 0,18
		        sample  0
		        sample  0
		        sample  0
		        sampleL 3,6
		        sample  0
		  stereo 080h
		        sampleL 4,12
		  stereo 040h
		        sampleL 2,6
		  stereo 0C0h
		        sampleL 0,18
		        sampleL 0,12
		        sampleL 0,6
		        sampleL 3,12
		        sampleL 3,6
		  stereo 080h
		        sampleL 4,12
		  stereo 0C0h
		        sample  0
		  stereo 040h
		        sample  2
		countedLoopEnd
		repeatStart
		  stereo 0C0h
		        sampleL 0,12
		        sample  0
		  stereo 040h
		        sampleL 3,6
		  stereo 0C0h
		        sampleL 0,12
		        sampleL 0,6
		        sampleL 0,12
		  stereo 080h
		        sample  4
		  stereo 0C0h
		        sample  0
		  stereo 040h
		        sample  2
		repeatSection1Start
		  stereo 0C0h
		        sampleL 0,12
		        sample  0
		  stereo 080h
		        sampleL 3,6
		  stereo 0C0h
		        sampleL 0,12
		        sampleL 0,6
		        sampleL 0,12
		  stereo 040h
		        sampleL 3,6
		  stereo 080h
		        sample  4
		  stereo 0C0h
		        sampleL 0,12
		  stereo 040h
		        sample  2
		repeatEnd
		repeatSection2Start
		  stereo 0C0h
		        sampleL 0,12
		        sample  0
		        sample  0
		        sampleL 0,18
		  stereo 080h
		        sampleL 2,6
		        sampleL 2,12
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sample  4
		mainLoopEnd
Music36_Channel6:
		  psgInst 00h
		        waitL    12
		  psgInst 02Ch
		  setRelease 04h
		  vibrato 04Ch
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        waitL    12
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        psgNote  A3
		        psgNote  A3
		        wait
		        psgNote  Gs3
		        wait
		        psgNote  A3
		        psgNote  Fs3
		        wait
		  psgInst 00h
		        waitL    12
		  psgInst 02Ch
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        waitL    12
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        psgNote  A3
		        psgNote  A3
		        wait
		        psgNoteL Fs3,9
		  psgInst 00h
		        waitL    21
		mainLoopStart
		countedLoopStart 19
		        waitL    12
		  psgInst 02Ah
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        waitL    12
		        psgNoteL Gs3,6
		        psgNote  Gs3
		countedLoopEnd
		  psgInst 02Ch
		countedLoopStart 2
		        psgNoteL A3,6
		        psgNote  A3
		        wait
		        psgNote  Gs3
		countedLoopEnd
		        psgNoteL A3,6
		        wait
		        psgNote  A3
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 02Ah
		countedLoopStart 3
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        wait
		countedLoopEnd
		        psgNoteL Gs3,6
		countedLoopStart 1
		        waitL    6
		        psgNote  Gs3
		        psgNote  Gs3
		countedLoopEnd
		        waitL    12
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        waitL    18
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        wait
		        psgNote  Gs3
		        psgNote  Gs3
		  psgInst 02Ch
		countedLoopStart 2
		        psgNoteL A3,6
		        psgNote  A3
		        wait
		        psgNote  Gs3
		countedLoopEnd
		        psgNoteL A3,6
		        psgNote  Cs4
		        wait
		        psgNote  B3
		  psgInst 00h
		        wait
		  psgInst 02Ah
		countedLoopStart 3
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        wait
		countedLoopEnd
		        psgNoteL Gs3,6
		countedLoopStart 1
		        waitL    6
		        psgNote  Gs3
		        psgNote  Gs3
		countedLoopEnd
		        waitL    12
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        waitL    18
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        wait
		        psgNote  Gs3
		        psgNote  Gs3
		countedLoopStart 7
		  psgInst 00h
		        waitL    12
		  psgInst 02Ah
		        psgNoteL Fs3,6
		        psgNote  Fs3
		countedLoopEnd
		countedLoopStart 3
		  psgInst 00h
		        waitL    12
		  psgInst 02Ah
		        psgNoteL Gs3,6
		        psgNote  Gs3
		countedLoopEnd
		  psgInst 02Ch
		        psgNoteL Gs3,6
		        wait
		        psgNote  A3
		        wait
		        psgNote  Fs3
		        wait
		        psgNote  Gs3
		        wait
		  psgInst 00h
		        waitL    48
		mainLoopEnd
Music36_Channel7:
		  setRelease 01h
		  vibrato 04Ch
		  psgInst 00h
		        waitL    12
		  psgInst 02Bh
		        psgNoteL E3,6
		        psgNote  E3
		        waitL    12
		        psgNoteL E3,6
		        psgNote  E3
		        psgNote  Fs3
		        psgNote  Fs3
		        wait
		        psgNote  E3
		        wait
		        psgNote  Fs3
		        psgNote  Ds3
		        wait
		  psgInst 00h
		        waitL    12
		  psgInst 02Bh
		        psgNoteL E3,6
		        psgNote  E3
		        waitL    12
		        psgNoteL E3,6
		        waitL    0
		        psgNoteL E3,6
		        waitL    0
		        psgNoteL Fs3,6
		        waitL    0
		        psgNoteL Fs3,6
		        wait
		        psgNoteL Ds3,9
		  psgInst 00h
		        waitL    21
		mainLoopStart
		countedLoopStart 19
		        waitL    12
		  psgInst 029h
		        psgNoteL E3,6
		        psgNote  E3
		        waitL    12
		        psgNoteL E3,6
		        psgNote  E3
		countedLoopEnd
		  psgInst 02Bh
		countedLoopStart 2
		        psgNoteL Fs3,6
		        psgNote  Fs3
		        wait
		        psgNote  E3
		countedLoopEnd
		        psgNoteL Fs3,6
		        wait
		        psgNote  Fs3
		        psgNote  Gs3
		  psgInst 00h
		        wait
		  psgInst 029h
		countedLoopStart 3
		        psgNoteL E3,6
		        psgNote  E3
		        wait
		countedLoopEnd
		        psgNoteL E3,6
		countedLoopStart 1
		        waitL    6
		        psgNote  E3
		        psgNote  E3
		countedLoopEnd
		        waitL    12
		        psgNoteL E3,6
		        psgNote  E3
		        waitL    18
		        psgNoteL E3,6
		        psgNote  E3
		        wait
		        psgNote  E3
		        psgNote  E3
		  psgInst 02Bh
		countedLoopStart 2
		        psgNoteL Fs3,6
		        psgNote  Fs3
		        wait
		        psgNote  E3
		countedLoopEnd
		        psgNoteL Fs3,6
		        psgNote  A3
		        wait
		        psgNote  Gs3
		  psgInst 00h
		        wait
		  psgInst 029h
		countedLoopStart 3
		        psgNoteL E3,6
		        psgNote  E3
		        wait
		countedLoopEnd
		        psgNoteL E3,6
		countedLoopStart 1
		        waitL    6
		        psgNote  E3
		        psgNote  E3
		countedLoopEnd
		        waitL    12
		        psgNoteL E3,6
		        psgNote  E3
		        waitL    18
		        psgNoteL E3,6
		        psgNote  E3
		        wait
		        psgNote  E3
		        psgNote  E3
		countedLoopStart 7
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNoteL D3,6
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		  psgInst 00h
		        waitL    12
		  psgInst 029h
		        psgNoteL E3,6
		        psgNote  E3
		countedLoopEnd
		  psgInst 02Bh
		        psgNoteL E3,6
		        wait
		        psgNote  Fs3
		        wait
		        psgNote  Ds3
		        wait
		        psgNote  E3
		        wait
		  psgInst 00h
		        waitL    48
		mainLoopEnd
Music36_Channel9:
		channel_end
