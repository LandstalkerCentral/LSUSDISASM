
; ASM FILE music35.asm :
; 0xCDD1..0xD277 : Music 35
Music_35:       db 0
		db 0
		db 0
		db 0B5h
		dw Music_35_Channel_0
		dw Music_35_Channel_1
		dw Music_35_Channel_2
		dw Music_35_Channel_3
		dw Music_35_Channel_4
		dw Music_35_Channel_5
		dw Music_35_Channel_6
		dw Music_35_Channel_7
		dw Music_35_Channel_9
		dw Music_35_Channel_9
Music_35_Channel_0:
		mainLoopStart
		  inst 53
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		        noteL A4,48
		        note  E5
		        noteL Ds5,24
		        note  B4
		        note  G4
		        note  A4
		        noteL Fs4,60
		        waitL 12
		        noteL Fs4,6
		        wait
		        note  Fs4
		        wait
		        noteL G4,90
		        waitL 6
		        noteL As4,48
		        note  Fs5
		        noteL F5,24
		        note  Cs5
		        note  A4
		        note  As4
		        noteL E5,60
		        waitL 12
		        noteL E5,6
		        wait
		        note  E5
		        wait
		        noteL F5,90
		        waitL 6
		  inst 58
		  vol 0Ah
		  setRelease 06h
		        noteL Gs6,12
		        note  Ds6
		        note  D6
		  setRelease 01h
		        noteL A5,36
		  setRelease 06h
		        noteL Gs6,12
		        note  Ds6
		        note  D6
		        note  A5
		  setRelease 01h
		        noteL As6,72
		  setRelease 06h
		        noteL G6,12
		        note  D6
		        note  Cs6
		  setRelease 01h
		        noteL Gs5,36
		  setRelease 06h
		        noteL G6,12
		        note  D6
		        note  Cs6
		        note  Gs5
		  setRelease 01h
		        noteL A6,72
		  inst 13
		  vol 0Ah
		        waitL 12
		  setRelease 06h
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        wait
		        note  G5
		        note  Fs5
		        note  G5
		        noteL As5,24
		        note  As5
		        noteL G5,12
		        wait
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        wait
		        note  Gs5
		        note  G5
		        note  Gs5
		        noteL B5,24
		        note  B5
		        noteL Gs5,12
		        wait
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        noteL Cs6,30
		        waitL 6
		        noteL Cs6,12
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        wait
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        noteL Cs6,24
		        noteL Cs6,12
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        wait
		        note  Cs6
		        note  C6
		        noteL Cs6,18
		        waitL 6
		        noteL F6,24
		        note  F6
		mainLoopEnd
Music_35_Channel_1:
		  inst 35
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL A2,16
		        note  A2
		        note  A2
		        waitL 24
		        noteL A2,12
		        note  A2
		        noteL A2,16
		        note  A2
		        note  A2
		        waitL 12
		        note  A2
		        note  A2
		        note  A2
		        noteL A2,16
		        note  A2
		        note  A2
		        waitL 24
		        noteL A2,12
		        note  A2
		        noteL A2,16
		        note  A2
		        note  A2
		        waitL 12
		        note  A2
		        note  A2
		        note  Gs2
		        noteL G2,16
		        note  G2
		        note  G2
		        waitL 24
		        noteL G2,12
		        note  G2
		        noteL G2,16
		        note  G2
		        note  G2
		        waitL 12
		        note  G2
		        note  G2
		        note  G2
		        noteL G2,16
		        note  G2
		        note  G2
		        waitL 24
		        noteL G2,12
		        note  G2
		        noteL Fs2,16
		        note  Fs2
		        note  Fs2
		        waitL 12
		        note  Fs2
		        note  Fs2
		        note  Fs2
		        noteL F2,96
		        note  F2
		        note  B2
		        note  B2
		        waitL 12
		        note  E3
		        note  E3
		        note  E3
		        note  E3
		        wait
		        note  E3
		        note  Ds3
		        note  E3
		        noteL B2,24
		        note  B2
		        noteL E3,12
		        wait
		        note  B2
		        note  B2
		        note  B2
		        note  B2
		        wait
		        note  B2
		        note  As2
		        note  B2
		        noteL Gs2,24
		        note  Gs2
		        noteL B2,12
		        wait
		        note  F2
		        note  F2
		        note  F2
		        noteL F2,30
		        waitL 6
		        noteL F2,12
		        note  F2
		        note  F2
		        note  F2
		        wait
		        note  F2
		        note  F2
		        note  F2
		        noteL F2,24
		        noteL F2,12
		        note  F2
		        note  F2
		        note  F2
		        wait
		        note  F3
		        note  F2
		        note  F2
		        wait
		        noteL E2,24
		        note  E2
		mainLoopEnd
