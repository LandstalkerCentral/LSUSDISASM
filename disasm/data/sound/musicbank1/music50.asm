
; ASM FILE music50.asm :
; 0x9D0E..0xA792 : Music 50
Music_50:       db 0
		db 0
		db 0
		db 0C9h
		dw Music_50_Channel_0
		dw Music_50_Channel_1
		dw Music_50_Channel_2
		dw Music_50_Channel_3
		dw Music_50_Channel_4
		dw Music_50_Channel_5
		dw Music_50_Channel_6
		dw Music_50_Channel_7
		dw Music_50_Channel_9
		dw Music_50_Channel_9
Music_50_Channel_0:
		        waitL 72
		mainLoopStart
		  inst 8
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Eh
		        noteL As4,24
		repeatStart
		        noteL Ds5,36
		        noteL F5,5
		        waitL 7
		        noteL F5,48
		        waitL 12
		        note  As4
		        note  Ds5
		        note  F5
		        note  G5
		        note  Gs5
		        note  F5
		        note  G5
		        noteL Ds5,36
		        noteL C6,6
		        wait
		        noteL As5,96
		        waitL 24
		        note  Ds5
		        noteL Gs5,36
		        noteL As5,6
		        wait
		        noteL As5,48
		        waitL 12
		        note  Ds5
		        note  Gs5
		        note  As5
		        note  C6
		        note  Cs6
		        note  As5
		        note  C6
		        noteL Gs5,36
		        noteL F6,6
		        wait
		        noteL Ds6,108
		        waitL 12
		        note  Ds6
		        note  F6
		repeatSection1Start
		        noteL Fs6,24
		        note  F6
		        note  Ds6
		        note  Cs6
		        note  Gs6
		        note  Fs6
		        note  F6
		        note  Ds6
		        noteL As6,48
		        noteL Ds6,36
		        noteL Gs6,6
		        wait
		        noteL Fs6,36
		  sustain
		        noteL F6,17
		  setSlide 0Ah
		  setRelease 01h
		        noteL E5,10
		        waitL 9
		  noSlide
		        noteL As4,24
		repeatEnd
		repeatSection2Start
		        noteL Fs6,24
		        note  F6
		        note  Ds6
		        noteL Cs6,6
		        note  Ds6
		        note  Fs6
		        wait
		        noteL Gs6,8
		        wait
		        note  Fs6
		        wait
		        note  F6
		        wait
		        noteL Ds6,24
		        note  Cs6
		  inst 20
		  vol 0Bh
		  setRelease 06h
		        noteL D6,12
		        note  F5
		        note  F5
		        note  C6
		        note  F5
		        note  C6
		        noteL D6,120
		        noteL F6,12
		        note  Gs5
		        note  Gs5
		        note  Ds6
		        note  Gs5
		        note  Ds6
		        noteL F6,120
		        noteL Fs6,12
		        note  Gs5
		        note  Gs5
		        note  E6
		        note  Gs5
		        note  E6
		        noteL Fs6,120
		        noteL Ds6,12
		        note  Fs5
		        note  Fs5
		        note  Cs6
		        note  Fs5
		        note  Cs6
		        noteL Ds6,120
		        noteL C6,12
		        note  Ds5
		        note  Ds5
		        note  As5
		        note  Ds5
		        note  As5
		        noteL C6,120
		        noteL Ds6,12
		        note  Fs5
		        note  Fs5
		        note  Cs6
		        note  Fs5
		        note  Cs6
		        noteL Ds6,120
		        noteL E6,12
		        note  Fs5
		        note  Fs5
		        note  D6
		        note  Fs5
		        note  D6
		        noteL E6,120
		        noteL E6,12
		        note  F5
		        note  F5
		        note  D6
		        note  F5
		        note  D6
		        noteL E6,36
		        noteL F5,12
		        note  D6
		        note  F5
		  setRelease 01h
		        note  D6
		        noteL E6,6
		        wait
		  inst 25
		  vol 0Ch
		        noteL C6,12
		        note  D6
		        noteL Ds6,24
		        note  D6
		        note  C6
		        note  As5
		        note  F6
		        note  Ds6
		        note  D6
		        noteL Ds6,12
		        note  F6
		        noteL Fs6,24
		        note  F6
		        note  Ds6
		        note  Cs6
		        note  Gs6
		        note  Fs6
		        note  F6
		        note  Ds6
		countedLoopStart 1
		        noteL As6,48
		        noteL Ds6,36
		        noteL As6,6
		        wait
		countedLoopEnd
		        noteL As6,168
		mainLoopEnd
