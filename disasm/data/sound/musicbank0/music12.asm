
; ASM FILE music12.asm :
; 0xD277..0xD938 : Music 12
Music31:        db 0
		db 0
		db 0
		db 0CEh
		dw Music31_Channel0
		dw Music31_Channel1
		dw Music31_Channel2
		dw Music31_Channel3
		dw Music31_Channel4
		dw Music31_Channel5
		dw Music31_Channel6
		dw Music31_Channel7
		dw Music31_Channel9
		dw Music31_Channel9
Music31_Channel0:
		  setRelease 01h
		  vibrato 02Ch
		        waitL 132
		  inst 51
		  vol 09h
		  noSlide
		        noteL A5,12
		mainLoopStart
		        noteL D6,24
		  setSlide 010h
		        noteL E6,60
		  noSlide
		        noteL A5,12
		        note  D6
		        note  E6
		        note  G6
		        note  F6
		        noteL E6,120
		        noteL D6,6
		        waitL 18
		  setSlide 01Eh
		  sustain
		        noteL A6,216
		  vibrato 020h
		  setRelease 01h
		        noteL A6,48
		        waitL 12
		  vibrato 02Ch
		  noSlide
		        note  D6
		        noteL G6,24
		  setSlide 010h
		        noteL A6,60
		  noSlide
		        noteL D6,12
		        note  G6
		        note  A6
		  setSlide 01Fh
		        note  C7
		        note  As6
		  noSlide
		        noteL A6,120
		        noteL G6,6
		        waitL 18
		  sustain
		  setSlide 020h
		        noteL E7,216
		  vibrato 020h
		  setRelease 01h
		        noteL E7,72
		  vibrato 02Ch
		  noSlide
		countedLoopStart 1
		        noteL F7,6
		        wait
		        note  B6
		        wait
		        note  C7
		        wait
		        noteL Fs6,36
		        noteL F7,6
		        wait
		        note  B6
		        wait
		        note  C7
		        wait
		        noteL Fs6,12
		        noteL Gs7,6
		        waitL 18
		        noteL E7,6
		        wait
		        note  As6
		        wait
		        note  B6
		        wait
		        noteL F6,36
		        noteL E7,6
		        wait
		        note  As6
		        wait
		        note  B6
		        wait
		        noteL F6,12
		        noteL G7,6
		        waitL 18
		countedLoopEnd
		  inst 13
		  vol 0Ah
		  setRelease 03h
		        noteL G5,12
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        note  Fs5
		countedLoopStart 1
		        noteL G5,12
		        note  Fs5
		        note  G5
		        noteL As5,24
		        note  As5
		        noteL Fs5,12
		countedLoopEnd
		        noteL G5,12
		        wait
		        noteL B5,24
		  setRelease 01h
		        noteL B5,12
		  inst 51
		  vol 0Bh
		        note  A5
		mainLoopEnd
Music31_Channel1:
		  setRelease 01h
		  vibrato 02Ch
		        waitL 132
		  inst 38
		  vol 0Bh
		        noteL A4,12
		mainLoopStart
		        noteL D5,24
		        noteL E5,60
		        noteL A4,12
		        note  D5
		        note  E5
		        note  G5
		        note  F5
		        noteL E5,120
		        noteL D5,6
		        waitL 18
		  sustain
		        noteL A5,216
		  vibrato 020h
		  setRelease 01h
		        noteL A5,48
		        waitL 12
		  vibrato 02Ch
		        note  D5
		        noteL G5,24
		        noteL A5,60
		        noteL D5,12
		        note  G5
		        note  A5
		        note  C6
		        note  As5
		        noteL A5,120
		        noteL G5,6
		        waitL 18
		  sustain
		        noteL E6,216
		  vibrato 020h
		  setRelease 01h
		        noteL E6,72
		  vibrato 02Ch
		  inst 60
		  vol 0Ch
		countedLoopStart 1
		        noteL F6,6
		        wait
		        note  B5
		        wait
		        note  C6
		        wait
		        noteL Fs5,36
		        noteL F6,6
		        wait
		        note  B5
		        wait
		        note  C6
		        wait
		        noteL Fs5,12
		        noteL Gs6,6
		        waitL 18
		        noteL E6,6
		        wait
		        note  As5
		        wait
		        note  B5
		        wait
		        noteL F5,36
		        noteL E6,6
		        wait
		        note  As5
		        wait
		        note  B5
		        wait
		        noteL F5,12
		        noteL G6,6
		        waitL 18
		countedLoopEnd
		  inst 13
		  vol 0Ah
		  setRelease 03h
		        noteL D5,12
		        note  D5
		        note  D5
		        note  D5
		        note  D5
		        note  Cs5
		countedLoopStart 1
		        noteL D5,12
		        note  Cs5
		        note  D5
		        noteL F5,24
		        note  F5
		        noteL D5,12
		countedLoopEnd
		        noteL Ds5,12
		        wait
		        noteL F5,24
		  setRelease 01h
		        noteL F5,12
		  inst 38
		  vol 0Bh
		        note  A4
		mainLoopEnd
