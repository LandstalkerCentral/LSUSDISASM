
; ASM FILE music54.asm :
; 0xBCCF..0xC477 : Music 54
Music_54:       db 0
		db 0
		db 0
		db 0B8h
		dw Music_54_Channel_0
		dw Music_54_Channel_1
		dw Music_54_Channel_2
		dw Music_54_Channel_3
		dw Music_54_Channel_4
		dw Music_54_Channel_5
		dw Music_54_Channel_6
		dw Music_54_Channel_7
		dw Music_54_Channel_9
		dw Music_54_Channel_9
Music_54_Channel_0:
		  inst 43
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL G6,6
		        note  G6
		        note  G6
		        note  G6
		        noteL G6,4
		        waitL 20
		        noteL C7,4
		        waitL 14
		        noteL B6,4
		        waitL 14
		        noteL As6,108
		        waitL 72
		  inst 51
		  vol 0Bh
		        noteL Fs6,16
		        noteL G6,8
		mainLoopStart
		        waitL 16
		        noteL E6,48
		        waitL 8
		        noteL B5,16
		        noteL C6,8
		        waitL 16
		        noteL As5,48
		        waitL 8
		        noteL Fs6,16
		        noteL G6,8
		        waitL 16
		        noteL A6,0
		  setSlide 010h
		        noteL As6,24
		  noSlide
		        noteL A6,8
		        note  G6
		        waitL 16
		        note  Ds6
		        noteL E6,68
		        waitL 12
		        noteL G6,16
		        noteL Gs6,8
		        noteL A6,16
		        noteL C7,8
		        waitL 16
		        noteL A6,8
		        waitL 16
		        noteL C7,8
		        waitL 16
		        noteL A6,8
		        waitL 16
		        noteL D7,0
		  setSlide 06h
		        noteL Ds7,24
		  noSlide
		        noteL D7,8
		        noteL C7,16
		        noteL A6,24
		        noteL G6,8
		        waitL 24
		        noteL G6,8
		        waitL 16
		        noteL A6,8
		        waitL 16
		        note  E6
		  sustain
		        noteL G6,12
		  setSlide 04h
		        noteL Fs6,16
		  setRelease 01h
		        noteL G6,40
		  noSlide
		        waitL 12
		        noteL E6,16
		        noteL D6,104
		        waitL 16
		  setSlide 08h
		        noteL D6,0
		        noteL Ds6,24
		  noSlide
		        noteL D6,8
		        note  C6
		        waitL 16
		        note  A5
		        noteL C6,104
		        waitL 16
		  inst 13
		  vol 0Ah
		        noteL G6,8
		        waitL 16
		        noteL A6,8
		        waitL 16
		        noteL B6,32
		  inst 1
		  vol 0Bh
		  setRelease 00h
		repeatStart
		countedLoopStart 1
		        noteL Ds6,3
		        wait
		        note  Ds6
		        wait
		        note  Ds6
		        wait
		        note  Ds6
		        wait
		        noteL Ds6,16
		        noteL D6,8
		        noteL Ds6,16
		        noteL D6,8
		        noteL C6,16
		        noteL A5,8
		countedLoopEnd
		        noteL C6,16
		        noteL Ds6,8
		        waitL 16
		        noteL Fs5,152
		repeatSection1Start
		repeatEnd
		repeatSection2Start
		  inst 13
		  vol 0Ah
		  setRelease 01h
		        noteL G6,8
		        waitL 88
		        waitL 64
		        noteL G6,4
		        wait
		        noteL Fs6,24
		        noteL F6,8
		        waitL 88
		        waitL 64
		        noteL F6,4
		        wait
		        noteL Ds6,24
		        waitL 8
		  inst 1
		  vol 0Bh
		        noteL As4,7
		        note  B4
		        note  C5
		        note  Ds5
		        noteL F5,6
		        note  Fs5
		        note  G5
		        note  As5
		        note  F5
		        noteL Fs5,5
		        note  G5
		        note  As5
		        note  B5
		        note  C6
		        note  Ds6
		        noteL F6,4
		        note  Fs6
		        note  G6
		        note  As6
		        note  Fs6
		        note  As6
		repeatStart
		countedLoopStart 3
		        noteL Fs6,3
		        note  As6
		countedLoopEnd
		repeatSection1Start
		  vol 0Ah
		repeatEnd
		repeatSection2Start
		  vol 09h
		repeatEnd
		repeatSection3Start
		  vol 08h
		repeatStart
		countedLoopStart 3
		        noteL Fs6,3
		        note  As6
		countedLoopEnd
		repeatSection1Start
		  vol 07h
		repeatEnd
		repeatSection2Start
		  vol 06h
		countedLoopStart 5
		        noteL Fs6,3
		        note  As6
		countedLoopEnd
		        noteL Fs6,3
		        waitL 9
		  inst 13
		  vol 0Ah
		        noteL C7,16
		        noteL B6,4
		        waitL 20
		        noteL As6,32
		  inst 51
		  vol 0Bh
		        noteL Fs6,16
		        noteL G6,8
		mainLoopEnd