Music_35_Channel_2:
		mainLoopStart
		  stereo 0C0h
		  inst 18
		  vol 07h
		  setRelease 01h
		  vibrato 02Ch
		        noteL E5,96
		        note  Ds5
		        note  D5
		        note  Cs5
		        note  D5
		        note  Cs5
		        note  B4
		        note  C5
		  vol 09h
		        noteL A5,12
		        waitL 24
		        noteL F5,60
		        noteL A5,12
		        wait
		        noteL F5,72
		        noteL F5,12
		        waitL 24
		        noteL D5,60
		        noteL F5,12
		        wait
		        noteL D5,72
		  stereo 040h
		  inst 35
		  vol 0Ah
		        waitL 12
		  setRelease 06h
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        wait
		        note  G5
		        note  Fs5
		        note  G5
		        noteL As5,24
		        note  As5
		        noteL G5,12
		        wait
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        wait
		        note  Gs5
		        note  G5
		        note  Gs5
		        noteL B5,24
		        note  B5
		        noteL Gs5,12
		        wait
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        noteL Cs6,30
		        waitL 6
		        noteL Cs6,12
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        wait
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        noteL Cs6,24
		        noteL Cs6,12
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        wait
		        note  Cs6
		        note  C6
		        noteL Cs6,18
		        waitL 6
		        noteL F6,24
		        note  F6
		mainLoopEnd
Music_35_Channel_3:
		mainLoopStart
		  inst 30
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL A2,96
		        note  A2
		        note  A2
		        noteL A2,72
		        noteL A2,12
		        note  Gs2
		        noteL G2,96
		        note  G2
		        noteL G2,72
		        noteL G2,12
		        note  G2
		        noteL Fs2,96
		        noteL F2,60
		        noteL B2,6
		        wait
		        noteL F2,30
		        waitL 6
		        note  B2
		        wait
		        note  E3
		        wait
		        note  F3
		        wait
		        note  Gs3
		        wait
		  setSlide 013h
		        noteL B3,24
		  noSlide
		        noteL Gs3,6
		        wait
		        noteL B2,60
		        noteL F3,6
		        wait
		        noteL B2,30
		        waitL 6
		        note  F2
		        wait
		        note  As2
		        wait
		        note  B2
		        wait
		        note  D3
		        wait
		  setSlide 010h
		        noteL F3,24
		  noSlide
		        noteL D3,6
		        wait
		        waitL 12
		  setRelease 06h
		        note  E3
		        note  E3
		        note  E3
		        note  E3
		        wait
		        note  E3
		        note  Ds3
		        note  E3
		        noteL B2,24
		        note  B2
		        noteL E3,12
		        wait
		        note  B2
		        note  B2
		        note  B2
		        note  B2
		        wait
		        note  B2
		        note  As2
		        note  B2
		        noteL Gs2,24
		        note  Gs2
		        noteL B2,12
		        wait
		        note  F2
		        note  F2
		        note  F2
		        noteL F2,30
		        waitL 6
		        noteL F2,12
		        note  F2
		        note  F2
		        note  F2
		        wait
		        note  F2
		        note  F2
		        note  F2
		        noteL F2,24
		        noteL F2,12
		        note  F2
		        note  F2
		        note  F2
		        wait
		        note  F3
		        note  F2
		        note  F2
		        wait
		        noteL E2,24
		        note  E2
		mainLoopEnd
