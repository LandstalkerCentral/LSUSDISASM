
; ASM FILE music47.asm :
; 0xD7CC..0xDD2D : Music 47
Music47:        db 0
		db 0
		db 0
		db 0C9h
		dw Music47_Channel0
		dw Music47_Channel1
		dw Music47_Channel2
		dw Music47_Channel3
		dw Music47_Channel4
		dw Music47_Channel5
		dw Music47_Channel6
		dw Music47_Channel7
		dw Music47_Channel9
		dw Music47_Channel9
Music47_Channel0:
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		  inst 13
		  vol 0Bh
		repeatStart
		        noteL D6,6
		        wait
		        noteL Cs6,84
		        waitL 12
		        noteL D6,24
		        noteL Cs6,6
		        wait
		repeatSection1Start
		        noteL F6,18
		        note  E6
		        noteL Cs6,6
		        wait
		repeatEnd
		repeatSection2Start
		        noteL Gs6,18
		        note  G6
		        noteL F6,6
		        wait
		  inst 26
		  vol 0Ah
		        note  Cs5
		        note  D5
		        note  Cs5
		        note  D5
		        note  E5
		        note  F5
		        note  E5
		        note  F5
		        note  Gs5
		        note  A5
		        note  Gs5
		        note  A5
		        note  C6
		        note  Cs6
		        note  C6
		        note  Cs6
		        note  D6
		        note  E6
		        note  D6
		        note  E6
		        note  F6
		        note  G6
		        note  F6
		        note  G6
		        note  Gs6
		        note  A6
		        note  Gs6
		        note  A6
		        note  C7
		        note  Cs7
		        note  C7
		        note  Cs7
		        note  D7
		        waitL 18
		  inst 13
		  vol 0Bh
		repeatStart
		        noteL A5,24
		        noteL D6,18
		        note  Cs6
		        noteL C6,6
		        wait
		        noteL B5,96
		repeatSection1Start
		        waitL 24
		repeatEnd
		repeatSection2Start
		        noteL A5,6
		        noteL A5,4
		        waitL 8
		        noteL A5,4
		        waitL 8
		        noteL A5,24
		        waitL 6
		        note  B5
		        noteL B5,4
		        waitL 8
		        noteL B5,6
		        note  C6
		        noteL C6,4
		        waitL 8
		        noteL C6,4
		        waitL 8
		        noteL C6,24
		        waitL 6
		        note  D6
		        noteL D6,4
		        waitL 8
		        noteL D6,6
		countedLoopStart 1
		        noteL Ds6,6
		        note  Ds6
		        noteL Ds6,4
		        waitL 20
		countedLoopEnd
		countedLoopStart 2
		        noteL Ds6,6
		        note  Ds6
		        noteL Ds6,4
		        waitL 8
		countedLoopEnd
		        waitL 48
		mainLoopEnd
Music47_Channel1:
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		countedLoopStart 1
		  inst 13
		  vol 0Ah
		        noteL A5,6
		        wait
		        noteL A5,60
		        waitL 12
		        noteL Gs5,66
		        waitL 12
		        noteL Gs5,18
		        noteL Gs5,6
		        wait
		countedLoopEnd
		  inst 26
		  vol 0Ah
		        noteL E4,6
		        note  F4
		        note  E4
		        note  F4
		        note  Gs4
		        note  A4
		        note  Gs4
		        note  A4
		        note  C5
		        note  Cs5
		        note  C5
		        note  Cs5
		        note  E5
		        note  F5
		        note  E5
		        note  F5
		        note  F5
		        note  G5
		        note  F5
		        note  G5
		        note  A5
		        note  As5
		        note  A5
		        note  As5
		        note  C6
		        note  Cs6
		        note  C6
		        note  Cs6
		        note  E6
		        note  F6
		        note  E6
		        note  F6
		        noteL F6,96
		repeatStart
		        waitL 24
		        note  D6
		        noteL G6,18
		        note  F6
		        noteL E6,6
		        wait
		repeatSection1Start
		        noteL D6,96
		repeatEnd
		repeatSection2Start
		  inst 13
		  vol 0Ah
		        noteL F5,6
		        noteL F5,4
		        waitL 8
		        noteL F5,4
		        waitL 8
		        noteL F5,24
		        waitL 6
		        note  G5
		        noteL G5,4
		        waitL 8
		        noteL G5,6
		        note  A5
		        noteL A5,4
		        waitL 8
		        noteL A5,4
		        waitL 8
		        noteL A5,24
		        waitL 6
		        note  B5
		        noteL B5,4
		        waitL 8
		        noteL B5,6
		countedLoopStart 1
		        noteL As5,6
		        note  As5
		        noteL As5,4
		        waitL 20
		countedLoopEnd
		countedLoopStart 2
		        noteL As5,6
		        note  As5
		        noteL As5,4
		        waitL 8
		countedLoopEnd
		        waitL 48
		mainLoopEnd