Music_54_Channel_1:
		  inst 43
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL D6,6
		        note  D6
		        note  D6
		        note  D6
		        noteL D6,4
		        waitL 20
		        noteL G6,4
		        waitL 14
		        noteL G6,4
		        waitL 14
		        noteL F6,108
		        waitL 96
		mainLoopStart
		  inst 1
		  vol 0Ah
		countedLoopStart 2
		        waitL 24
		        noteL G5,6
		        waitL 42
		        noteL G5,6
		        waitL 18
		countedLoopEnd
		        waitL 24
		        noteL C6,6
		        waitL 18
		        noteL D6,6
		        waitL 18
		        noteL E6,6
		        waitL 18
		countedLoopStart 1
		        waitL 24
		        noteL A5,6
		        waitL 42
		        noteL A5,6
		        waitL 18
		countedLoopEnd
		countedLoopStart 1
		        waitL 24
		        noteL G5,6
		        waitL 42
		        noteL G5,6
		        waitL 18
		countedLoopEnd
		        waitL 24
		        noteL B5,6
		        waitL 42
		        noteL B5,6
		        waitL 18
		        noteL C6,6
		        waitL 42
		        noteL C6,6
		        waitL 42
		        waitL 24
		        note  E6
		        noteL F6,16
		        noteL F6,4
		        waitL 20
		        noteL E6,4
		        wait
		        waitL 16
		  inst 13
		  vol 0Ah
		        noteL B5,8
		        waitL 16
		        noteL C6,8
		        waitL 16
		        noteL D6,32
		countedLoopStart 1
		        waitL 24
		  inst 1
		  vol 0Ah
		        noteL G5,6
		        waitL 42
		        noteL G5,6
		        waitL 18
		countedLoopEnd
		repeatStart
		        waitL 24
		  inst 54
		  vol 09h
		        note  G6
		        noteL A6,16
		        noteL A6,6
		        waitL 18
		        noteL As6,24
		        waitL 8
		        noteL A6,16
		        waitL 8
		        noteL G6,16
		        waitL 8
		        noteL A6,16
		        waitL 8
		repeatSection1Start
		countedLoopStart 1
		        waitL 24
		  inst 1
		  vol 0Ah
		        noteL A5,6
		        waitL 42
		        noteL A5,6
		        waitL 18
		countedLoopEnd
		repeatEnd
		repeatSection2Start
		  inst 13
		  vol 0Ah
		        noteL B5,8
		        waitL 152
		        noteL B5,4
		        wait
		        noteL As5,24
		        noteL A5,8
		        waitL 152
		        noteL A5,4
		        wait
		        noteL G5,24
		        wait
		  inst 54
		  vol 09h
		        note  G6
		        noteL A6,16
		        noteL A6,8
		        waitL 16
		        noteL As6,24
		        waitL 8
		        noteL A6,16
		        waitL 8
		        noteL G6,16
		        waitL 8
		        noteL A6,16
		        waitL 32
		        noteL G6,24
		        noteL A6,16
		        noteL A6,8
		        waitL 16
		        noteL G6,8
		  inst 13
		  vol 0Ah
		        noteL G6,16
		        noteL G6,4
		        waitL 20
		        noteL F6,32
		        waitL 24
		mainLoopEnd