Music_50_Channel_1:
		        waitL 96
		mainLoopStart
		repeatStart
		  inst 26
		  vol 08h
		  setRelease 06h
		  vibrato 02Ch
		countedLoopStart 1
		        noteL As5,36
		        noteL As5,24
		        note  As5
		        noteL As5,12
		        noteL As5,36
		        noteL As5,60
		countedLoopEnd
		        noteL Gs5,36
		        noteL Gs5,24
		        note  As5
		        noteL As5,12
		        noteL Gs5,36
		        noteL Gs5,60
		        noteL Gs5,36
		        noteL Gs5,24
		        note  As5
		        noteL Gs5,12
		        noteL Gs5,36
		        noteL G5,60
		  setRelease 01h
		        noteL B5,12
		  setRelease 06h
		        note  Ds5
		        note  Gs5
		        noteL B5,24
		        noteL Ds5,12
		  setRelease 01h
		        noteL Ds5,24
		repeatSection1Start
		        noteL Cs6,12
		  setRelease 06h
		        note  F5
		        note  As5
		        noteL Cs6,24
		        noteL F5,12
		  setRelease 01h
		        noteL F5,24
		        noteL Ds6,12
		  setRelease 06h
		        note  Fs5
		        note  B5
		        noteL Ds6,24
		        noteL Fs5,12
		  setRelease 01h
		        noteL Fs5,24
		        noteL Gs5,30
		        waitL 6
		        noteL Gs5,36
		        waitL 24
		repeatEnd
		repeatSection2Start
		  setRelease 06h
		        noteL Cs6,16
		        note  Cs6
		        note  As5
		        waitL 12
		        note  F5
		        note  F5
		        note  F5
		  inst 51
		  vol 0Ah
		        noteL Ds5,102
		        waitL 6
		        noteL Ds4,12
		        note  Gs4
		        note  As4
		        note  Ds5
		        note  F5
		        note  Gs4
		        note  As4
		        noteL Fs4,102
		        waitL 6
		        noteL Fs4,12
		        note  B4
		        note  Cs5
		        note  Fs5
		        note  Gs5
		        note  B4
		        note  Cs5
		        noteL E4,102
		        waitL 6
		        noteL E4,12
		        note  A4
		        note  B4
		        note  D5
		        note  E5
		        note  A4
		        note  B4
		        noteL Fs3,36
		        noteL Gs3,66
		        waitL 6
		        noteL Gs4,12
		        note  Cs5
		        note  Ds5
		        note  Gs5
		        note  Fs5
		        note  Ds5
		        note  Gs4
		        noteL Cs5,102
		        waitL 6
		        noteL Cs5,12
		        note  Fs5
		        note  Gs5
		        note  Cs6
		        note  Ds6
		        note  Fs5
		        note  Gs5
		        noteL E5,102
		        waitL 6
		        noteL E4,12
		        note  A4
		        note  B4
		        note  E5
		        note  Fs5
		        note  A4
		        note  B4
		        noteL C5,36
		        noteL D5,66
		        waitL 6
		        noteL D4,12
		        note  G4
		        note  A4
		        note  C5
		        note  D5
		        note  G4
		        note  A4
		        noteL F4,36
		        note  G4
		        note  F4
		        noteL G5,12
		        note  F5
		        note  D5
		        note  C5
		        note  D5
		  setRelease 01h
		        noteL G4,24
		  inst 26
		  vol 08h
		        noteL Gs5,12
		  setRelease 06h
		        note  C5
		        note  F5
		        noteL Gs5,24
		        noteL C5,12
		  setRelease 01h
		        noteL C5,24
		        noteL As5,12
		  setRelease 06h
		        note  D5
		        note  G5
		        noteL As5,24
		        noteL D5,12
		  setRelease 01h
		        noteL D5,24
		        noteL B5,12
		  setRelease 06h
		        note  Ds5
		        note  Gs5
		        noteL B5,24
		        noteL Ds5,12
		  setRelease 01h
		        noteL Ds5,24
		        noteL Cs6,12
		  setRelease 06h
		        note  F5
		        note  As5
		        noteL Cs6,24
		        noteL F5,12
		  setRelease 01h
		        noteL F5,24
		        noteL B5,12
		  setRelease 06h
		        note  Ds5
		        note  Gs5
		        noteL B5,24
		        noteL Ds5,12
		  setRelease 01h
		        noteL Ds5,24
		        noteL B5,12
		  setRelease 06h
		        note  Ds5
		        note  F5
		        noteL B5,24
		        noteL F5,12
		  setRelease 01h
		        noteL F5,24
		        noteL G5,144
		        waitL 48
		mainLoopEnd