Music31_Channel2:
		  setRelease 01h
		  vibrato 02Ch
		        waitL 138
		  shifting 020h
		  inst 51
		  stereo 080h
		  vol 09h
		  noSlide
		        noteL A5,12
		mainLoopStart
		        noteL D6,24
		  setSlide 010h
		        noteL E6,60
		  noSlide
		        noteL A5,12
		        note  D6
		        note  E6
		        note  G6
		        note  F6
		        noteL E6,120
		        noteL D6,6
		        waitL 18
		  setSlide 01Eh
		  sustain
		        noteL A6,216
		  vibrato 020h
		  setRelease 01h
		        noteL A6,48
		        waitL 12
		  noSlide
		  vibrato 02Ch
		        note  D6
		        noteL G6,24
		  setSlide 010h
		        noteL A6,60
		  noSlide
		        noteL D6,12
		        note  G6
		        note  A6
		  setSlide 01Fh
		        note  C7
		        note  As6
		  noSlide
		        noteL A6,120
		        noteL G6,6
		        waitL 18
		  sustain
		  setSlide 020h
		        noteL E7,216
		  vibrato 020h
		  setRelease 01h
		        noteL E7,72
		  stereo 040h
		  vibrato 02Ch
		  noSlide
		repeatStart
		        noteL F7,6
		        wait
		        note  B6
		        wait
		        note  C7
		        wait
		        noteL Fs6,36
		        noteL F7,6
		        wait
		        note  B6
		        wait
		        note  C7
		        wait
		        noteL Fs6,12
		        noteL Gs7,6
		        waitL 18
		        noteL E7,6
		        wait
		        note  As6
		        wait
		        note  B6
		        wait
		        noteL F6,36
		        noteL E7,6
		        wait
		        note  As6
		        wait
		        note  B6
		        wait
		        noteL F6,12
		        noteL G7,6
		repeatSection1Start
		        waitL 18
		repeatEnd
		repeatSection2Start
		        waitL 12
		  shifting 00h
		  stereo 0C0h
		  inst 13
		  vol 0Ah
		  setRelease 03h
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  Gs4
		        note  G4
		countedLoopStart 1
		        noteL Gs4,12
		        note  G4
		        note  Gs4
		        noteL B4,24
		        note  B4
		        noteL As4,12
		countedLoopEnd
		        noteL B4,12
		        wait
		        noteL Cs5,24
		        noteL Cs5,12
		        waitL 6
		  setRelease 01h
		  shifting 020h
		  stereo 080h
		  inst 51
		  vol 09h
		        noteL A5,12
		mainLoopEnd