Music_54_Channel_2:
		  inst 43
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL C6,6
		        note  C6
		        note  C6
		        note  C6
		        noteL C6,4
		        waitL 20
		        noteL D6,4
		        waitL 14
		        noteL D6,4
		        waitL 14
		        noteL B5,108
		        waitL 96
		mainLoopStart
		  inst 1
		  vol 0Ah
		countedLoopStart 2
		        waitL 24
		        noteL E5,6
		        waitL 42
		        noteL E5,6
		        waitL 18
		countedLoopEnd
		        waitL 24
		        noteL E5,6
		        waitL 18
		        noteL F5,6
		        waitL 18
		        noteL G5,6
		        waitL 18
		countedLoopStart 1
		        waitL 24
		        noteL F5,6
		        waitL 42
		        noteL F5,6
		        waitL 18
		countedLoopEnd
		countedLoopStart 1
		        waitL 24
		        noteL E5,6
		        waitL 42
		        noteL E5,6
		        waitL 18
		countedLoopEnd
		        waitL 24
		        noteL D5,6
		        waitL 42
		        noteL D5,6
		        waitL 18
		        noteL Ds5,6
		        waitL 42
		        noteL F5,6
		        waitL 42
		        waitL 24
		        note  G5
		        noteL A5,16
		        noteL A5,4
		        waitL 20
		        noteL G5,4
		        wait
		        waitL 16
		  inst 13
		  vol 0Ah
		        noteL F5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		        noteL F5,32
		countedLoopStart 1
		        waitL 24
		  inst 1
		  vol 0Ah
		        noteL Ds5,6
		        waitL 42
		        noteL Ds5,6
		        waitL 18
		countedLoopEnd
		repeatStart
		        waitL 24
		  inst 54
		  vol 09h
		        note  Ds6
		        noteL F6,16
		        noteL F6,6
		        waitL 18
		        noteL G6,24
		        waitL 8
		        noteL F6,16
		        waitL 8
		        noteL Ds6,16
		        waitL 8
		        noteL F6,16
		        waitL 8
		repeatSection1Start
		countedLoopStart 1
		        waitL 24
		  inst 1
		  vol 0Ah
		        noteL F5,6
		        waitL 42
		        noteL F5,6
		        waitL 18
		countedLoopEnd
		repeatEnd
		repeatSection2Start
		  setRelease 07h
		  inst 57
		  vol 0Bh
		countedLoopStart 1
		  stereo 040h
		        noteL B5,8
		  stereo 080h
		        note  C5
		        note  C5
		  stereo 040h
		        note  B5
		        wait
		  stereo 080h
		        note  C5
		countedLoopEnd
		  stereo 040h
		        noteL B5,8
		  stereo 080h
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		  stereo 040h
		        note  B5
		        waitL 40
		  stereo 080h
		        noteL C5,8
		        note  C5
		        note  C5
		  stereo 040h
		        note  B5
		  stereo 080h
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		  stereo 040h
		        note  B5
		  stereo 080h
		        note  C5
		  stereo 040h
		        note  B5
		  stereo 080h
		        note  C5
		        note  C5
		        note  C5
		        note  C5
		  stereo 040h
		        note  B5
		  stereo 080h
		        note  C5
		        note  C5
		  stereo 040h
		        note  B5
		        waitL 64
		  setRelease 01h
		  stereo 0C0h
		  inst 54
		  vol 09h
		        noteL Ds6,24
		        noteL F6,16
		        noteL F6,8
		        waitL 16
		        noteL G6,24
		        waitL 8
		        noteL F6,16
		        waitL 8
		        noteL Ds6,16
		        waitL 8
		        noteL F6,16
		        waitL 32
		        noteL Ds6,24
		        noteL F6,16
		        noteL F6,8
		        waitL 16
		        noteL Ds6,8
		  inst 13
		  vol 0Ah
		        noteL D6,16
		        noteL D6,4
		        waitL 20
		        noteL B5,32
		        waitL 24
		mainLoopEnd