Music_50_Channel_2:
		        waitL 96
		mainLoopStart
		  inst 26
		  vol 08h
		  setRelease 06h
		  vibrato 02Ch
		repeatStart
		        noteL G5,36
		        noteL G5,24
		        note  Gs5
		        noteL Gs5,12
		        noteL G5,36
		        noteL G5,60
		        noteL Gs5,36
		        noteL Gs5,24
		        note  F5
		        noteL F5,12
		        noteL G5,36
		        noteL G5,60
		countedLoopStart 1
		        noteL Ds5,36
		        noteL Ds5,24
		        note  Ds5
		        noteL Ds5,12
		        noteL Ds5,36
		        noteL Ds5,60
		countedLoopEnd
		        noteL Ds6,36
		        noteL Ds6,24
		        noteL Gs5,12
		        noteL Gs5,24
		repeatSection1Start
		        noteL F6,36
		        noteL F6,24
		        noteL As5,12
		        noteL As5,24
		        noteL Fs6,36
		        noteL Fs6,24
		        noteL B5,12
		        noteL B5,24
		        noteL Cs6,36
		        noteL Cs6,42
		        waitL 18
		repeatEnd
		repeatSection2Start
		        noteL F6,16
		        note  F6
		        note  Cs6
		        waitL 12
		        note  As5
		        note  As5
		        note  As5
		  stereo 080h
		  inst 20
		  vol 0Bh
		        note  As5
		        waitL 24
		        noteL Gs5,12
		        wait
		        note  Gs5
		        noteL As5,120
		        noteL Cs6,12
		        waitL 24
		        noteL B5,12
		        wait
		        note  B5
		        noteL Cs6,120
		        noteL D6,12
		        waitL 24
		        noteL Cs6,12
		        wait
		        note  Cs6
		        noteL D6,120
		        noteL C6,12
		        waitL 24
		        noteL As5,12
		        wait
		        note  As5
		        noteL C6,120
		        noteL Gs5,12
		        waitL 24
		        noteL Fs5,12
		        wait
		        note  Fs5
		        noteL Gs5,120
		        noteL B5,12
		        waitL 24
		        noteL A5,12
		        wait
		        note  A5
		        noteL B5,120
		        noteL C6,12
		        waitL 24
		        noteL B5,12
		        wait
		        note  B5
		        noteL C6,120
		        noteL C6,12
		        waitL 24
		        noteL B5,12
		        wait
		        note  B5
		        noteL C6,36
		        waitL 12
		        note  B5
		        wait
		  setRelease 01h
		        note  B5
		        noteL C6,6
		        waitL 30
		  stereo 0C0h
		  setRelease 06h
		  inst 26
		  vol 08h
		        noteL C6,36
		        noteL C6,24
		        noteL F5,12
		        noteL F5,24
		        noteL D6,36
		        noteL D6,24
		        noteL G5,12
		        noteL G5,24
		        noteL Ds6,36
		        noteL Ds6,24
		        noteL Gs5,12
		        noteL Gs5,24
		        noteL F6,36
		        noteL F6,24
		        noteL As5,12
		        noteL As5,24
		        noteL Ds6,36
		        noteL Ds6,24
		        noteL Gs5,12
		        noteL Gs5,24
		        noteL F6,36
		        noteL F6,24
		        noteL Gs5,12
		        noteL Gs5,24
		        noteL As5,144
		        waitL 48
		mainLoopEnd
