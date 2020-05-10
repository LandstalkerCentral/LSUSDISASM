
; ASM FILE music35.asm :
; 0x847F..0x8C16 : Music 35
Music35:        db 0
		db 0
		db 0
		db 0B7h
		dw Music35_Channel0
		dw Music35_Channel1
		dw Music35_Channel2
		dw Music35_Channel3
		dw Music35_Channel4
		dw Music35_Channel5
		dw Music35_Channel6
		dw Music35_Channel7
		dw Music35_Channel9
		dw Music35_Channel9
Music35_Channel0:
		mainLoopStart
		  inst 30
		  vol 0Ah
		  setRelease 00h
		  vibrato 0A8h
		countedLoopStart 5
		        noteL D3,24
		        note  D3
		        note  D3
		        note  D3
		        note  D3
		        note  D3
		        note  G2
		        noteL A2,12
		countedLoopEnd
		countedLoopStart 3
		        noteL D3,24
		        note  D3
		        note  D3
		        note  D3
		        note  D3
		        note  D3
		        note  Fs2
		        noteL Gs2,12
		countedLoopEnd
		countedLoopStart 1
		        noteL As2,24
		        note  As2
		        note  As2
		        note  As2
		        note  As2
		        note  As2
		        note  Fs2
		        noteL Gs2,12
		countedLoopEnd
		        noteL G2,24
		        note  G2
		        note  Fs2
		        note  Fs2
		        note  E2
		        note  E2
		        note  E2
		        noteL B2,12
		countedLoopStart 4
		        noteL E3,24
		countedLoopEnd
		        noteL B2,24
		        note  E2
		        noteL E2,12
		        noteL A2,24
		        note  A2
		        note  Gs2
		        note  Gs2
		        note  Fs2
		        note  Fs2
		        note  Fs2
		        noteL Cs3,12
		countedLoopStart 4
		        noteL Fs3,24
		countedLoopEnd
		        noteL Cs3,24
		        note  Fs2
		        noteL Fs2,12
		countedLoopStart 1
		  vibrato 0A8h
		        noteL As2,24
		  vibrato 02Ah
		        noteL As2,6
		        wait
		        noteL Ds2,24
		        noteL Gs2,18
		  vibrato 0B6h
		        note  Cs3
		  vibrato 0A8h
		        noteL As2,24
		  vibrato 02Ah
		        noteL As2,6
		        wait
		        noteL Ds2,18
		        note  Gs2
		        noteL Cs2,12
		countedLoopEnd
		countedLoopStart 2
		        noteL As2,6
		        note  As2
		        note  As2
		        waitL 12
		countedLoopEnd
		        noteL As2,6
		        note  As2
		        note  As2
		  vibrato 0B8h
		        noteL As2,24
		        wait
		  vol 0Bh
		  vibrato 0A8h
		        note  As2
		mainLoopEnd