Music31_Channel3:
		  inst 38
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		countedLoopStart 1
		        noteL D3,12
		  sustain
		        noteL Cs4,6
		  setRelease 01h
		        noteL D4,3
		        wait
		        note  D4
		        wait
		        note  D4
		        wait
		        note  D4
		        wait
		        note  D4
		        wait
		        noteL A3,5
		        waitL 7
		        noteL A2,5
		        waitL 7
		countedLoopEnd
		mainLoopStart
		countedLoopStart 7
		        noteL D3,12
		  sustain
		        noteL Cs4,6
		  setRelease 01h
		        noteL D4,3
		        wait
		        note  D4
		        wait
		        note  D4
		        wait
		        note  D4
		        wait
		        note  D4
		        wait
		        noteL A3,5
		        waitL 7
		        noteL A2,5
		        waitL 7
		countedLoopEnd
		countedLoopStart 7
		        noteL G2,12
		  sustain
		        noteL Fs3,6
		  setRelease 01h
		        noteL G3,3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        note  G3
		        wait
		        noteL D3,5
		        waitL 7
		        noteL D2,5
		        waitL 7
		countedLoopEnd
		  inst 29
		  vol 0Ch
		countedLoopStart 1
		        noteL D4,12
		        wait
		        noteL D4,5
		        waitL 7
		        noteL Gs3,5
		        waitL 7
		        noteL A3,5
		        waitL 7
		        noteL F3,17
		        waitL 7
		        noteL D4,5
		        waitL 7
		        noteL Gs3,5
		        waitL 7
		        noteL A3,5
		        waitL 7
		        noteL Fs3,5
		        waitL 7
		        noteL D4,5
		        waitL 7
		        noteL Cs4,12
		        wait
		        noteL Cs4,5
		        waitL 7
		        noteL G3,5
		        waitL 7
		        noteL Gs3,5
		        waitL 7
		        noteL E3,17
		        waitL 7
		        noteL Cs4,5
		        waitL 7
		        noteL G3,5
		        waitL 7
		        noteL Gs3,5
		        waitL 7
		        noteL F3,5
		        waitL 7
		        noteL Cs4,5
		        waitL 7
		countedLoopEnd
		  inst 38
		  vol 0Bh
		  setRelease 03h
		        noteL B2,12
		        note  B2
		        note  B2
		        note  B2
		        note  B2
		        note  As2
		        note  B2
		        note  As2
		        note  B2
		        noteL Gs2,24
		        note  Gs2
		        noteL E2,12
		        note  B2
		        note  As2
		        note  B2
		        noteL Gs2,24
		        note  Gs2
		        noteL Ds2,12
		        note  E2
		        wait
		        noteL A2,24
		        note  A2
		  setRelease 01h
		mainLoopEnd
Music31_Channel4:
		  stereo 040h
		  inst 61
		  setRelease 00h
		  vibrato 00h
		countedLoopStart 5
		  vol 0Dh
		        noteL A6,6
		  vol 09h
		        note  A6
		        note  A6
		        note  A6
		countedLoopEnd
		mainLoopStart
		  inst 61
		countedLoopStart 23
		  vol 0Dh
		        noteL A6,6
		  vol 09h
		        note  A6
		        note  A6
		        note  A6
		  vol 0Dh
		        note  A6
		  vol 09h
		        note  A6
		        note  A6
		        note  A6
		  vol 0Dh
		        note  A6
		  vol 09h
		        note  A6
		        note  A6
		        note  A6
		countedLoopEnd
		  vol 0Dh
		        noteL A6,6
		  vol 09h
		        note  A6
		  vol 0Dh
		        note  A6
		  vol 09h
		        note  A6
		  vol 0Dh
		        note  A6
		  vol 09h
		        note  A6
		  vol 0Dh
		        note  A6
		  vol 09h
		        note  A6
		  vol 0Dh
		        note  A6
		  vol 09h
		        note  A6
		  inst 62
		  vol 0Ch
		        noteL A6,12
		countedLoopStart 1
		  inst 61
		  vol 0Dh
		        noteL A6,6
		  vol 09h
		        note  A6
		  vol 0Dh
		        note  A6
		  vol 09h
		        note  A6
		  vol 0Dh
		        note  A6
		  vol 09h
		        note  A6
		  inst 62
		  vol 0Ch
		        noteL A6,12
		  inst 61
		  vol 0Dh
		        noteL A6,6
		  vol 09h
		        note  A6
		  inst 62
		  vol 0Ch
		        noteL A6,12
		  inst 61
		  vol 0Dh
		        noteL A6,6
		  vol 09h
		        note  A6
		  inst 62
		  vol 0Ch
		        noteL A6,12
		countedLoopEnd
		  inst 61
		  vol 0Dh
		        noteL A6,6
		  vol 09h
		        note  A6
		        note  A6
		        note  A6
		  inst 62
		  vol 0Ch
		        noteL A6,24
		        note  A6
		mainLoopEnd