Music_35_Channel_4:
		  shifting 020h
		        waitL 6
		mainLoopStart
		  stereo 080h
		  inst 53
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL A4,48
		        note  E5
		        noteL Ds5,24
		        note  B4
		        note  G4
		        note  A4
		        noteL Fs4,60
		        waitL 12
		        noteL Fs4,6
		        wait
		        note  Fs4
		        wait
		        noteL G4,90
		        waitL 6
		        noteL As4,48
		        note  Fs5
		        noteL F5,24
		        note  Cs5
		        note  A4
		        note  As4
		        noteL E5,60
		        waitL 12
		        noteL E5,6
		        wait
		        note  E5
		        wait
		        noteL F5,90
		        waitL 6
		  stereo 040h
		  inst 58
		  vol 08h
		  setRelease 06h
		        noteL Gs6,12
		        note  Ds6
		        note  D6
		  setRelease 01h
		        noteL A5,36
		  setRelease 06h
		        noteL Gs6,12
		        note  Ds6
		        note  D6
		        note  A5
		  setRelease 01h
		        noteL As6,72
		  setRelease 06h
		        noteL G6,12
		        note  D6
		        note  Cs6
		  setRelease 01h
		        noteL Gs5,36
		  setRelease 06h
		        noteL G6,12
		        note  D6
		        note  Cs6
		        note  Gs5
		  setRelease 01h
		        noteL A6,72
		  stereo 080h
		  inst 13
		  vol 09h
		        waitL 12
		  setRelease 06h
		        note  G5
		        note  G5
		        note  G5
		        note  G5
		        wait
		        note  G5
		        note  Fs5
		        note  G5
		        noteL As5,24
		        note  As5
		        noteL G5,12
		        wait
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        note  Gs5
		        wait
		        note  Gs5
		        note  G5
		        note  Gs5
		        noteL B5,24
		        note  B5
		        noteL Gs5,12
		        wait
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        noteL Cs6,30
		        waitL 6
		        noteL Cs6,12
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        wait
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        noteL Cs6,24
		        noteL Cs6,12
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        wait
		        note  Cs6
		        note  C6
		        noteL Cs6,18
		        waitL 6
		        noteL F6,24
		        note  F6
		mainLoopEnd
Music_35_Channel_5:
		mainLoopStart
		countedLoopStart 6
		        sampleL 9,16
		        sample  10
		        sample  11
		        waitL 48
		countedLoopEnd
		        sampleL 9,16
		        sample  10
		        sample  11
		        waitL 12
		  stereo 080h
		        sample  2
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sample  4
		  stereo 0C0h
		countedLoopStart 1
		        sampleL 5,96
		        waitL 54
		        sampleL 0,6
		        sample  0
		        sample  0
		        sample  1
		        sampleL 1,18
		countedLoopEnd
		        sampleL 0,12
		        sample  1
		        sample  1
		        sample  1
		        sampleL 1,24
		        sampleL 1,12
		        sample  1
		        sample  1
		        sample  0
		        sample  0
		        sample  1
		        sample  0
		        sample  1
		        sample  0
		        sample  1
		        sample  1
		        sample  1
		        sampleL 1,24
		        sampleL 1,12
		        sample  1
		        sample  1
		        sample  0
		        sample  0
		        sample  1
		        sample  0
		        sample  1
		        sample  0
		        sample  1
		        sample  1
		        sample  1
		        sample  1
		  stereo 080h
		        sampleL 2,6
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sampleL 4,12
		  stereo 0C0h
		        sample  1
		        sample  1
		        sample  1
		        sampleL 1,6
		  stereo 080h
		        sample  2
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sample  4
		  stereo 0C0h
		        sampleL 1,12
		        sample  1
		        sample  1
		        sample  1
		        sample  0
		        sample  1
		        sample  1
		        sample  1
		        sampleL 1,6
		        sample  0
		        sampleL 0,12
		        sample  1
		        sample  1
		        sampleL 0,24
		        sampleL 1,12
		        sampleL 11,4
		        sample  10
		        sample  9
		        sampleL 1,24
		mainLoopEnd