Music35_Channel1:
		mainLoopStart
		        waitL 180
		        wait
		  setRelease 01h
		  vibrato 02Ch
		  inst 60
		  vol 0Bh
		countedLoopStart 17
		        noteL F6,6
		countedLoopEnd
		        noteL Ds6,6
		        note  C6
		        note  As5
		        note  G5
		        note  E5
		        note  Cs5
		        note  As4
		        wait
		        note  As4
		        waitL 198
		countedLoopStart 17
		        noteL F6,6
		countedLoopEnd
		        noteL Ds6,6
		        note  C6
		        note  As5
		        note  G5
		        note  E5
		        note  Gs5
		        note  D6
		        wait
		        note  D6
		        waitL 186
		  stereo 040h
		        noteL C5,6
		        note  D5
		countedLoopStart 3
		        noteL F5,6
		        note  C5
		        note  D5
		        note  F5
		        note  C5
		        note  D5
		        note  G5
		        note  C5
		        note  D5
		        note  C5
		        note  D5
		        note  F5
		        note  C5
		        note  D5
		        note  G5
		        note  F5
		        note  C5
		        note  D5
		        note  F5
		        note  C5
		        note  D5
		        note  G5
		        note  C5
		        note  D5
		        note  Ds5
		        note  As5
		        note  Gs5
		        note  Ds5
		        note  Cs5
		        note  Ds5
		countedLoopEnd
		countedLoopStart 1
		        noteL Gs5,6
		        note  Ds5
		        note  F5
		        note  Gs5
		        note  Ds5
		        note  F5
		        note  As5
		        note  Ds5
		        note  F5
		        note  Ds5
		        note  F5
		        note  Gs5
		        note  Ds5
		        note  F5
		        note  As5
		        note  Gs5
		        note  Ds5
		        note  F5
		        note  Gs5
		        note  Ds5
		        note  F5
		        note  As5
		        note  Ds5
		        note  F5
		        note  G5
		        note  D6
		        note  C6
		        note  G5
		        note  F5
		        note  G5
		countedLoopEnd
		        noteL G5,6
		        note  D5
		        note  C5
		        note  D5
		        note  G5
		        note  D5
		        note  C5
		        note  D5
		        note  F5
		        note  C5
		        note  As4
		        note  C5
		        note  F5
		        note  C5
		        note  As4
		        note  C5
		        note  Ds5
		        note  As4
		        note  Gs4
		        note  As4
		        note  Ds5
		        note  As4
		        note  Gs4
		        note  As4
		        note  Ds5
		        note  As4
		        note  Gs4
		        note  As4
		        note  Cs5
		        note  As4
		  stereo 0C0h
		        note  Ds5
		        note  As4
		        note  Gs4
		        note  Gs5
		        note  Ds5
		        note  Cs5
		        note  As5
		        note  Gs5
		        note  Ds5
		        note  Cs6
		        note  As5
		        note  Gs5
		        note  Ds6
		        note  Cs6
		        note  As5
		        note  Cs6
		        note  Fs6
		        note  Fs6
		        note  Fs6
		        note  Fs6
		        note  Ds6
		        note  Cs6
		        note  As5
		        note  Gs5
		  stereo 040h
		        note  Fs5
		        note  Ds5
		        note  Cs5
		        note  Fs5
		        note  Ds5
		        note  Cs5
		        note  A5
		        note  E5
		        note  D5
		        note  E5
		        note  A5
		        note  E5
		        note  D5
		        note  E5
		        note  G5
		        note  D5
		        note  C5
		        note  D5
		        note  G5
		        note  D5
		        note  C5
		        note  D5
		        note  F5
		        note  C5
		        note  As4
		        note  C5
		        note  F5
		        note  C5
		        note  As4
		        note  C5
		        note  F5
		        note  C5
		        note  As4
		        note  C5
		        note  Ds5
		        note  C5
		  stereo 0C0h
		        note  F5
		        note  C5
		        note  As4
		        note  As5
		        note  F5
		        note  Ds5
		        note  C6
		        note  As5
		        note  F5
		        note  Ds6
		        note  C6
		        note  As5
		        note  F6
		        note  Ds6
		        note  C6
		        note  Ds6
		countedLoopStart 13
		        noteL Gs6,6
		countedLoopEnd
		countedLoopStart 1
		        noteL As5,6
		        note  Gs5
		        note  Ds5
		        note  Gs5
		        note  As5
		        note  Gs5
		        note  Ds5
		        note  Gs5
		        note  As5
		        wait
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        wait
		        note  Cs6
		        note  Cs6
		        note  As5
		        note  Gs5
		        note  Ds5
		        note  Gs5
		        note  As5
		        note  Gs5
		        note  Ds5
		        note  Gs5
		        note  As5
		        wait
		        note  Cs6
		        note  Cs6
		        note  Cs6
		        wait
		countedLoopEnd
		countedLoopStart 2
		        noteL As5,6
		        note  As5
		        note  As5
		        waitL 12
		countedLoopEnd
		countedLoopStart 3
		        noteL As5,6
		countedLoopEnd
		        waitL 66
		mainLoopEnd