Music31_Channel5:
		countedLoopStart 14
		        waitL 144
		countedLoopEnd
		        waitL 36
		        sampleL 0,12
		countedLoopStart 6
		        sampleL 0,60
		        sampleL 0,12
		        sample  0
		        sampleL 0,60
		countedLoopEnd
		        sampleL 0,60
		        sampleL 0,12
		        sample  0
		        sampleL 0,24
		        sampleL 1,12
		        sampleL 0,6
		        sample  0
		        sampleL 1,12
		countedLoopStart 1
		        sampleL 0,12
		        sampleL 0,36
		        sampleL 1,24
		        sampleL 0,12
		        sample  0
		  stereo 080h
		        sample  2
		  stereo 0C0h
		        sampleL 3,6
		        sample  3
		  stereo 040h
		        sampleL 4,12
		  stereo 0C0h
		        sample  1
		        sample  0
		        sampleL 0,36
		        sampleL 1,24
		        sampleL 0,12
		        sample  0
		        sample  1
		  stereo 080h
		        sampleL 2,4
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sample  4
		  stereo 0C0h
		        sampleL 1,12
		        sample  1
		countedLoopEnd
		        sampleL 0,6
		        sample  0
		        sampleL 1,24
		        sampleL 1,12
		        sampleL 0,6
		        sample  0
		        sampleL 1,12
		        sampleL 0,6
		        sample  0
		        sampleL 0,12
		        sample  0
		        sampleL 1,24
		        sampleL 1,12
		        sampleL 0,6
		        sample  0
		        sampleL 1,12
		        sample  1
		        sampleL 0,6
		        sample  0
		        sampleL 0,12
		        sampleL 1,24
		        sampleL 1,12
		        sampleL 0,6
		        sample  0
		        sampleL 1,12
		        sample  1
		        sampleL 0,6
		        sample  0
		        sampleL 1,24
		        sampleL 1,12
		        sample  0
		mainLoopStart
		countedLoopStart 6
		        sampleL 0,36
		        sampleL 1,24
		        sampleL 0,12
		        sample  0
		        sampleL 0,24
		        sampleL 1,36
		countedLoopEnd
		        sampleL 0,36
		        sampleL 1,24
		        sampleL 0,12
		        sample  0
		        sampleL 0,24
		        sampleL 1,12
		        sampleL 0,6
		        sample  0
		        sampleL 1,12
		countedLoopStart 1
		        sampleL 0,12
		        sampleL 0,36
		        sampleL 1,24
		        sampleL 0,12
		        sample  0
		  stereo 080h
		        sample  2
		  stereo 0C0h
		        sampleL 3,6
		        sample  3
		  stereo 040h
		        sampleL 4,12
		  stereo 0C0h
		        sample  1
		        sample  0
		        sampleL 0,36
		        sampleL 1,24
		        sampleL 0,12
		        sample  0
		        sample  1
		  stereo 080h
		        sampleL 2,4
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sample  4
		  stereo 0C0h
		        sampleL 1,12
		        sample  1
		countedLoopEnd
		        sampleL 0,6
		        sample  0
		        sampleL 1,24
		        sampleL 1,12
		        sampleL 0,6
		        sample  0
		        sampleL 1,12
		        sampleL 0,6
		        sample  0
		        sampleL 0,12
		        sample  0
		        sampleL 1,24
		        sampleL 1,12
		        sampleL 0,6
		        sample  0
		        sampleL 1,12
		        sample  1
		        sampleL 0,6
		        sample  0
		        sampleL 0,12
		        sampleL 1,24
		        sampleL 1,12
		        sampleL 0,6
		        sample  0
		        sampleL 1,12
		        sample  1
		        sampleL 0,6
		        sample  0
		        sampleL 1,24
		        sampleL 1,12
		        sample  0
		mainLoopEnd