Music_50_Channel_3:
		        waitL 96
		mainLoopStart
		  inst 38
		  vol 0Ch
		  setRelease 06h
		  vibrato 02Ch
		countedLoopStart 15
		        noteL Ds3,12
		countedLoopEnd
		countedLoopStart 15
		        noteL Cs3,12
		countedLoopEnd
		countedLoopStart 15
		        noteL C3,12
		countedLoopEnd
		countedLoopStart 7
		        noteL B2,12
		countedLoopEnd
		countedLoopStart 7
		        noteL As2,12
		countedLoopEnd
		countedLoopStart 2
		        noteL Gs2,12
		countedLoopEnd
		  setRelease 01h
		        noteL Gs2,24
		        noteL Gs3,6
		        wait
		        noteL Gs2,24
		countedLoopStart 2
		        noteL As2,6
		        wait
		countedLoopEnd
		        noteL As2,24
		        noteL As3,6
		        wait
		        noteL As2,24
		countedLoopStart 2
		        noteL B2,6
		        wait
		countedLoopEnd
		        noteL B2,24
		        noteL B3,6
		        wait
		        noteL B2,12
		  sustain
		        noteL As2,6
		  setRelease 01h
		        note  B2
		countedLoopStart 2
		        noteL Cs3,6
		        wait
		countedLoopEnd
		        noteL Cs3,24
		        noteL Cs4,6
		        wait
		        noteL Cs3,24
		countedLoopStart 6
		        noteL Ds3,6
		        wait
		countedLoopEnd
		  sustain
		        noteL Gs2,6
		  setRelease 01h
		        note  As2
		countedLoopStart 3
		        noteL Ds3,6
		        wait
		countedLoopEnd
		        noteL Ds3,6
		  sustain
		        note  Gs3
		  setRelease 01h
		        note  As3
		  sustain
		        note  Cs3
		  setRelease 01h
		        note  Ds3
		  sustain
		        note  Gs2
		  setRelease 01h
		        note  As2
		        note  Ds3
		countedLoopStart 6
		        noteL Cs3,6
		        wait
		countedLoopEnd
		  sustain
		        noteL Gs3,6
		  setRelease 01h
		        note  As3
		countedLoopStart 3
		        noteL Cs3,6
		        wait
		countedLoopEnd
		        noteL Cs3,6
		  sustain
		        note  Gs3
		  setRelease 01h
		        note  As3
		  sustain
		        note  Cs3
		  setRelease 01h
		        note  Ds3
		        note  Ds4
		        note  Cs3
		        note  Cs4
		countedLoopStart 6
		        noteL C3,6
		        wait
		countedLoopEnd
		  sustain
		        noteL G2,6
		  setRelease 01h
		        note  Gs2
		countedLoopStart 3
		        noteL C3,6
		        wait
		countedLoopEnd
		        noteL C3,6
		        note  Gs3
		  sustain
		        note  D3
		  setRelease 01h
		        note  Ds3
		  sustain
		        note  B2
		  setRelease 01h
		        note  C3
		  sustain
		        note  G2
		  setRelease 01h
		        note  Gs2
		countedLoopStart 6
		        noteL B2,6
		        wait
		countedLoopEnd
		  sustain
		        noteL Cs3,6
		  setRelease 01h
		        note  B2
		countedLoopStart 3
		        noteL As2,6
		        wait
		countedLoopEnd
		        noteL Ds3,6
		  sustain
		        note  Gs3
		  setRelease 01h
		        note  As3
		  sustain
		        note  Gs2
		  setRelease 01h
		        note  As2
		  sustain
		        note  Cs2
		  setRelease 01h
		        note  Ds2
		        note  As2
		countedLoopStart 2
		        noteL Gs2,6
		        wait
		countedLoopEnd
		        noteL Gs2,18
		        noteL Gs3,6
		  sustain
		        note  B2
		  setRelease 01h
		        note  Cs3
		  sustain
		        noteL Fs2,12
		  setRelease 01h
		        noteL Gs2,6
		        wait
		        noteL As2,8
		        wait
		        note  As2
		        wait
		        noteL As2,22
		        noteL As3,6
		  sustain
		        note  Cs3
		  setRelease 01h
		        note  Ds3
		        note  Gs2
		        note  Gs3
		        note  As2
		        wait
		  setRelease 06h
		        noteL Ds3,102
		        waitL 6
		        noteL Ds2,12
		        note  Gs2
		        note  As2
		        note  Ds3
		        note  F3
		        note  Gs2
		        note  As2
		        noteL Fs2,102
		        waitL 6
		        noteL Fs2,12
		        note  B2
		        note  Cs3
		        note  Fs3
		        note  Gs3
		        note  B2
		        note  Cs3
		        noteL E2,102
		        waitL 6
		        noteL E2,12
		        note  A2
		        note  B2
		        note  D3
		        note  E3
		        note  A2
		        note  B2
		        noteL Fs2,36
		        noteL Gs2,66
		        waitL 6
		        noteL Gs2,12
		        note  Cs3
		        note  Ds3
		        note  Gs3
		        note  Fs3
		        note  Ds3
		        note  Gs2
		        noteL Cs3,102
		        waitL 6
		        noteL Cs3,12
		        note  Fs3
		        note  Gs3
		        note  Cs4
		        note  Ds4
		        note  Fs3
		        note  Gs3
		        noteL E3,102
		        waitL 6
		        noteL E2,12
		        note  A2
		        note  B2
		        note  E3
		        note  Fs3
		        note  A2
		        note  B2
		        noteL C3,36
		        noteL D3,66
		        waitL 6
		        noteL D2,12
		        note  G2
		        note  A2
		        note  C3
		        note  D3
		        note  G2
		        note  A2
		        noteL F2,36
		        note  G2
		        note  F2
		        noteL G3,12
		        note  F3
		        note  D3
		        note  C3
		        note  D3
		  setRelease 01h
		        noteL G2,24
		countedLoopStart 2
		        noteL F2,6
		        wait
		countedLoopEnd
		        noteL F2,18
		        noteL F3,6
		  sustain
		        note  Gs2
		  setRelease 01h
		        note  As2
		  sustain
		        noteL Ds2,12
		  setRelease 01h
		        noteL F2,6
		        wait
		countedLoopStart 2
		        noteL G2,6
		        wait
		countedLoopEnd
		        noteL G2,18
		  sustain
		        noteL F3,6
		  setRelease 01h
		        note  G3
		        wait
		        noteL G2,24
		countedLoopStart 2
		        noteL Gs2,6
		        wait
		countedLoopEnd
		        noteL Gs2,18
		        noteL Gs3,6
		  sustain
		        note  B2
		  setRelease 01h
		        note  Cs3
		  sustain
		        noteL Fs2,12
		  setRelease 01h
		        noteL Gs2,6
		        wait
		countedLoopStart 2
		        noteL As2,6
		        wait
		countedLoopEnd
		        noteL As2,18
		        noteL As3,6
		  sustain
		        note  Cs3
		  setRelease 01h
		        note  Ds3
		        note  Gs2
		        note  Gs3
		        note  As2
		        note  As3
		countedLoopStart 2
		        noteL B2,6
		        wait
		countedLoopEnd
		        noteL B2,18
		        noteL B3,6
		  sustain
		        note  Gs2
		  setRelease 01h
		        note  As2
		        note  B2
		        note  B3
		        noteL B2,12
		        noteL Cs3,6
		        wait
		        note  Cs3
		        note  Cs4
		        note  Cs3
		        wait
		        noteL Cs3,24
		  sustain
		        noteL Gs2,6
		  setRelease 01h
		        note  As2
		        note  Cs3
		        note  Cs4
		        noteL Cs3,12
		        noteL Ds3,156
		  inst 35
		  vol 0Ch
		  sustain
		        noteL As3,0
		  setSlide 025h
		  setRelease 01h
		        noteL Ds4,6
		        wait
		  noSlide
		  sustain
		        noteL As2,0
		  setSlide 0Bh
		  setRelease 01h
		        noteL Ds2,24
		  noSlide
		mainLoopEnd