Music_35_Channel_6:
		mainLoopStart
		  psgInst 078h
		  setRelease 01h
		  vibrato 04Ch
		        psgNoteL C3,96
		        psgNote  B2
		        psgNote  As2
		        psgNote  A2
		        psgNote  As2
		        psgNote  A2
		        psgNote  Gs2
		        psgNote  A2
		  psgInst 07Ah
		        psgNoteL F3,12
		        waitL 24
		        psgNoteL D3,60
		        psgNoteL F3,12
		        wait
		        psgNoteL D3,72
		        psgNoteL B2,12
		        waitL 24
		        psgNoteL B2,60
		        psgNoteL B2,12
		        wait
		        psgNoteL B2,72
		  psgInst 00h
		        waitL 12
		  psgInst 07Bh
		  setRelease 06h
		        psgNote  D3
		        psgNote  D3
		        psgNote  D3
		        psgNote  D3
		        wait
		        psgNote  D3
		        psgNote  Cs3
		        psgNote  D3
		        psgNoteL F3,24
		        psgNote  F3
		        psgNoteL D3,12
		  psgInst 00h
		        wait
		  psgInst 07Bh
		        psgNote  Ds3
		        psgNote  Ds3
		        psgNote  Ds3
		        psgNote  Ds3
		        wait
		        psgNote  Ds3
		        psgNote  D3
		        psgNote  Ds3
		        psgNoteL G3,24
		        psgNote  G3
		        psgNoteL Ds3,12
		  psgInst 00h
		        wait
		  psgInst 07Bh
		        psgNote  Gs3
		        psgNote  Gs3
		        psgNote  Gs3
		        psgNoteL Gs3,30
		        waitL 6
		        psgNoteL Gs3,12
		        psgNote  Gs3
		        psgNote  Gs3
		        psgNote  Gs3
		  psgInst 00h
		        wait
		  psgInst 07Bh
		        psgNote  Gs3
		        psgNote  Gs3
		        psgNote  Gs3
		        psgNoteL Gs3,24
		        psgNoteL Gs3,12
		        psgNote  Gs3
		        psgNote  Gs3
		        psgNote  Gs3
		  psgInst 00h
		        wait
		  psgInst 07Bh
		        psgNote  Gs3
		        psgNote  G3
		        psgNoteL Gs3,18
		  psgInst 00h
		        waitL 6
		  psgInst 07Bh
		        psgNoteL Cs4,24
		        psgNote  Cs4
		mainLoopEnd
Music_35_Channel_7:
		mainLoopStart
		  psgInst 078h
		  setRelease 01h
		  vibrato 04Ch
		        psgNoteL A2,96
		        psgNote  G2
		        psgNote  Fs2
		        psgNote  F2
		        psgNote  G2
		        psgNote  F2
		        psgNote  E2
		        psgNote  F2
		  psgInst 07Ah
		        psgNoteL B2,12
		        waitL 24
		        psgNoteL B2,60
		        psgNoteL B2,12
		        wait
		        psgNoteL B2,72
		        psgNoteL Gs2,12
		        waitL 24
		        psgNoteL F2,60
		        psgNoteL Gs2,12
		        wait
		        psgNoteL F2,72
		  psgInst 00h
		        waitL 12
		  psgInst 07Bh
		  setRelease 06h
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNote  Gs2
		        psgNote  Gs2
		        wait
		        psgNote  Gs2
		        psgNote  G2
		        psgNote  Gs2
		        psgNoteL D3,24
		        psgNote  D3
		        psgNoteL Gs2,12
		  psgInst 00h
		        wait
		  psgInst 07Bh
		        psgNote  A2
		        psgNote  A2
		        psgNote  A2
		        psgNote  A2
		        wait
		        psgNote  A2
		        psgNote  Gs2
		        psgNote  A2
		        psgNoteL D3,24
		        psgNote  D3
		        psgNoteL A2,12
		  psgInst 00h
		        wait
		  psgInst 07Bh
		        psgNote  D3
		        psgNote  D3
		        psgNote  D3
		        psgNoteL D3,30
		        waitL 6
		        psgNoteL D3,12
		        psgNote  D3
		        psgNote  D3
		        psgNote  D3
		  psgInst 00h
		        wait
		  psgInst 07Bh
		        psgNote  D3
		        psgNote  D3
		        psgNote  D3
		        psgNoteL D3,24
		        psgNoteL D3,12
		        psgNote  D3
		        psgNote  D3
		        psgNote  D3
		  psgInst 00h
		        wait
		  psgInst 07Bh
		        psgNote  D3
		        psgNote  Cs3
		        psgNoteL D3,18
		  psgInst 00h
		        waitL 6
		  psgInst 07Bh
		        psgNoteL Gs3,24
		        psgNote  Gs3
		mainLoopEnd
Music_35_Channel_9:
		channel_end