Music_54_Channel_3:
		  inst 38
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		  inst 38
		        noteL G3,6
		        note  G3
		        note  G3
		        note  G3
		        note  G3
		        waitL 18
		        noteL G2,4
		        waitL 14
		        noteL G2,4
		        waitL 14
		        noteL G2,108
		        waitL 16
		  vol 0Dh
		        noteL G3,8
		        note  F3
		        waitL 16
		        noteL E3,8
		        waitL 16
		        noteL D3,8
		        waitL 16
		  vol 0Ch
		mainLoopStart
		countedLoopStart 2
		        noteL C3,24
		        note  C4
		        noteL A3,4
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        noteL E3,8
		        wait
		        note  G3
		countedLoopEnd
		        noteL C3,12
		        wait
		        noteL C3,24
		        note  D3
		        note  E3
		        note  F2
		        note  F3
		        noteL D3,4
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        noteL A2,8
		        wait
		        note  C3
		        noteL F2,24
		        note  F3
		        noteL D3,4
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        noteL A2,8
		        wait
		        note  D3
		countedLoopStart 1
		        noteL C3,24
		        note  C4
		        noteL A3,4
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        noteL E3,8
		        wait
		        note  G3
		countedLoopEnd
		        noteL G2,24
		        note  G3
		        noteL D3,4
		        wait
		        note  D3
		        wait
		        note  D3
		        wait
		        noteL B2,8
		        wait
		        note  D3
		        note  F3
		        waitL 40
		        noteL G3,8
		        waitL 40
		        noteL C3,24
		        note  C4
		        noteL A3,4
		        wait
		        note  A3
		        wait
		        note  A3
		        wait
		        noteL E3,8
		        wait
		        note  G3
		        waitL 16
		        noteL G2,8
		        waitL 16
		        noteL G2,8
		        waitL 16
		        noteL G2,32
		countedLoopStart 1
		        noteL C3,24
		        note  C4
		        noteL As3,4
		        wait
		        note  As3
		        wait
		        note  As3
		        wait
		        noteL F3,8
		        wait
		        note  G3
		countedLoopEnd
		countedLoopStart 1
		        noteL C3,24
		        note  C4
		        noteL As3,4
		        wait
		        note  As3
		        wait
		        note  As3
		        wait
		        noteL Ds3,8
		        wait
		        note  F3
		countedLoopEnd
		        noteL F2,24
		        note  F3
		        noteL Ds3,4
		        wait
		        note  Ds3
		        wait
		        note  Ds3
		        wait
		        noteL As2,8
		        wait
		        note  C3
		        noteL F2,24
		        note  F3
		        noteL Ds3,4
		        wait
		        note  Ds3
		        wait
		        note  Ds3
		        wait
		        noteL As2,8
		        wait
		        note  B2
		countedLoopStart 1
		        noteL C3,24
		        note  C4
		        noteL As3,4
		        wait
		        note  As3
		        wait
		        note  As3
		        wait
		        noteL Ds3,8
		        wait
		        note  F3
		countedLoopEnd
		        noteL G2,8
		        waitL 88
		        waitL 64
		        noteL G3,8
		        noteL Fs3,24
		        noteL F3,8
		        waitL 88
		        waitL 64
		        noteL F3,8
		        noteL Ds3,24
		repeatStart
		        noteL C3,24
		        note  C4
		        noteL As3,4
		        wait
		        note  As3
		        wait
		        note  As3
		        wait
		        noteL F3,8
		        wait
		repeatSection1Start
		        noteL G3,8
		repeatEnd
		repeatSection2Start
		        noteL G3,8
		repeatEnd
		repeatSection3Start
		        noteL Fs3,8
		        noteL G3,16
		        noteL G2,4
		        waitL 20
		        noteL G2,56
		mainLoopEnd
Music_54_Channel_4:
		  setRelease 01h
		  vibrato 02Ch
		        waitL 84
		  inst 62
		  vol 0Bh
		        noteL G4,24
		  inst 61
		  vol 0Ch
		        noteL A4,6
		  vol 09h
		        note  A4
		  vol 0Ch
		        noteL A4,4
		  vol 09h
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		        note  A4
		  vol 0Ch
		        noteL A4,6
		  vol 09h
		        note  A4
		        note  A4
		  vol 0Ch
		        note  A4
		  vol 09h
		        note  A4
		        note  A4
		  vol 0Ch
		        note  A4
		  vol 09h
		        note  A4
		        noteL A4,64
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        noteL A4,24
		mainLoopStart
		countedLoopStart 8
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        noteL A4,24
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        note  A4
		  inst 61
		  vol 0Ah
		        note  A4
		        note  A4
		countedLoopEnd
		  inst 61
		  vol 0Ch
		        noteL A4,48
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        noteL A4,24
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        noteL A4,24
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        note  A4
		  inst 61
		  vol 0Ah
		        note  A4
		        note  A4
		  inst 61
		  vol 0Ch
		        noteL A4,96
		countedLoopStart 3
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        noteL A4,24
		  inst 61
		  vol 0Ch
		        noteL A4,8
		  vol 0Ah
		        note  A4
		        note  A4
		  inst 62
		  vol 0Ah
		        noteL A4,16
		  inst 61
		  vol 0Ah
		        noteL A4,8
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        noteL A4,24
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        note  A4
		  inst 61
		  vol 0Ah
		        note  A4
		        note  A4
		countedLoopEnd
		  inst 13
		  vol 0Ah
		        noteL G5,8
		        waitL 152
		        noteL G5,4
		        wait
		        noteL Fs5,24
		        noteL F5,8
		        waitL 152
		        noteL F5,4
		        wait
		        noteL Ds5,24
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        noteL A4,24
		  inst 61
		  vol 0Ch
		        noteL A4,8
		  vol 0Ah
		        note  A4
		        note  A4
		  inst 62
		  vol 0Ah
		        noteL A4,16
		  inst 61
		  vol 0Ah
		        noteL A4,8
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        noteL A4,24
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        note  A4
		  inst 61
		  vol 0Ah
		        note  A4
		        note  A4
		  inst 61
		  vol 0Ch
		        noteL A4,16
		  vol 0Ah
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        noteL A4,24
		  inst 61
		  vol 0Ch
		        noteL A4,8
		  vol 0Ah
		        note  A4
		        note  A4
		  inst 62
		  vol 0Ah
		        noteL A4,16
		  inst 61
		  vol 0Ah
		        noteL A4,8
		  vol 0Ch
		        noteL A4,16
		        noteL A4,24
		        note  A4
		        noteL A4,8
		  inst 62
		  vol 0Ah
		        noteL A4,24
		mainLoopEnd