Music35_Channel2:
		mainLoopStart
		        waitL 180
		        wait
		  inst 60
		  vol 0Ah
		  vibrato 02Ch
		  setRelease 01h
		        waitL 3
		countedLoopStart 16
		        noteL C6,6
		countedLoopEnd
		        noteL C6,3
		        noteL As5,6
		        note  G5
		        note  F5
		        note  D5
		        note  B4
		        note  Gs4
		        note  F4
		        wait
		        note  F4
		        waitL 18
		  inst 3
		  vol 0Bh
		  vibrato 07Fh
		  noSlide
		        noteL B4,0
		  setSlide 010h
		        noteL C5,12
		  noSlide
		        noteL B4,0
		  setSlide 010h
		        noteL C5,60
		        waitL 12
		        note  C5
		  setSlide 020h
		        note  Ds5
		        noteL C5,60
		        waitL 15
		  inst 60
		  vol 0Ah
		  noSlide
		countedLoopStart 16
		        noteL C6,6
		countedLoopEnd
		        noteL C6,3
		        noteL As5,6
		        note  G5
		        note  F5
		        note  D5
		        note  B4
		        note  Ds5
		        note  A5
		        wait
		        note  A5
		        waitL 18
		  inst 3
		  vol 0Bh
		  noSlide
		        noteL B4,0
		  setSlide 010h
		        noteL C5,12
		  noSlide
		        noteL B4,0
		  setSlide 010h
		        noteL C5,60
		        waitL 12
		        note  C5
		  setSlide 020h
		        note  Ds5
		        noteL Fs5,60
		  stereo 080h
		  inst 60
		  vol 0Bh
		  noSlide
		        noteL G4,6
		        note  A4
		countedLoopStart 3
		        waitL 6
		        note  A4
		        note  C5
		        note  D5
		        wait
		        note  A4
		        note  C5
		        note  D5
		        wait
		        note  A4
		        note  C5
		        note  D5
		        wait
		        note  A4
		        note  C5
		        note  D5
		        wait
		        note  A4
		        note  C5
		        note  D5
		        wait
		        note  A4
		        wait
		        note  A4
		        note  As4
		        note  Cs5
		        note  Ds5
		        note  Cs5
		        note  Gs4
		        note  As4
		countedLoopEnd
		countedLoopStart 1
		        waitL 6
		        note  C5
		        note  Ds5
		        note  F5
		        wait
		        note  C5
		        note  Ds5
		        note  F5
		        wait
		        note  C5
		        note  Ds5
		        note  F5
		        wait
		        note  C5
		        note  Ds5
		        note  F5
		        wait
		        note  C5
		        note  Ds5
		        note  F5
		        wait
		        note  C5
		        wait
		        note  C5
		        note  D5
		        note  F5
		        note  G5
		        note  F5
		        note  C5
		        note  D5
		countedLoopEnd
		        noteL D5,6
		        note  G4
		        note  A4
		        note  C5
		        note  D5
		        note  G4
		        note  A4
		        note  C5
		        note  C5
		        note  F4
		        note  G4
		        note  As4
		        note  C5
		        note  F4
		        note  G4
		        note  As4
		        note  As4
		        note  Ds4
		        note  F4
		        note  Gs4
		        note  As4
		        note  Ds4
		        note  F4
		        note  Gs4
		        note  As4
		        note  Ds4
		        note  F4
		        note  Gs4
		        note  As4
		        note  Gs4
		  stereo 0C0h
		  vol 0Ah
		        note  As4
		        note  Ds4
		        note  Fs4
		        note  Ds4
		        note  Fs4
		        note  Gs4
		        note  Fs4
		        note  As4
		        note  Cs5
		        note  Gs4
		        note  Cs5
		        note  Ds5
		        note  As4
		        note  Ds5
		        note  Fs5
		        note  Gs5
		        waitL 3
		        noteL Cs6,6
		        note  Cs6
		        note  Cs6
		        noteL Cs6,3
		        noteL As5,6
		        note  Gs5
		        note  F5
		        note  Ds5
		  stereo 080h
		  vol 0Bh
		        note  Cs5
		        note  Fs4
		        note  Gs4
		        note  Cs5
		        note  Fs4
		        note  Gs4
		        note  E5
		        note  A4
		        note  B4
		        note  D5
		        note  E5
		        note  A4
		        note  B4
		        note  D5
		        note  D5
		        note  G4
		        note  A4
		        note  C5
		        note  D5
		        note  G4
		        note  A4
		        note  C5
		        note  C5
		        note  F4
		        note  G4
		        note  As4
		        note  C5
		        note  F4
		        note  G4
		        note  As4
		        note  C5
		        note  F4
		        note  G4
		        note  As4
		        note  C5
		        note  As4
		  stereo 0C0h
		  vol 0Ah
		        note  C5
		        note  F4
		        note  Gs4
		        note  F4
		        note  Gs4
		        note  As4
		        note  Gs4
		        note  C5
		        note  Ds5
		        note  As4
		        note  Ds5
		        note  F5
		        note  C5
		        note  F5
		        note  Gs5
		        note  As5
		        waitL 3
		countedLoopStart 12
		        noteL Ds6,6
		countedLoopEnd
		        noteL Ds6,3
		countedLoopStart 1
		  inst 3
		  vol 0Bh
		  vibrato 02Ch
		  noSlide
		        noteL E5,0
		  setSlide 08h
		        noteL F5,12
		  noSlide
		        noteL E5,0
		  setSlide 08h
		        noteL F5,10
		        waitL 38
		  inst 60
		  vol 0Bh
		  noSlide
		        noteL Gs5,6
		        note  Gs5
		        note  Gs5
		        wait
		        note  Gs5
		        note  Gs5
		  inst 3
		  vol 0Bh
		  noSlide
		        noteL E5,0
		  setSlide 08h
		        noteL F5,12
		  noSlide
		        noteL E5,0
		  setSlide 08h
		        noteL F5,10
		        waitL 38
		  inst 60
		  vol 0Bh
		  noSlide
		        noteL Gs5,6
		        note  Gs5
		        note  Gs5
		        wait
		countedLoopEnd
		countedLoopStart 2
		        noteL F5,6
		        note  F5
		        note  F5
		        waitL 12
		countedLoopEnd
		countedLoopStart 3
		        noteL F5,6
		countedLoopEnd
		        waitL 66
		mainLoopEnd