Music_50_Channel_4:
		  shifting 020h
		  setRelease 01h
		  inst 21
		  vol 06h
		  stereo 040h
		        noteL A6,6
		        note  A6
		  vol 07h
		  stereo 080h
		        note  A6
		        note  A6
		  vol 08h
		  stereo 040h
		        note  A6
		        note  A6
		  vol 09h
		  stereo 080h
		        note  A6
		        note  A6
		  vol 08h
		  stereo 0C0h
		        note  A6
		        note  A6
		  vol 09h
		        note  A6
		        note  A6
		  vol 0Ah
		        note  A6
		mainLoopStart
		  stereo 040h
		  inst 8
		  vol 09h
		  setRelease 01h
		  vibrato 02Eh
		        noteL As4,24
		repeatStart
		        noteL Ds5,36
		        noteL F5,5
		        waitL 7
		        noteL F5,48
		        waitL 12
		        note  As4
		        note  Ds5
		        note  F5
		        note  G5
		        note  Gs5
		        note  F5
		        note  G5
		        noteL Ds5,36
		        noteL C6,6
		        wait
		        noteL As5,96
		        waitL 24
		        note  Ds5
		        noteL Gs5,36
		        noteL As5,6
		        wait
		        noteL As5,48
		        waitL 12
		        note  Ds5
		        note  Gs5
		        note  As5
		        note  C6
		        note  Cs6
		        note  As5
		        note  C6
		        noteL Gs5,36
		        noteL F6,6
		        wait
		        noteL Ds6,108
		        waitL 12
		        note  Ds6
		        note  F6
		repeatSection1Start
		        noteL Fs6,24
		        note  F6
		        note  Ds6
		        note  Cs6
		        note  Gs6
		        note  Fs6
		        note  F6
		        note  Ds6
		        noteL As6,48
		        noteL Ds6,36
		        noteL Gs6,6
		        wait
		        noteL Fs6,36
		  sustain
		        noteL F6,17
		  setSlide 0Ah
		  setRelease 01h
		        noteL E5,10
		        waitL 9
		  noSlide
		  stereo 080h
		        noteL As4,24
		repeatEnd
		repeatSection2Start
		        noteL Fs6,24
		        note  F6
		        note  Ds6
		        noteL Cs6,6
		        note  Ds6
		        note  Fs6
		        wait
		        noteL Gs6,8
		        wait
		        note  Fs6
		        wait
		        note  F6
		        wait
		        noteL Ds6,24
		        note  Cs6
		  stereo 040h
		  inst 20
		  vol 09h
		  setRelease 06h
		        noteL D6,12
		        note  F5
		        note  F5
		        note  C6
		        note  F5
		        note  C6
		        noteL D6,120
		        noteL F6,12
		        note  Gs5
		        note  Gs5
		        note  Ds6
		        note  Gs5
		        note  Ds6
		        noteL F6,120
		        noteL Fs6,12
		        note  Gs5
		        note  Gs5
		        note  E6
		        note  Gs5
		        note  E6
		        noteL Fs6,120
		        noteL Ds6,12
		        note  Fs5
		        note  Fs5
		        note  Cs6
		        note  Fs5
		        note  Cs6
		        noteL Ds6,120
		        noteL C6,12
		        note  Ds5
		        note  Ds5
		        note  As5
		        note  Ds5
		        note  As5
		        noteL C6,120
		        noteL Ds6,12
		        note  Fs5
		        note  Fs5
		        note  Cs6
		        note  Fs5
		        note  Cs6
		        noteL Ds6,120
		        noteL E6,12
		        note  Fs5
		        note  Fs5
		        note  D6
		        note  Fs5
		        note  D6
		        noteL E6,120
		        noteL E6,12
		        note  F5
		        note  F5
		        note  D6
		        note  F5
		        note  D6
		        noteL E6,36
		        noteL F5,12
		        note  D6
		        note  F5
		  setRelease 01h
		        note  D6
		        noteL E6,6
		        wait
		  stereo 080h
		  inst 25
		  vol 0Ah
		        noteL C6,12
		        note  D6
		        noteL Ds6,24
		        note  D6
		        note  C6
		        note  As5
		        note  F6
		        note  Ds6
		        note  D6
		        noteL Ds6,12
		        note  F6
		        noteL Fs6,24
		        note  F6
		        note  Ds6
		        note  Cs6
		        note  Gs6
		        note  Fs6
		        note  F6
		        note  Ds6
		countedLoopStart 1
		        noteL As6,48
		        noteL Ds6,36
		        noteL As6,6
		        wait
		countedLoopEnd
		        noteL As6,168
		mainLoopEnd