Music47_Channel2:
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		countedLoopStart 1
		  inst 13
		  vol 0Ah
		        noteL F5,6
		        wait
		        noteL F5,60
		        waitL 12
		        noteL F5,66
		        waitL 12
		        noteL F5,18
		        noteL F5,6
		        wait
		countedLoopEnd
		  inst 26
		  vol 0Ah
		        noteL Cs4,6
		        note  D4
		        note  Cs4
		        note  D4
		        note  E4
		        note  F4
		        note  E4
		        note  F4
		        note  Gs4
		        note  A4
		        note  Gs4
		        note  A4
		        note  C5
		        note  Cs5
		        note  C5
		        note  Cs5
		        note  D5
		        note  E5
		        note  D5
		        note  E5
		        note  F5
		        note  G5
		        note  F5
		        note  G5
		        note  Gs5
		        note  A5
		        note  Gs5
		        note  A5
		        note  C6
		        note  Cs6
		        note  C6
		        note  Cs6
		        noteL D6,96
		repeatStart
		        waitL 24
		        note  F5
		        noteL B5,18
		        note  A5
		        noteL G5,6
		        wait
		repeatSection1Start
		        noteL F5,96
		repeatEnd
		repeatSection2Start
		  inst 13
		  vol 0Ah
		        noteL D5,6
		        noteL D5,4
		        waitL 8
		        noteL D5,4
		        waitL 8
		        noteL D5,24
		        waitL 6
		        note  E5
		        noteL E5,4
		        waitL 8
		        noteL E5,6
		        note  F5
		        noteL F5,4
		        waitL 8
		        noteL F5,4
		        waitL 8
		        noteL F5,24
		        waitL 6
		        note  G5
		        noteL G5,4
		        waitL 8
		        noteL G5,6
		countedLoopStart 1
		        noteL Gs5,6
		        note  Gs5
		        noteL Gs5,4
		        waitL 20
		countedLoopEnd
		countedLoopStart 2
		        noteL Gs5,6
		        note  Gs5
		        noteL Gs5,4
		        waitL 8
		countedLoopEnd
		        waitL 48
		mainLoopEnd
Music47_Channel3:
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		countedLoopStart 1
		  inst 25
		  vol 0Ch
		        noteL D3,6
		        waitL 30
		        noteL A3,6
		        waitL 18
		        noteL A2,6
		        waitL 18
		        noteL As2,108
		countedLoopEnd
		        waitL 12
		        noteL D3,6
		        waitL 18
		        noteL D3,6
		        waitL 18
		        noteL D3,6
		        waitL 18
		        noteL D3,6
		        wait
		        waitL 12
		        noteL C3,6
		        waitL 18
		        noteL B2,6
		        waitL 18
		        noteL As2,6
		        waitL 18
		        noteL A2,6
		        wait
		countedLoopStart 3
		        noteL D3,54
		        waitL 12
		        noteL D3,18
		        noteL D3,6
		        wait
		countedLoopEnd
		        noteL D3,6
		        noteL D3,4
		        waitL 8
		        noteL D3,4
		        waitL 8
		        noteL D3,24
		        waitL 6
		        note  C3
		        noteL C3,4
		        waitL 8
		        noteL C3,6
		        note  As2
		        noteL As2,4
		        waitL 8
		        noteL As2,4
		        waitL 8
		        noteL As2,24
		        waitL 6
		        note  Gs2
		        noteL Gs2,4
		        waitL 8
		        noteL Gs2,6
		        note  Fs3
		        wait
		        note  Cs3
		        waitL 18
		        noteL Ds3,6
		        wait
		        note  Gs2
		        waitL 18
		        noteL As2,6
		        wait
		        note  Cs3
		        wait
		        note  Ds3
		        wait
		        note  Fs3
		        wait
		        note  Gs3
		        wait
		        note  Cs4
		        waitL 54
		mainLoopEnd