Music35_Channel3:
		mainLoopStart
		  setRelease 01h
		  vibrato 02Ch
		countedLoopStart 2
		        waitL 180
		countedLoopEnd
		  inst 3
		  vol 0Bh
		  vibrato 07Fh
		  noSlide
		        noteL E5,0
		  setSlide 0Ah
		        noteL F5,12
		  noSlide
		        noteL E5,0
		  setSlide 0Ah
		        noteL F5,60
		        waitL 12
		        note  F5
		  setSlide 020h
		        note  Gs5
		        noteL F5,60
		        waitL 192
		  noSlide
		        noteL E5,0
		  setSlide 0Ah
		        noteL F5,12
		  noSlide
		        noteL E5,0
		  setSlide 0Ah
		        noteL F5,60
		        waitL 12
		        note  F5
		  setSlide 020h
		        note  Gs5
		        noteL B5,60
		        waitL 192
		        waitL 180
		  inst 13
		  vol 0Ch
		countedLoopStart 1
		  noSlide
		  vibrato 02Ch
		        noteL D5,0
		  setSlide 020h
		        noteL G5,18
		  noSlide
		        noteL D5,10
		        waitL 8
		  setSlide 020h
		        noteL G5,18
		  noSlide
		        noteL D5,24
		        waitL 6
		        note  G5
		        note  A5
		  sustain
		        noteL D6,3
		        note  E6
		  setRelease 01h
		        noteL D6,4
		        waitL 3
		        noteL A5,4
		        waitL 5
		        noteL G5,4
		        waitL 5
		        noteL D5,4
		        waitL 5
		        noteL A4,4
		        wait
		  setSlide 020h
		        noteL Cs5,18
		  noSlide
		        noteL Gs4,10
		        waitL 8
		countedLoopEnd
		countedLoopStart 1
		        noteL F5,0
		  setSlide 025h
		        noteL As5,18
		  noSlide
		        noteL F5,10
		        waitL 8
		  setSlide 025h
		        noteL As5,18
		  noSlide
		        noteL F5,24
		        waitL 6
		        note  As5
		        note  C6
		  sustain
		        noteL F6,3
		        note  Fs6
		  setRelease 01h
		        noteL F6,4
		        waitL 3
		        noteL C6,4
		        waitL 5
		        noteL G5,4
		        waitL 5
		        noteL F5,4
		        waitL 5
		        noteL C5,4
		        wait
		  setSlide 020h
		        noteL E5,18
		  noSlide
		        noteL B5,10
		        waitL 8
		countedLoopEnd
		        noteL C6,60
		        waitL 6
		  sustain
		        noteL C6,3
		        note  B5
		  setRelease 01h
		        noteL As5,28
		        waitL 8
		        noteL A5,4
		        waitL 7
		        noteL Ds5,4
		        waitL 5
		        noteL D5,4
		        wait
		        note  Gs4
		        wait
		  setSlide 010h
		        noteL B4,12
		  noSlide
		        noteL A4,0
		  setSlide 010h
		        noteL B4,10
		  noSlide
		        waitL 158
		        noteL Gs4,6
		        note  Cs5
		        noteL Ds5,5
		        note  Fs5
		        noteL Gs5,4
		        note  C6
		        waitL 6
		        noteL D6,60
		        waitL 6
		  sustain
		        noteL D6,3
		        note  Cs6
		  setRelease 01h
		        noteL C6,28
		        waitL 8
		        noteL B5,4
		        waitL 7
		        noteL F5,4
		        waitL 5
		        noteL E5,4
		        wait
		        note  As4
		        wait
		  setSlide 020h
		        noteL Cs5,12
		  noSlide
		        noteL As4,0
		  setSlide 020h
		        noteL Cs5,10
		  noSlide
		        waitL 194
		  inst 3
		  vol 0Bh
		countedLoopStart 1
		  noSlide
		        noteL A5,0
		  setSlide 010h
		        noteL As5,12
		  noSlide
		        noteL A5,0
		  setSlide 010h
		        noteL As5,10
		        waitL 74
		  noSlide
		        noteL A5,0
		  setSlide 010h
		        noteL As5,12
		  noSlide
		        noteL A5,0
		  setSlide 010h
		        noteL As5,10
		        waitL 62
		  noSlide
		countedLoopEnd
		  inst 60
		  vol 0Bh
		countedLoopStart 2
		        noteL Ds5,6
		        note  Ds5
		        note  Ds5
		        waitL 12
		countedLoopEnd
		countedLoopStart 3
		        noteL Ds5,6
		countedLoopEnd
		        waitL 66
		mainLoopEnd