Music_50_Channel_5:
		        waitL 48
		  stereo 080h
		        sampleL 2,6
		        sample  2
		  stereo 0C0h
		        sample  3
		        sample  3
		  stereo 040h
		        sample  4
		        sample  4
		  stereo 0C0h
		        sampleL 1,12
		mainLoopStart
		countedLoopStart 6
		        sampleL 0,24
		        sample  1
		        sampleL 0,12
		        sample  0
		        sampleL 1,24
		countedLoopEnd
		        sampleL 0,24
		        sample  1
		        sampleL 0,12
		  stereo 080h
		        sample  2
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sample  4
		  stereo 0C0h
		countedLoopStart 1
		        sampleL 0,12
		        sample  0
		        sample  1
		        sampleL 5,24
		        sampleL 0,12
		        sampleL 1,24
		countedLoopEnd
		        sampleL 0,24
		        sampleL 1,12
		        sample  0
		  stereo 080h
		        sample  2
		  stereo 0C0h
		        sampleL 3,6
		        sampleL 3,12
		        sampleL 3,6
		  stereo 040h
		        sampleL 4,12
		  stereo 0C0h
		        sample  1
		        sample  0
		        sample  0
		        sampleL 5,24
		countedLoopStart 2
		        sampleL 1,12
		countedLoopEnd
		countedLoopStart 6
		        sampleL 0,24
		        sample  1
		        sampleL 0,12
		        sample  0
		        sampleL 1,24
		countedLoopEnd
		        sampleL 0,24
		        sample  1
		        sampleL 0,12
		  stereo 080h
		        sample  2
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sample  4
		  stereo 0C0h
		        sample  0
		        sample  0
		        sample  1
		        sampleL 5,24
		        sampleL 0,12
		        sampleL 1,24
		countedLoopStart 2
		        sampleL 0,16
		countedLoopEnd
		        sampleL 1,6
		        sample  1
		        sampleL 0,12
		        sampleL 1,6
		        sample  1
		        sampleL 0,12
		countedLoopStart 2
		        sampleL 0,24
		        sampleL 1,12
		        sampleL 0,24
		        sampleL 0,12
		        sampleL 1,24
		        waitL 12
		        sample  0
		        sampleL 1,24
		  stereo 080h
		        sampleL 2,12
		        sample  2
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sample  4
		  stereo 0C0h
		countedLoopEnd
		        sampleL 0,24
		        sampleL 1,12
		        sampleL 0,24
		        sampleL 0,12
		        sampleL 1,24
		        waitL 12
		        sample  0
		        sampleL 1,24
		  stereo 080h
		        sampleL 2,6
		        sample  2
		  stereo 0C0h
		        sample  3
		        sample  3
		  stereo 040h
		        sample  4
		        sample  4
		  stereo 0C0h
		        sampleL 1,12
		countedLoopStart 2
		        sampleL 0,24
		        sampleL 1,12
		        sampleL 0,24
		        sampleL 0,12
		        sampleL 1,24
		        waitL 12
		        sample  0
		        sampleL 1,24
		  stereo 080h
		        sampleL 2,12
		        sample  2
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sample  4
		  stereo 0C0h
		countedLoopEnd
		        sampleL 0,24
		        sampleL 1,12
		        sampleL 0,24
		        sampleL 0,12
		        sampleL 1,24
		        waitL 12
		countedLoopStart 1
		        sampleL 0,12
		        sample  1
		countedLoopEnd
		        sampleL 0,12
		countedLoopStart 3
		        sampleL 1,6
		countedLoopEnd
		        sampleL 0,12
		        sample  0
		        sample  1
		        sampleL 5,24
		        sampleL 0,12
		        sampleL 1,24
		        sampleL 0,12
		        sample  0
		        sample  1
		        sampleL 5,24
		        sampleL 0,12
		  stereo 080h
		        sample  2
		  stereo 0C0h
		        sample  3
		        sample  0
		        sample  0
		        sample  1
		        sampleL 5,24
		        sampleL 0,12
		        sampleL 1,24
		        sampleL 0,12
		        sample  0
		        sample  1
		        sampleL 5,24
		        sampleL 0,12
		        sample  1
		        sample  1
		        sampleL 0,24
		        sample  1
		        sampleL 0,12
		        sampleL 1,24
		        sampleL 1,12
		        sampleL 0,24
		        sampleL 1,12
		        sample  0
		  stereo 080h
		countedLoopStart 3
		        sampleL 2,6
		countedLoopEnd
		  stereo 0C0h
		        sampleL 3,6
		        sample  3
		  stereo 040h
		        sampleL 4,12
		  stereo 0C0h
		        sampleL 5,24
		countedLoopStart 4
		        sampleL 0,24
		countedLoopEnd
		countedLoopStart 5
		        sampleL 1,6
		countedLoopEnd
		        sampleL 1,12
		mainLoopEnd