Music31_Channel6:
		  psgInst 07Bh
		  setRelease 03h
		  vibrato 04Ch
		countedLoopStart 7
		        psgNoteL A3,6
		        psgNote  A3
		        psgNote  F3
		countedLoopEnd
		mainLoopStart
		countedLoopStart 3
		        psgNoteL A3,6
		        psgNote  A3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL B3,6
		        psgNote  B3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL C4,6
		        psgNote  C4
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL B3,6
		        psgNote  B3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL A3,6
		        psgNote  A3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL B3,6
		        psgNote  B3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL C4,6
		        psgNote  C4
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL B3,6
		        psgNote  B3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D4,6
		        psgNote  D4
		        psgNote  As3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL E4,6
		        psgNote  E4
		        psgNote  As3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL F4,6
		        psgNote  F4
		        psgNote  As3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL E4,6
		        psgNote  E4
		        psgNote  As3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D4,6
		        psgNote  D4
		        psgNote  As3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL E4,6
		        psgNote  E4
		        psgNote  As3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL F4,6
		        psgNote  F4
		        psgNote  As3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL E4,6
		        psgNote  E4
		        psgNote  As3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL A3,6
		        psgNote  A3
		        psgNote  Fs3
		        psgNote  C4
		        psgNote  C4
		        psgNote  Fs3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        psgNote  F3
		        psgNote  B3
		        psgNote  B3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL A3,6
		        psgNote  A3
		        psgNote  Fs3
		        psgNote  C4
		        psgNote  C4
		        psgNote  Fs3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL Gs3,6
		        psgNote  Gs3
		        psgNote  F3
		        psgNote  B3
		        psgNote  B3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 4
		        psgNoteL D4,6
		        psgNote  Gs3
		countedLoopEnd
		        psgNoteL Cs4,6
		        psgNote  G3
		countedLoopStart 1
		        psgNoteL D4,6
		        psgNote  Gs3
		        psgNote  Cs4
		        psgNote  G3
		        psgNote  D4
		        psgNote  Gs3
		        psgNote  D4
		        psgNote  Gs3
		        psgNote  D4
		        psgNote  Gs3
		        psgNote  D4
		        psgNote  Gs3
		        psgNote  D4
		        psgNote  Gs3
		        psgNote  D4
		        psgNote  As3
		countedLoopEnd
		        psgNoteL Ds4,6
		        psgNote  B3
		        psgNote  B3
		        psgNote  G3
		        psgNote  F3
		        psgNote  A3
		        psgNote  Cs4
		        psgNote  F4
		        psgNote  Cs4
		        psgNote  F4
		        psgNote  A4
		        psgNote  Cs5
		mainLoopEnd
Music31_Channel7:
		  psgInst 07Bh
		  setRelease 03h
		  vibrato 04Ch
		countedLoopStart 7
		        psgNoteL F3,6
		        psgNote  F3
		        psgNote  D3
		countedLoopEnd
		mainLoopStart
		countedLoopStart 3
		        psgNoteL F3,6
		        psgNote  F3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL G3,6
		        psgNote  G3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL A3,6
		        psgNote  A3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL G3,6
		        psgNote  G3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL F3,6
		        psgNote  F3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL G3,6
		        psgNote  G3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL A3,6
		        psgNote  A3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL G3,6
		        psgNote  G3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL As3,6
		        psgNote  As3
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL C4,6
		        psgNote  C4
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D4,6
		        psgNote  D4
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL C4,6
		        psgNote  C4
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL As3,6
		        psgNote  As3
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL C4,6
		        psgNote  C4
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D4,6
		        psgNote  D4
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL C4,6
		        psgNote  C4
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL Fs3,6
		        psgNote  Fs3
		        psgNote  D3
		        psgNote  A3
		        psgNote  A3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL F3,6
		        psgNote  F3
		        psgNote  Cs3
		        psgNote  Gs3
		        psgNote  Gs3
		        psgNote  Cs3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL Fs3,6
		        psgNote  Fs3
		        psgNote  D3
		        psgNote  A3
		        psgNote  A3
		        psgNote  D3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL F3,6
		        psgNote  F3
		        psgNote  Cs3
		        psgNote  Gs3
		        psgNote  Gs3
		        psgNote  Cs3
		countedLoopEnd
		countedLoopStart 4
		        psgNoteL B3,6
		        psgNote  F3
		countedLoopEnd
		        psgNoteL As3,6
		        psgNote  E3
		countedLoopStart 1
		        psgNoteL B3,6
		        psgNote  F3
		        psgNote  As3
		        psgNote  E3
		        psgNote  B3
		        psgNote  F3
		        psgNote  B3
		        psgNote  F3
		        psgNote  B3
		        psgNote  F3
		        psgNote  B3
		        psgNote  F3
		        psgNote  B3
		        psgNote  F3
		        psgNote  As3
		        psgNote  Fs3
		countedLoopEnd
		        psgNoteL B3,6
		        psgNote  G3
		        psgNote  G3
		        psgNote  Ds3
		        psgNote  Cs3
		        psgNote  F3
		        psgNote  A3
		        psgNote  Cs4
		        psgNote  A3
		        psgNote  Cs4
		        psgNote  F4
		        psgNote  A4
		mainLoopEnd
Music31_Channel9:
		channel_end