Music35_Channel4:
		mainLoopStart
		  stereo 0C0h
		  setRelease 00h
		  vibrato 00h
		  inst 47
		  vol 09h
		countedLoopStart 2
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		countedLoopEnd
		        waitL 6
		  stereo 040h
		  setRelease 01h
		  inst 3
		  vol 09h
		  vibrato 07Fh
		  noSlide
		        noteL E5,0
		  setSlide 0Ah
		        noteL F5,12
		  noSlide
		        noteL E5,0
		  setSlide 0Ah
		        noteL F5,60
		        waitL 12
		        note  F5
		  setSlide 020h
		        note  Gs5
		        noteL F5,60
		  noSlide
		        waitL 6
		  stereo 0C0h
		  setRelease 00h
		  vibrato 00h
		  inst 47
		  vol 09h
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        waitL 6
		  stereo 040h
		  setRelease 01h
		  vibrato 07Fh
		  inst 3
		  vol 09h
		  noSlide
		        noteL E5,0
		  setSlide 0Ah
		        noteL F5,12
		  noSlide
		        noteL E5,0
		  setSlide 0Ah
		        noteL F5,60
		        waitL 12
		        note  F5
		  setSlide 020h
		        note  Gs5
		        noteL B5,60
		  noSlide
		        waitL 6
		  stereo 0C0h
		  setRelease 00h
		  vibrato 00h
		  inst 47
		  vol 09h
		countedLoopStart 1
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		countedLoopEnd
		        waitL 6
		  stereo 080h
		  inst 13
		  vol 0Ah
		countedLoopStart 1
		  noSlide
		  vibrato 02Ch
		        noteL D5,0
		  setSlide 020h
		        noteL G5,18
		  noSlide
		        noteL D5,10
		        waitL 8
		  setSlide 020h
		        noteL G5,18
		  noSlide
		        noteL D5,24
		        waitL 6
		        note  G5
		        note  A5
		  sustain
		        noteL D6,3
		        note  E6
		  setRelease 01h
		        noteL D6,4
		        waitL 3
		        noteL A5,4
		        waitL 5
		        noteL G5,4
		        waitL 5
		        noteL D5,4
		        waitL 5
		        noteL A4,4
		        wait
		  setSlide 020h
		        noteL Cs5,18
		  noSlide
		        noteL Gs4,10
		        waitL 8
		countedLoopEnd
		countedLoopStart 1
		        noteL F5,0
		  setSlide 025h
		        noteL As5,18
		  noSlide
		        noteL F5,10
		        waitL 8
		  setSlide 025h
		        noteL As5,18
		  noSlide
		        noteL F5,24
		        waitL 6
		        note  As5
		        note  C6
		  sustain
		        noteL F6,3
		        note  Fs6
		  setRelease 01h
		        noteL F6,4
		        waitL 3
		        noteL C6,4
		        waitL 5
		        noteL G5,4
		        waitL 5
		        noteL F5,4
		        waitL 5
		        noteL C5,4
		        wait
		  setSlide 020h
		        noteL E5,18
		  noSlide
		        noteL B5,10
		        waitL 8
		countedLoopEnd
		        noteL C6,60
		        waitL 6
		  sustain
		        noteL C6,3
		        note  B5
		  setRelease 01h
		        noteL As5,28
		        waitL 8
		        noteL A5,4
		        waitL 7
		        noteL Ds5,4
		        waitL 5
		        noteL D5,4
		        wait
		        note  Gs4
		        wait
		  setSlide 010h
		        noteL B4,12
		  noSlide
		        noteL A4,0
		  setSlide 010h
		        noteL B4,12
		  noSlide
		        waitL 6
		  stereo 0C0h
		  setRelease 00h
		  vibrato 00h
		  inst 47
		  vol 09h
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		        noteL C7,24
		        noteL C7,30
		  stereo 080h
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL Gs4,6
		        note  Cs5
		        noteL Ds5,5
		        note  Fs5
		        noteL Gs5,4
		        note  C6
		        waitL 6
		        noteL D6,60
		        waitL 6
		  sustain
		        noteL D6,3
		        note  Cs6
		  setRelease 01h
		        noteL C6,28
		        waitL 8
		        noteL B5,4
		        waitL 7
		        noteL F5,4
		        waitL 5
		        noteL E5,4
		        wait
		        note  As4
		        wait
		  setSlide 020h
		        noteL Cs5,12
		  noSlide
		        noteL As4,0
		  setSlide 020h
		        noteL Cs5,12
		  noSlide
		        waitL 6
		  stereo 0C0h
		  setRelease 00h
		  vibrato 00h
		  inst 47
		  vol 09h
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		        noteL C7,12
		        noteL C7,24
		        note  C7
		        noteL C7,12
		        noteL C7,24
		countedLoopStart 1
		        noteL C7,24
		        noteL C7,12
		        noteL C7,24
		        noteL C7,18
		        note  C7
		        noteL C7,24
		        noteL C7,12
		        noteL C7,18
		        note  C7
		        noteL C7,12
		countedLoopEnd
		  vol 0Ah
		        noteL C7,12
		        noteL C7,18
		        noteL C7,12
		        noteL C7,18
		        noteL C7,12
		        noteL C7,18
		        noteL C7,12
		        noteL C7,6
		        noteL C7,72
		mainLoopEnd