Music47_Channel4:
		  shifting 020h
		        waitL 6
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		  stereo 040h
		  inst 13
		  vol 09h
		repeatStart
		        noteL D6,6
		        wait
		        noteL Cs6,84
		        waitL 12
		        noteL D6,24
		        noteL Cs6,6
		        wait
		repeatSection1Start
		        noteL F6,18
		        note  E6
		        noteL Cs6,6
		        wait
		repeatEnd
		repeatSection2Start
		        noteL Gs6,18
		        note  G6
		        noteL F6,6
		        wait
		  inst 26
		  vol 08h
		  stereo 080h
		        note  Cs5
		        note  D5
		        note  Cs5
		        note  D5
		        note  E5
		        note  F5
		        note  E5
		        note  F5
		        note  Gs5
		        note  A5
		        note  Gs5
		        note  A5
		        note  C6
		        note  Cs6
		        note  C6
		        note  Cs6
		        note  D6
		        note  E6
		        note  D6
		        note  E6
		        note  F6
		        note  G6
		        note  F6
		        note  G6
		        note  Gs6
		        note  A6
		        note  Gs6
		        note  A6
		        note  C7
		        note  Cs7
		        note  C7
		        note  Cs7
		        note  D7
		        waitL 18
		  inst 13
		  vol 09h
		  stereo 040h
		repeatStart
		        noteL A5,24
		        noteL D6,18
		        note  Cs6
		        noteL C6,6
		        wait
		        noteL B5,96
		repeatSection1Start
		        waitL 24
		repeatEnd
		repeatSection2Start
		  stereo 0C0h
		        noteL A5,6
		        noteL A5,4
		        waitL 8
		        noteL A5,4
		        waitL 8
		        noteL A5,24
		        waitL 6
		        note  B5
		        noteL B5,4
		        waitL 8
		        noteL B5,6
		        note  C6
		        noteL C6,4
		        waitL 8
		        noteL C6,4
		        waitL 8
		        noteL C6,24
		        waitL 6
		        note  D6
		        noteL D6,4
		        waitL 8
		        noteL D6,6
		countedLoopStart 1
		        noteL Ds6,6
		        note  Ds6
		        noteL Ds6,4
		        waitL 20
		countedLoopEnd
		countedLoopStart 2
		        noteL Ds6,6
		        note  Ds6
		        noteL Ds6,4
		        waitL 8
		countedLoopEnd
		        waitL 48
		mainLoopEnd
Music47_Channel5:
		mainLoopStart
		countedLoopStart 1
		        sampleL 5,12
		        sampleL 5,24
		        sampleL 9,6
		        sample  10
		        sampleL 9,12
		        sampleL 10,6
		        sample  10
		        sampleL 9,12
		        sample  9
		        waitL 48
		        sampleL 9,6
		        sample  11
		        sample  11
		        sample  9
		        sample  11
		        sample  11
		        sample  9
		        sample  11
		countedLoopEnd
		        sampleL 11,6
		        sample  11
		        sample  11
		        sample  11
		        sample  10
		        sample  11
		        sample  11
		        sample  11
		        sample  10
		        sample  11
		        sample  11
		        sample  11
		        sample  10
		        sample  11
		        sample  11
		        sample  11
		        sample  9
		        sample  10
		        sample  10
		        sample  10
		        sample  9
		        sample  10
		        sample  10
		        sample  10
		        sample  9
		        sample  10
		        sample  10
		        sample  10
		        sample  9
		        sample  10
		        sample  10
		        sample  10
		countedLoopStart 1
		        sampleL 9,24
		        sampleL 5,42
		        sampleL 0,18
		        sampleL 0,12
		        sample  0
		        sampleL 11,3
		        sampleL 11,2
		        sample  11
		        sample  11
		        sampleL 10,3
		        sampleL 9,24
		        sampleL 9,12
		        sampleL 10,6
		        sampleL 9,12
		        sampleL 10,6
		        sampleL 9,12
		countedLoopEnd
		countedLoopStart 1
		        sampleL 9,6
		        sampleL 9,12
		        sample  9
		        sampleL 0,6
		        sampleL 0,12
		        sample  0
		        sampleL 9,6
		        sampleL 9,12
		        sampleL 9,6
		countedLoopEnd
		countedLoopStart 1
		        sampleL 5,12
		        sample  5
		        sample  9
		countedLoopEnd
		        sampleL 9,6
		        sample  10
		        sampleL 9,12
		countedLoopStart 3
		        sampleL 5,12
		countedLoopEnd
		        waitL 6
		        sample  11
		        sample  11
		        sample  10
		        sampleL 9,12
		        sample  0
		mainLoopEnd