Music_50_Channel_6:
		  setRelease 00h
		  vibrato 04Ch
		  psgInst 01Ah
		countedLoopStart 1
		        psgNoteL As5,6
		        psgNote  As4
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		        psgNote  As4
		countedLoopEnd
		        psgNoteL As5,6
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		mainLoopStart
		repeatStart
		  psgInst 01Ah
		countedLoopStart 3
		        psgNoteL As5,6
		        psgNote  As4
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		        psgNote  As4
		        psgNote  As5
		        psgNote  As4
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		        psgNote  As4
		        psgNote  As5
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		countedLoopEnd
		countedLoopStart 2
		        psgNoteL As5,6
		        psgNote  Gs4
		        psgNote  Gs4
		        psgNote  Ds5
		        psgNote  Gs4
		        psgNote  Gs4
		        psgNote  As5
		        psgNote  Gs4
		        psgNote  Gs4
		        psgNote  Ds5
		        psgNote  Gs4
		        psgNote  Gs4
		        psgNote  As5
		        psgNote  Gs4
		        psgNote  Ds5
		        psgNote  Gs4
		countedLoopEnd
		        psgNoteL As5,6
		        psgNote  As4
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		        psgNote  As4
		        psgNote  As5
		        psgNote  As4
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		        psgNote  As4
		        psgNote  As5
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		        psgNote  As5
		        psgNote  Gs4
		        psgNote  Gs4
		        psgNote  Ds5
		        psgNote  Gs4
		        psgNote  Gs4
		        psgNote  As5
		        psgNote  Gs4
		        psgNote  Ds5
		  psgInst 01Bh
		        psgNote  B4
		        psgNote  Ds5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  B5
		        psgNote  Ds6
		  psgInst 01Ah
		        psgNote  As5
		        psgNote  As4
		        psgNote  As4
		        psgNote  F5
		        psgNote  As4
		        psgNote  As4
		        psgNote  As5
		        psgNote  As4
		        psgNote  F5
		  psgInst 01Bh
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  Cs5
		        psgNote  F5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  Cs6
		repeatSection1Start
		  psgInst 01Ah
		        psgNoteL As5,6
		        psgNote  As4
		        psgNote  As4
		        psgNote  Fs5
		        psgNote  As4
		        psgNote  As4
		        psgNote  As5
		        psgNote  As4
		        psgNote  Fs5
		  psgInst 01Bh
		        psgNote  As4
		        psgNote  B4
		        psgNote  Ds5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  B5
		        psgNote  Ds6
		  psgInst 01Ah
		        psgNote  Cs6
		        psgNote  Cs5
		        psgNote  Cs5
		        psgNote  Gs5
		        psgNote  Gs4
		        psgNote  Gs4
		        psgNote  Cs5
		        psgNote  Cs4
		        psgNote  Cs5
		  psgInst 01Bh
		        psgNote  Cs6
		        psgNote  B5
		        psgNote  As5
		        psgNote  Gs5
		        psgNote  Fs5
		        psgNote  F5
		        psgNote  Cs5
		repeatEnd
		repeatSection2Start
		  psgInst 04Bh
		countedLoopStart 7
		        psgNoteL Ds3,6
		        psgNote  As3
		        psgNote  Ds4
		        psgNote  As3
		countedLoopEnd
		countedLoopStart 7
		        psgNoteL Fs3,6
		        psgNote  Cs4
		        psgNote  Fs4
		        psgNote  Cs4
		countedLoopEnd
		countedLoopStart 7
		        psgNoteL E3,6
		        psgNote  B3
		        psgNote  E4
		        psgNote  B3
		countedLoopEnd
		countedLoopStart 7
		        psgNoteL Ds3,6
		        psgNote  Gs3
		        psgNote  Ds4
		        psgNote  Gs3
		countedLoopEnd
		countedLoopStart 7
		        psgNoteL Cs3,6
		        psgNote  Gs3
		        psgNote  Cs4
		        psgNote  Gs3
		countedLoopEnd
		countedLoopStart 7
		        psgNoteL E3,6
		        psgNote  B3
		        psgNote  E4
		        psgNote  B3
		countedLoopEnd
		countedLoopStart 7
		        psgNoteL D3,6
		        psgNote  A3
		        psgNote  D4
		        psgNote  A3
		countedLoopEnd
		countedLoopStart 7
		        psgNoteL D3,6
		        psgNote  G3
		        psgNote  D4
		        psgNote  G3
		countedLoopEnd
		  psgInst 01Ah
		        psgNoteL G5,6
		        psgNote  F4
		        psgNote  F4
		        psgNote  C5
		        psgNote  F4
		        psgNote  F4
		        psgNote  G5
		        psgNote  F4
		        psgNote  C5
		  psgInst 01Bh
		        psgNote  Gs4
		        psgNote  C5
		        psgNote  Ds5
		        psgNote  F5
		        psgNote  G5
		        psgNote  Gs5
		        psgNote  C6
		  psgInst 01Ah
		        psgNote  G5
		        psgNote  G4
		        psgNote  G4
		        psgNote  D5
		        psgNote  G4
		        psgNote  G4
		        psgNote  G5
		        psgNote  G4
		        psgNote  D5
		  psgInst 01Bh
		        psgNote  F4
		        psgNote  G4
		        psgNote  As4
		        psgNote  D5
		        psgNote  F5
		        psgNote  G5
		        psgNote  As5
		  psgInst 01Ah
		        psgNote  As5
		        psgNote  Gs4
		        psgNote  Gs4
		        psgNote  Ds5
		        psgNote  Gs4
		        psgNote  Gs4
		        psgNote  As5
		        psgNote  Gs4
		        psgNote  Ds5
		  psgInst 01Bh
		        psgNote  B4
		        psgNote  Ds5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  B5
		        psgNote  Ds6
		  psgInst 01Ah
		        psgNote  As5
		        psgNote  As4
		        psgNote  As4
		        psgNote  F5
		        psgNote  As4
		        psgNote  As4
		        psgNote  As5
		        psgNote  As4
		        psgNote  F5
		  psgInst 01Bh
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  Cs5
		        psgNote  F5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  Cs6
		  psgInst 01Ah
		countedLoopStart 1
		        psgNoteL As5,6
		        psgNote  Gs4
		        psgNote  Gs4
		        psgNote  Ds5
		        psgNote  Gs4
		        psgNote  Gs4
		countedLoopEnd
		        psgNoteL As5,6
		        psgNote  Gs4
		        psgNote  Ds5
		        psgNote  Gs4
		countedLoopStart 2
		        psgNoteL As5,6
		        psgNote  As4
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		        psgNote  As4
		        psgNote  As5
		        psgNote  As4
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		        psgNote  As4
		        psgNote  As5
		        psgNote  As4
		        psgNote  Ds5
		        psgNote  As4
		countedLoopEnd
		mainLoopEnd