Music35_Channel5:
		mainLoopStart
		countedLoopStart 15
		  stereo 0C0h
		        sampleL 0,12
		        sample  0
		  stereo 040h
		        sampleL 2,6
		  stereo 0C0h
		        sampleL 0,12
		        sampleL 0,6
		        sampleL 0,12
		  stereo 080h
		        sample  3
		  stereo 0C0h
		        sample  0
		  stereo 040h
		        sample  2
		  stereo 0C0h
		        sample  0
		        sample  0
		  stereo 080h
		        sampleL 2,6
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
		countedLoopEnd
		countedLoopStart 1
		  stereo 0C0h
		        sampleL 0,12
		        sample  0
		  stereo 040h
		        sampleL 2,6
		  stereo 0C0h
		        sampleL 0,12
		        sampleL 0,6
		        sampleL 0,12
		  stereo 080h
		        sampleL 3,6
		        sampleL 3,12
		  stereo 0C0h
		        sample  0
		        sampleL 2,6
		  stereo 0C0h
		        sampleL 0,12
		        sample  0
		  stereo 080h
		        sampleL 2,6
		  stereo 0C0h
		        sampleL 0,12
		        sample  0
		        sampleL 0,6
		  stereo 040h
		        sample  3
		  stereo 080h
		        sample  4
		  stereo 0C0h
		        sampleL 0,12
		countedLoopEnd
		  stereo 0C0h
		countedLoopStart 2
		        sampleL 0,12
		        sampleL 0,18
		countedLoopEnd
		        sampleL 0,6
		        wait
		        sample  0
		        sampleL 3,24
		countedLoopStart 15
		        sampleL 2,3
		countedLoopEnd
		mainLoopEnd
Music35_Channel6:
		channel_end
Music35_Channel7:
		channel_end
Music35_Channel9:
		channel_end