Music_54_Channel_5:
		        sampleL 1,6
		        sample  1
		        sample  1
		        sample  1
		        sampleL 1,24
		        sampleL 0,18
		        sample  0
		        sampleL 5,60
		  stereo 080h
		        sampleL 2,18
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sampleL 4,12
		  stereo 0C0h
		        sampleL 0,96
		mainLoopStart
		countedLoopStart 2
		        sampleL 0,24
		        sample  1
		        sample  0
		        sample  1
		countedLoopEnd
		        sampleL 0,24
		        sample  1
		        sample  1
		        sampleL 1,16
		        sampleL 0,8
		countedLoopStart 2
		        sampleL 0,24
		        sample  1
		        sample  0
		        sample  1
		countedLoopEnd
		        sampleL 0,16
		  stereo 040h
		        sampleL 4,8
		  stereo 0C0h
		        sampleL 1,16
		  stereo 080h
		        sampleL 2,24
		  stereo 0C0h
		        sampleL 0,8
		        sampleL 1,16
		        sampleL 0,8
		        sampleL 0,24
		        sampleL 1,16
		        sampleL 0,24
		        sampleL 1,8
		        sample  0
		        sample  1
		        sample  1
		        sampleL 1,48
		        sample  0
		        sampleL 0,24
		        sample  1
		        sample  0
		        sample  1
		        sampleL 0,16
		        sampleL 1,24
		        sample  1
		        sampleL 1,8
		  stereo 080h
		        sampleL 2,16
		  stereo 040h
		        sampleL 4,8
		countedLoopStart 2
		  stereo 0C0h
		        sampleL 0,24
		        sample  1
		        sampleL 0,16
		        sampleL 0,8
		        sampleL 1,24
		        sample  0
		        sample  1
		        sampleL 0,8
		        sample  0
		        sample  0
		        sampleL 1,24
		countedLoopEnd
		        sampleL 0,24
		        sample  1
		        sampleL 0,16
		        sampleL 0,8
		        sampleL 1,24
		        sampleL 0,16
		  stereo 080h
		        sampleL 2,24
		  stereo 0C0h
		        sample  3
		  stereo 040h
		        sampleL 4,8
		  stereo 0C0h
		        sample  1
		        sample  1
		        sample  1
		countedLoopStart 1
		        sampleL 1,160
		        sampleL 1,8
		        sampleL 1,24
		countedLoopEnd
		        sampleL 0,24
		        sample  1
		        sampleL 0,16
		        sampleL 0,8
		        sampleL 1,24
		        sample  0
		        sample  1
		        sampleL 0,8
		        sample  0
		        sample  0
		        sampleL 1,24
		        sample  0
		        sample  1
		        sampleL 0,16
		        sampleL 0,8
		        sampleL 1,24
		        sampleL 1,16
		        sampleL 1,24
		        sample  1
		        sampleL 0,8
		        sampleL 1,24
		mainLoopEnd
Music_54_Channel_6:
		  psgInst 00h
		  ymTimer 0C4h
		        waitL 96
		        wait
		  ymTimer 0BCh
		  psgInst 00h
		channel_end
Music_54_Channel_7:
		channel_end
Music_54_Channel_9:
		channel_end