Music47_Channel6:
		  setRelease 01h
		  vibrato 04Ch
		mainLoopStart
		  psgInst 00h
		        waitL    96
		countedLoopStart 3
		  psgInst 07Bh
		        psgNoteL As4,6
		        psgNote  B4
		        psgNote  D5
		        psgNote  F5
		countedLoopEnd
		  psgInst 00h
		        waitL    96
		countedLoopStart 3
		  psgInst 07Bh
		        psgNoteL As4,6
		        psgNote  B4
		        psgNote  D5
		        psgNote  F5
		countedLoopEnd
		countedLoopStart 1
		  psgInst 00h
		        waitL    12
		  psgInst 07Ah
		        psgNoteL A3,6
		  psgInst 00h
		        waitL    18
		  psgInst 07Ah
		        psgNoteL A3,6
		  psgInst 00h
		        waitL    18
		  psgInst 07Ah
		        psgNoteL A3,6
		  psgInst 00h
		        waitL    18
		  psgInst 07Ah
		        psgNoteL A3,6
		  psgInst 00h
		        wait
		countedLoopEnd
		  psgInst 07Ah
		countedLoopStart 3
		        psgNoteL D3,6
		        psgNote  F3
		        psgNote  A3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D3,6
		        psgNote  G3
		        psgNote  B3
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D3,6
		        psgNote  F3
		        psgNote  A3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D3,6
		        psgNote  G3
		        psgNote  B3
		        psgNote  G3
		countedLoopEnd
		  psgInst 00h
		        waitL    24
		  psgInst 01Bh
		        psgNoteL D5,6
		        psgNote  A4
		        psgNote  F4
		        psgNote  D4
		  psgInst 00h
		        waitL    36
		        waitL    24
		  psgInst 01Bh
		        psgNoteL C5,6
		        psgNote  A4
		        psgNote  F4
		        psgNote  C4
		  psgInst 00h
		        waitL    36
		countedLoopStart 1
		  psgInst 01Bh
		        psgNoteL As4,6
		        psgNote  As4
		        psgNote  As4
		  psgInst 00h
		        waitL    18
		countedLoopEnd
		countedLoopStart 2
		  psgInst 01Bh
		        psgNoteL As4,6
		        psgNote  As4
		        psgNote  As4
		  psgInst 00h
		        wait
		countedLoopEnd
		        waitL    48
		mainLoopEnd
Music47_Channel7:
		  setRelease 01h
		  vibrato 04Ch
		mainLoopStart
		  psgInst 00h
		        waitL    99
		countedLoopStart 3
		  setRelease 07Ch
		        psgNoteL As4,6
		        psgNote  B4
		        psgNote  D5
		        psgNote  F5
		countedLoopEnd
		  psgInst 00h
		        waitL    96
		countedLoopStart 3
		  psgInst 079h
		        psgNoteL As4,6
		        psgNote  B4
		        psgNote  D5
		        psgNote  F5
		countedLoopEnd
		  psgInst 00h
		        waitL    9
		  psgInst 07Ah
		        psgNoteL F3,6
		  psgInst 00h
		        waitL    18
		  psgInst 07Ah
		        psgNoteL F3,6
		  psgInst 00h
		        waitL    18
		  psgInst 07Ah
		        psgNoteL F3,6
		  psgInst 00h
		        waitL    18
		  psgInst 07Ah
		        psgNoteL F3,6
		  psgInst 00h
		        wait
		        waitL    12
		  psgInst 07Ah
		        psgNoteL F3,6
		  psgInst 00h
		        waitL    18
		  psgInst 07Ah
		        psgNoteL F3,6
		  psgInst 00h
		        waitL    18
		  psgInst 07Ah
		        psgNoteL F3,6
		  psgInst 00h
		        waitL    18
		  psgInst 07Ah
		        psgNoteL F3,6
		  psgInst 00h
		        waitL    9
		countedLoopStart 3
		  psgInst 078h
		        psgNoteL D3,6
		        psgNote  F3
		        psgNote  A3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D3,6
		        psgNote  G3
		        psgNote  B3
		        psgNote  G3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D3,6
		        psgNote  F3
		        psgNote  A3
		        psgNote  F3
		countedLoopEnd
		countedLoopStart 3
		        psgNoteL D3,6
		        psgNote  G3
		        psgNote  B3
		        psgNote  G3
		countedLoopEnd
		  psgInst 00h
		        waitL    24
		  psgInst 019h
		        psgNoteL D5,6
		        psgNote  A4
		        psgNote  F4
		        psgNote  D4
		  psgInst 00h
		        waitL    36
		        waitL    24
		  psgInst 019h
		        psgNoteL C5,6
		        psgNote  A4
		        psgNote  F4
		        psgNote  C4
		  psgInst 00h
		        waitL    33
		countedLoopStart 1
		  psgInst 01Bh
		        psgNoteL Gs4,6
		        psgNote  Gs4
		        psgNote  Gs4
		  psgInst 00h
		        waitL    18
		countedLoopEnd
		countedLoopStart 2
		  psgInst 01Bh
		        psgNoteL Gs4,6
		        psgNote  Gs4
		        psgNote  Gs4
		  psgInst 00h
		        wait
		countedLoopEnd
		        waitL    48
		mainLoopEnd
Music47_Channel9:
		channel_end
		db 0F0h 
		db    0
		db 0FFh
		db    0
		db    0
		db    2
		db  21h 
		db 0DDh 
		db  21h 
		db 0DDh 
		db  21h 
		db 0DDh 