Music_50_Channel_7:
		  setRelease 00h
		  vibrato 04Ch
		  psgInst 01Ah
		countedLoopStart 1
		        psgNoteL Gs5,18
		        psgNote  Cs5
		countedLoopEnd
		        psgNoteL Gs5,12
		        psgNote  Cs5
		mainLoopStart
		repeatStart
		  psgInst 01Ah
		countedLoopStart 7
		        psgNoteL Gs5,18
		        psgNote  Cs5
		        psgNote  Gs5
		        psgNote  Cs5
		        psgNoteL Gs5,12
		        psgNote  Cs5
		countedLoopEnd
		        psgNoteL Gs5,18
		        psgNote  Cs5
		        psgNoteL Gs5,12
		        psgNoteL Cs5,6
		  psgInst 01Bh
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  Fs5
		        psgNote  Ds5
		        psgNote  Fs5
		  psgInst 01Ah
		        psgNoteL Gs5,18
		        psgNote  Ds5
		        psgNoteL Gs5,12
		        psgNoteL Ds5,6
		  psgInst 01Bh
		        psgNote  F4
		        psgNote  Cs4
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  Cs5
		        psgNote  F5
		repeatSection1Start
		  psgInst 01Ah
		        psgNoteL Gs5,18
		        psgNote  Ds5
		        psgNoteL Gs5,12
		        psgNoteL Ds5,6
		  psgInst 01Bh
		        psgNote  Fs4
		        psgNote  Gs4
		        psgNote  Fs4
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Fs5
		  psgInst 01Ah
		        psgNoteL B5,18
		        psgNote  Fs5
		        psgNote  B4
		  psgInst 01Bh
		        psgNoteL F5,6
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  B4
		        psgNote  As4
		        psgNote  Gs4
		        psgNote  F4
		repeatEnd
		repeatSection2Start
		  psgInst 00h
		countedLoopStart 7
		        waitL 192
		countedLoopEnd
		  psgInst 01Ah
		        psgNoteL F5,18
		        psgNote  As4
		        psgNoteL F5,12
		        psgNoteL As4,6
		  psgInst 01Bh
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  Ds5
		        psgNote  C5
		        psgNote  Ds5
		  psgInst 01Ah
		        psgNoteL F5,18
		        psgNote  C5
		        psgNoteL F5,12
		        psgNoteL C5,6
		  psgInst 01Bh
		        psgNote  D4
		        psgNote  As3
		        psgNote  D4
		        psgNote  F4
		        psgNote  G4
		        psgNote  As4
		        psgNote  D5
		  psgInst 01Ah
		        psgNoteL Gs5,18
		        psgNote  Cs5
		        psgNoteL Gs5,12
		        psgNoteL Cs5,6
		  psgInst 01Bh
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  Fs5
		        psgNote  Ds5
		        psgNote  Fs5
		  psgInst 01Ah
		        psgNoteL Gs5,18
		        psgNote  Ds5
		        psgNoteL Gs5,12
		        psgNoteL Ds5,6
		  psgInst 01Bh
		        psgNote  F4
		        psgNote  Cs4
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  Cs5
		        psgNote  F5
		  psgInst 01Ah
		countedLoopStart 3
		        psgNoteL Gs5,18
		        psgNote  Cs5
		        psgNote  Gs5
		        psgNote  Cs5
		        psgNoteL Gs5,12
		        psgNote  Cs5
		countedLoopEnd
		mainLoopEnd
Music_50_Channel_9:
		channel_end
