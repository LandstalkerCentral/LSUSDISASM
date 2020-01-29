
; ASM FILE music51.asm :
; 0xA792..0xB272 : Music 51
Music_51:       db 0
		db 0
		db 0
		db 0B7h
		dw Music_51_Channel_0
		dw Music_51_Channel_1
		dw Music_51_Channel_2
		dw Music_51_Channel_3
		dw Music_51_Channel_4
		dw Music_51_Channel_5
		dw Music_51_Channel_6
		dw Music_51_Channel_7
		dw Music_51_Channel_9
		dw Music_51_Channel_9
Music_51_Channel_0:
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        waitL 180
		repeatStart
		  inst 20
		  vol 0Ah
		        noteL A5,6
		        wait
		        note  D6
		        note  E6
		        noteL F6,24
		        noteL A5,6
		        wait
		        note  E6
		        note  F6
		        noteL G6,24
		        noteL A5,6
		        wait
		        note  F6
		        note  G6
		        noteL A6,60
		        waitL 12
		        noteL A6,6
		        wait
		        note  As6
		        note  A6
		        note  G6
		        wait
		        noteL G6,36
		        noteL E6,12
		        note  A6
		        note  G6
		        noteL G6,6
		        note  F6
		        note  E6
		        note  F6
		        noteL E6,48
		        noteL D6,12
		        wait
		        noteL G6,6
		        note  A6
		        noteL As6,24
		        noteL D6,6
		        wait
		        note  A6
		        note  As6
		        noteL C7,24
		        noteL D6,6
		        wait
		        note  As6
		        note  C7
		        noteL D7,36
		        waitL 12
		        note  D6
		        note  E6
		        note  F6
		repeatSection1Start
		        noteL G6,24
		        waitL 12
		        noteL G6,6
		        note  A6
		        noteL As6,24
		        waitL 12
		        note  As6
		        noteL A6,72
		        waitL 12
		repeatEnd
		repeatSection2Start
		        noteL G6,30
		        waitL 6
		        note  G6
		        note  F6
		        noteL E6,12
		        note  D6
		        note  Cs6
		        note  E6
		  setRelease 00h
		        noteL E6,48
		        noteL D6,36
		  setRelease 01h
		  inst 27
		  vol 0Bh
		  stereo 040h
		        noteL A4,12
		        noteL As4,6
		        wait
		        note  As4
		        note  As4
		        noteL F5,36
		        noteL D5,6
		        note  E5
		        note  F5
		        wait
		        note  A5
		        wait
		        noteL G5,12
		        note  E5
		        noteL C5,48
		        waitL 12
		  stereo 080h
		  inst 13
		  vol 0Dh
		        note  C5
		        noteL Cs5,6
		        wait
		        note  Cs5
		        note  Cs5
		        noteL Gs5,36
		        noteL F5,6
		        note  G5
		        note  Gs5
		        wait
		        note  C6
		        wait
		        noteL As5,12
		        note  G5
		        noteL Ds5,72
		  stereo 0C0h
		  inst 56
		  vol 0Ch
		  setRelease 06h
		        noteL A6,36
		        noteL G6,12
		        note  A6
		        note  G6
		        noteL A6,36
		        noteL G6,12
		        note  A6
		        note  As6
		        noteL As6,36
		        noteL Gs6,12
		        note  As6
		        note  Gs6
		        noteL As6,36
		        noteL Gs6,12
		        note  As6
		        note  C7
		  setRelease 01h
		        noteL C7,144
		        waitL 24
		  inst 26
		  vol 0Ch
		        note  Gs4
		        note  Cs5
		        note  Ds5
		        waitL 12
		        note  Gs4
		        note  Cs5
		        note  Ds5
		        note  F5
		        note  Fs5
		        note  Ds5
		        note  F5
		        note  Cs5
		        note  Ds5
		        note  B4
		        note  Cs5
		        noteL D5,144
		        waitL 24
		        note  D5
		        note  G5
		        note  A5
		        waitL 12
		        note  D5
		        note  G5
		        note  A5
		        note  B5
		        note  C6
		        note  A5
		        note  B5
		        note  G5
		        note  A5
		        note  F5
		        note  G5
		        noteL Gs5,192
		        wait
		mainLoopEnd
Music_51_Channel_1:
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        waitL 192
		repeatStart
		  inst 38
		  vol 0Ah
		        noteL D5,48
		        note  Cs5
		        note  C5
		        note  B4
		        noteL As4,24
		        noteL G5,6
		        note  A5
		        note  As5
		        note  D6
		        noteL Cs6,24
		        noteL B5,12
		        note  Cs6
		        note  D6
		        wait
		        noteL D5,6
		        note  E5
		        note  F5
		        note  G5
		        noteL A5,40
		        waitL 8
		        noteL G5,48
		        note  Fs5
		        note  F5
		        noteL E5,6
		        wait
		        noteL F5,12
		        note  G5
		        note  A5
		repeatSection1Start
		        noteL As5,24
		        waitL 12
		        noteL As5,6
		        note  C6
		        noteL D6,24
		        waitL 12
		        note  D6
		        noteL D6,48
		        noteL Cs6,24
		        wait
		repeatEnd
		repeatSection2Start
		        noteL As5,30
		        waitL 6
		        note  As5
		        note  A5
		        noteL G5,12
		        note  F5
		        note  E5
		        note  G5
		        noteL G5,48
		        note  F5
		  inst 47
		  vol 0Ah
		        noteL Cs7,96
		        noteL Ds7,24
		  inst 31
		  vol 09h
		        noteL C7,6
		        note  D7
		        note  E7
		        note  A7
		        note  G7
		        note  G6
		        note  F7
		        note  G6
		        note  E7
		        note  G6
		        note  D7
		        note  C7
		  inst 47
		  vol 0Ah
		        noteL Ds7,96
		        noteL F7,24
		  inst 31
		  vol 0Ah
		        noteL Ds7,6
		        note  F7
		        note  G7
		        note  C8
		        note  As7
		        note  As6
		        note  Gs7
		        note  As6
		        note  G7
		        note  As6
		        note  F7
		        note  Ds7
		        wait
		  inst 9
		  vol 0Bh
		        note  F5
		        note  As5
		        note  C6
		        noteL C6,30
		        noteL F5,6
		        note  As5
		        note  C6
		        note  Ds6
		        note  F6
		        note  D6
		        note  Ds6
		        note  C6
		        note  D6
		        note  As5
		        note  C6
		        note  F5
		        note  As5
		        note  C6
		        note  F6
		        wait
		        note  Ds5
		        note  Gs5
		        note  As5
		        noteL As5,24
		        waitL 6
		        note  Ds5
		        note  Gs5
		        note  As5
		        note  Cs6
		        note  Ds6
		        note  C6
		        note  Cs6
		        note  As5
		        note  C6
		        note  Gs5
		        note  As5
		        note  G5
		        note  As5
		        note  Ds6
		        note  G6
		        waitL 24
		  inst 26
		  vol 0Bh
		        noteL Gs4,6
		        wait
		        note  Gs4
		        note  Gs4
		        noteL Gs5,36
		        noteL Fs5,6
		        wait
		        note  F5
		        wait
		        note  Cs5
		        wait
		        noteL Ds5,48
		        waitL 216
		  stereo 040h
		  inst 7
		  vol 0Ch
		        noteL F5,4
		        waitL 8
		        noteL F5,6
		        note  F5
		        noteL As5,4
		        waitL 8
		        noteL Ds6,12
		        noteL D6,4
		        waitL 8
		        noteL As5,6
		        note  As5
		        noteL C6,4
		        waitL 8
		        noteL Gs6,12
		        noteL G6,4
		        waitL 14
		        noteL Ds6,6
		        noteL F6,48
		        waitL 216
		  stereo 080h
		  inst 16
		  vol 0Dh
		        noteL B5,4
		        waitL 8
		        noteL B5,6
		        note  B5
		        noteL E6,4
		        waitL 8
		        noteL A6,12
		        noteL Gs6,4
		        waitL 8
		        noteL E6,6
		        note  E6
		        noteL Fs6,4
		        waitL 8
		        noteL D7,12
		        noteL Cs7,4
		        waitL 14
		        noteL A6,6
		        noteL B6,48
		        waitL 24
		  stereo 040h
		  inst 7
		  vol 0Ch
		        noteL Cs6,6
		        note  D6
		        note  E6
		        note  A6
		        noteL G6,36
		        waitL 12
		        noteL A5,6
		        note  B5
		        note  Cs6
		        note  G6
		        noteL F6,48
		        note  E6
		  stereo 0C0h
		mainLoopEnd
Music_51_Channel_2:
		  inst 38
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		  stereo 0C0h
		countedLoopStart 2
		        noteL D3,6
		        waitL 18
		countedLoopEnd
		        noteL D3,6
		        wait
		        noteL A2,12
		countedLoopStart 3
		        noteL D3,6
		        waitL 18
		countedLoopEnd
		mainLoopStart
		repeatStart
		countedLoopStart 7
		        noteL D3,6
		        waitL 18
		countedLoopEnd
		countedLoopStart 1
		        noteL G2,6
		        waitL 18
		countedLoopEnd
		countedLoopStart 1
		        noteL A2,6
		        waitL 18
		countedLoopEnd
		countedLoopStart 2
		        noteL D3,6
		        waitL 18
		countedLoopEnd
		        noteL D2,6
		        note  E2
		        note  F2
		        note  A2
		countedLoopStart 6
		        noteL G2,6
		        waitL 18
		countedLoopEnd
		        noteL G3,24
		        wait
		        note  E3
		repeatSection1Start
		        noteL Ds3,6
		        wait
		        note  Ds3
		        note  F3
		        noteL G3,24
		        noteL A3,48
		        noteL A2,24
		        wait
		repeatEnd
		repeatSection2Start
		        noteL A3,48
		        noteL As3,96
		        note  G3
		        note  A3
		        note  As3
		        note  C4
		        waitL 12
		  setRelease 06h
		        note  C3
		        noteL F3,30
		        waitL 6
		        noteL C3,12
		        note  F3
		        note  As2
		  setRelease 01h
		        noteL C3,24
		        note  F3
		        waitL 12
		  setRelease 06h
		        note  As2
		        noteL Ds3,30
		        waitL 6
		        noteL As2,12
		        note  Ds3
		        note  Gs2
		  setRelease 01h
		        noteL As2,24
		        note  Ds3
		        note  Gs2
		        waitL 12
		  setRelease 06h
		        note  Ds2
		        note  Gs2
		        note  Cs2
		        note  Ds2
		        note  Fs2
		        note  Gs2
		        noteL Gs3,24
		        note  Fs3
		        note  F3
		  setRelease 01h
		        noteL Ds3,12
		countedLoopStart 1
		        noteL Cs3,24
		        waitL 12
		  setRelease 06h
		        note  Gs2
		        note  Cs3
		        note  Fs2
		  setRelease 01h
		        noteL Gs2,24
		countedLoopEnd
		        noteL As2,24
		        waitL 12
		  setRelease 06h
		        note  F2
		        note  As2
		        note  Ds2
		        note  F2
		        note  Gs2
		        note  As2
		  setRelease 01h
		        note  As3
		        noteL Gs3,6
		        wait
		        noteL F3,12
		        noteL D3,6
		        wait
		        noteL As2,12
		  setRelease 06h
		        note  Gs2
		        note  F2
		countedLoopStart 1
		  setRelease 06h
		        noteL G2,30
		        waitL 6
		        noteL D2,12
		        note  G2
		        note  C3
		  setRelease 01h
		        noteL D3,24
		countedLoopEnd
		        noteL E3,24
		        waitL 12
		  setRelease 06h
		        note  B2
		        note  E3
		        note  A2
		        note  B2
		        note  D3
		        note  E3
		        noteL B3,24
		        note  A3
		        noteL Gs3,12
		  setRelease 01h
		        noteL E3,24
		        noteL A3,6
		        wait
		countedLoopStart 4
		        noteL Gs3,6
		        note  A3
		        noteL A3,4
		        waitL 8
		countedLoopEnd
		  vol 0Bh
		        noteL Gs3,6
		        note  A3
		        noteL A3,4
		        waitL 8
		  vol 0Ah
		        noteL Gs3,6
		        note  A3
		        noteL A3,4
		        waitL 8
		  vol 0Ch
		        noteL A2,12
		countedLoopStart 2
		        noteL D3,6
		        waitL 18
		countedLoopEnd
		        noteL D3,6
		        wait
		        noteL A2,12
		        noteL D3,6
		        wait
		        note  A2
		        wait
		countedLoopStart 2
		        noteL D3,6
		        waitL 18
		countedLoopEnd
		mainLoopEnd
Music_51_Channel_3:
		  shifting 020h
		  setRelease 01h
		  vibrato 02Ch
		        waitL 6
		mainLoopStart
		        waitL 180
		  stereo 040h
		repeatStart
		  inst 20
		  vol 08h
		        noteL A5,6
		        wait
		        note  D6
		        note  E6
		        noteL F6,24
		        noteL A5,6
		        wait
		        note  E6
		        note  F6
		        noteL G6,24
		        noteL A5,6
		        wait
		        note  F6
		        note  G6
		        noteL A6,60
		        waitL 12
		        noteL A6,6
		        wait
		        note  As6
		        note  A6
		        note  G6
		        wait
		        noteL G6,36
		        noteL E6,12
		        note  A6
		        note  G6
		        noteL G6,6
		        note  F6
		        note  E6
		        note  F6
		        noteL E6,48
		        noteL D6,12
		        wait
		        noteL G6,6
		        note  A6
		        noteL As6,24
		        noteL D6,6
		        wait
		        note  A6
		        note  As6
		        noteL C7,24
		        noteL D6,6
		        wait
		        note  As6
		        note  C7
		        noteL D7,36
		        waitL 12
		        note  D6
		        note  E6
		        note  F6
		repeatSection1Start
		        noteL G6,24
		        waitL 12
		        noteL G6,6
		        note  A6
		        noteL As6,24
		        waitL 12
		        note  As6
		        noteL A6,72
		        waitL 12
		  stereo 080h
		repeatEnd
		repeatSection2Start
		        noteL G6,30
		        waitL 6
		        note  G6
		        note  F6
		        noteL E6,12
		        note  D6
		        note  Cs6
		        note  E6
		  setRelease 00h
		        noteL E6,48
		        noteL D6,36
		  setRelease 01h
		  inst 27
		  vol 09h
		        noteL A4,12
		        noteL As4,6
		        wait
		        note  As4
		        note  As4
		        noteL F5,36
		        noteL D5,6
		        note  E5
		        note  F5
		        wait
		        note  A5
		        wait
		        noteL G5,12
		        note  E5
		        noteL C5,48
		        waitL 12
		  stereo 040h
		  inst 13
		  vol 0Ah
		        note  C5
		        noteL Cs5,6
		        wait
		        note  Cs5
		        note  Cs5
		        noteL Gs5,36
		        noteL F5,6
		        note  G5
		        note  Gs5
		        wait
		        note  C6
		        wait
		        noteL As5,12
		        note  G5
		        noteL Ds5,72
		  stereo 080h
		  inst 56
		  vol 0Ah
		  setRelease 06h
		        noteL A6,36
		        noteL G6,12
		        note  A6
		        note  G6
		        noteL A6,36
		        noteL G6,12
		        note  A6
		        note  As6
		        noteL As6,36
		        noteL Gs6,12
		        note  As6
		        note  Gs6
		        noteL As6,36
		        noteL Gs6,12
		        note  As6
		        note  C7
		  setRelease 01h
		        noteL C7,144
		        waitL 24
		  stereo 0C0h
		  inst 26
		  vol 0Ah
		        note  Gs4
		        note  Cs5
		        note  Ds5
		        waitL 12
		        note  Gs4
		        note  Cs5
		        note  Ds5
		        note  F5
		        note  Fs5
		        note  Ds5
		        note  F5
		        note  Cs5
		        note  Ds5
		        note  B4
		        note  Cs5
		        noteL D5,144
		        waitL 24
		        note  D5
		        note  G5
		        note  A5
		        waitL 12
		        note  D5
		        note  G5
		        note  A5
		        note  B5
		        note  C6
		        note  A5
		        note  B5
		        note  G5
		        note  A5
		        note  F5
		        note  G5
		        noteL Gs5,192
		        wait
		mainLoopEnd
Music_51_Channel_4:
		        waitL 84
		  inst 48
		  vol 0Dh
		        noteL A3,12
		        note  D4
		        waitL 84
		mainLoopStart
		        waitL 6
		  stereo 080h
		  shifting 020h
		  inst 38
		  vol 08h
		repeatStart
		        noteL D5,48
		        note  Cs5
		        note  C5
		        note  B4
		        noteL As4,24
		        noteL G5,6
		        note  A5
		        note  As5
		        note  D6
		        noteL Cs6,24
		        noteL B5,12
		        note  Cs6
		        note  D6
		        wait
		        noteL D5,6
		        note  E5
		        note  F5
		        note  G5
		        noteL A5,40
		        waitL 8
		        noteL G5,48
		        note  Fs5
		        note  F5
		        noteL E5,6
		        wait
		        noteL F5,12
		        note  G5
		        note  A5
		repeatSection1Start
		        noteL As5,24
		        waitL 12
		        noteL As5,6
		        note  C6
		        noteL D6,24
		        waitL 12
		        note  D6
		        noteL D6,48
		        noteL Cs6,24
		        wait
		  stereo 040h
		repeatEnd
		repeatSection2Start
		        noteL As5,30
		        waitL 6
		        note  As5
		        note  A5
		        noteL G5,12
		        note  F5
		        note  E5
		        note  G5
		        noteL G5,48
		        note  F5
		        waitL 120
		  inst 31
		  vol 07h
		        noteL C7,6
		        note  D7
		        note  E7
		        note  A7
		        note  G7
		        note  G6
		        note  F7
		        note  G6
		        note  E7
		        note  G6
		        note  D7
		        note  C7
		        waitL 96
		        waitL 24
		  stereo 080h
		        noteL Ds7,6
		        note  F7
		        note  G7
		        note  C8
		        note  As7
		        note  As6
		        note  Gs7
		        note  As6
		        note  G7
		        note  As6
		        note  F7
		        note  Ds7
		        wait
		  stereo 040h
		  inst 9
		  vol 08h
		        note  F5
		        note  As5
		        note  C6
		        noteL C6,30
		        noteL F5,6
		        note  As5
		        note  C6
		        note  Ds6
		        note  F6
		        note  D6
		        note  Ds6
		        note  C6
		        note  D6
		        note  As5
		        note  C6
		        note  F5
		        note  As5
		        note  C6
		        note  F6
		        wait
		        note  Ds5
		        note  Gs5
		        note  As5
		        noteL As5,24
		        waitL 6
		        note  Ds5
		        note  Gs5
		        note  As5
		        note  Cs6
		        note  Ds6
		        note  C6
		        note  Cs6
		        note  As5
		        note  C6
		        note  Gs5
		        note  As5
		        note  G5
		        note  As5
		        note  Ds6
		        note  G6
		        waitL 24
		  stereo 0C0h
		  inst 26
		  vol 08h
		        noteL Gs4,6
		        wait
		        note  Gs4
		        note  Gs4
		        noteL Gs5,36
		        noteL Fs5,6
		        wait
		        note  F5
		        wait
		        note  Cs5
		        wait
		        noteL Ds5,48
		        waitL 216
		  stereo 040h
		  inst 7
		  vol 09h
		        noteL F5,4
		        waitL 8
		        noteL F5,6
		        note  F5
		        noteL As5,4
		        waitL 8
		        noteL Ds6,12
		        noteL D6,4
		        waitL 8
		        noteL As5,6
		        note  As5
		        noteL C6,4
		        waitL 8
		        noteL Gs6,12
		        noteL G6,4
		        waitL 14
		        noteL Ds6,6
		        noteL F6,48
		        waitL 216
		  stereo 080h
		  inst 16
		  vol 0Ah
		        noteL B5,4
		        waitL 8
		        noteL B5,6
		        note  B5
		        noteL E6,4
		        waitL 8
		        noteL A6,12
		        noteL Gs6,4
		        waitL 8
		        noteL E6,6
		        note  E6
		        noteL Fs6,4
		        waitL 8
		        noteL D7,12
		        noteL Cs7,4
		        waitL 14
		        noteL A6,6
		        noteL B6,48
		        waitL 24
		  stereo 040h
		  inst 7
		  vol 09h
		        noteL Cs6,6
		        note  D6
		        note  E6
		        note  A6
		        noteL G6,36
		        waitL 12
		        noteL A5,6
		        note  B5
		        note  Cs6
		        note  G6
		        noteL F6,48
		        noteL E6,42
		  shifting 00h
		  stereo 0C0h
		  inst 48
		  vol 0Dh
		        noteL D4,84
		        noteL A3,12
		        note  D4
		        note  A3
		        noteL D4,48
		        waitL 24
		mainLoopEnd
Music_51_Channel_5:
		        sampleL 9,12
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,36
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,12
		        sample  10
		        sample  9
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,36
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,12
		        sample  10
		mainLoopStart
		repeatStart
		countedLoopStart 4
		        sampleL 9,12
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,36
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,12
		        sample  10
		countedLoopEnd
		        sampleL 9,12
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,12
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,24
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 10,2
		        sample  11
		        sample  11
		        sample  11
		        sample  11
		        sampleL 11,7
		repeatSection1Start
		        waitL 120
		        sampleL 9,12
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,48
		repeatEnd
		repeatSection2Start
		countedLoopStart 4
		        waitL 96
		countedLoopEnd
		        waitL 72
		        sampleL 11,3
		        sampleL 11,2
		        sample  11
		        sample  11
		        sample  11
		        sample  11
		        sample  11
		        sample  11
		        sample  10
		        sample  10
		        sampleL 10,3
		countedLoopStart 1
		        sampleL 9,24
		        sampleL 5,36
		        sampleL 9,6
		        sample  10
		        sampleL 9,12
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,12
		        sampleL 9,6
		        sample  10
		        sampleL 9,12
		        sampleL 9,6
		        sample  10
		countedLoopEnd
		        sampleL 9,12
		        sampleL 9,48
		        sampleL 9,6
		        sample  10
		        sampleL 9,24
		        sampleL 9,12
		        sampleL 9,24
		        sample  9
		        sample  10
		        sampleL 11,12
		        waitL 192
		repeatStart
		        waitL 24
		        sampleL 9,12
		        sampleL 9,6
		        sample  10
		        sampleL 9,12
		        sampleL 9,6
		        sample  10
		        sampleL 9,12
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,12
		        sampleL 9,24
		        sampleL 9,6
		        sample  10
		        sampleL 9,12
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,24
		repeatSection1Start
		        waitL 192
		repeatEnd
		repeatSection2Start
		        sampleL 5,60
		        sampleL 11,4
		        sampleL 11,3
		        sampleL 11,2
		        sample  10
		        sampleL 10,1
		        sampleL 9,24
		        waitL 12
		        sampleL 9,24
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,36
		        sampleL 11,12
		        sample  10
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,36
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,12
		        sample  10
		        sample  9
		        sampleL 9,6
		        sample  10
		        sampleL 9,12
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,12
		        sampleL 9,4
		        sampleL 10,3
		        sampleL 11,2
		        sample  11
		        sampleL 11,1
		        sampleL 9,12
		        sample  10
		mainLoopEnd
Music_51_Channel_6:
		  setRelease 01h
		  vibrato 04Ch
		mainLoopStart
		  psgInst 07Ah
		countedLoopStart 2
		        psgNoteL A4,4
		        waitL 8
		        psgNoteL Gs4,6
		        psgNote  A4
		countedLoopEnd
		        psgNoteL A4,4
		        waitL 8
		        psgNoteL A4,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL A4,4
		        waitL 8
		        psgNoteL Gs4,6
		        psgNote  A4
		countedLoopEnd
		        psgNoteL A4,3
		        psgNote  G4
		        psgNote  F4
		        psgNote  E4
		        psgNote  D4
		        psgNote  C4
		        psgNote  As3
		        psgNote  A3
		repeatStart
		countedLoopStart 2
		        psgNoteL A3,4
		        waitL 8
		        psgNoteL A3,6
		        psgNote  A3
		countedLoopEnd
		        psgNoteL A3,4
		        waitL 8
		        psgNoteL A3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL A3,4
		        waitL 8
		        psgNoteL A3,6
		        psgNote  A3
		countedLoopEnd
		        psgNoteL A3,4
		        waitL 8
		        psgNoteL A3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL G3,4
		        waitL 8
		        psgNoteL G3,6
		        psgNote  G3
		countedLoopEnd
		        psgNoteL G3,4
		        waitL 8
		        psgNoteL G3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,6
		        psgNote  F3
		countedLoopEnd
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL D3,4
		        waitL 8
		        psgNoteL D3,6
		        psgNote  D3
		countedLoopEnd
		        psgNoteL D3,4
		        waitL 8
		        psgNoteL D3,4
		        waitL 8
		countedLoopStart 1
		        psgNoteL D3,4
		        waitL 8
		        psgNoteL D3,6
		        psgNote  D3
		countedLoopEnd
		        psgNoteL D3,4
		        waitL 20
		        psgNoteL D3,24
		        wait
		repeatSection1Start
		        psgNoteL G3,12
		        wait
		        psgNoteL G3,6
		        wait
		        psgNote  G3
		        psgNote  A3
		        psgNoteL As3,24
		        psgNoteL A3,20
		        waitL 4
		        psgNote  A3
		        waitL 8
		        psgNoteL A3,6
		        psgNote  A3
		        psgNoteL A3,24
		        wait
		repeatEnd
		repeatSection2Start
		        psgNoteL G3,24
		        psgNoteL A3,48
		  psgInst 079h
		        psgNoteL As3,96
		        psgNote  F4
		        psgNote  E4
		        psgNote  Gs4
		        psgNote  G4
		  psgInst 0Ah
		  setRelease 06h
		        psgNoteL F4,30
		        waitL 6
		        psgNoteL Ds4,12
		        psgNote  F4
		        psgNote  Ds4
		        psgNoteL F4,36
		        psgNoteL Ds4,12
		        psgNote  F4
		        psgNote  G4
		        psgNoteL G4,30
		        waitL 6
		        psgNoteL F4,12
		        psgNote  G4
		        psgNote  F4
		        psgNoteL G4,36
		        psgNoteL F4,12
		        psgNote  G4
		        psgNote  G4
		  setRelease 01h
		        psgNote  Gs4
		  psgInst 0Bh
		        psgNoteL G5,6
		        psgNote  Gs5
		        psgNoteL Gs5,4
		        waitL 8
		        psgNoteL Ds5,4
		        waitL 8
		        psgNoteL C5,4
		        waitL 8
		        psgNoteL B4,6
		        psgNote  C5
		        psgNoteL C5,4
		        waitL 8
		        psgNoteL Ds4,4
		        waitL 8
		        psgNoteL Gs4,4
		        waitL 8
		  psgInst 07Ah
		countedLoopStart 2
		        psgNoteL B3,6
		        psgNote  C4
		        psgNoteL C4,4
		        waitL 8
		countedLoopEnd
		        psgNoteL C4,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL Gs3,4
		        waitL 8
		        psgNoteL Gs3,6
		        psgNote  Gs3
		countedLoopEnd
		        psgNoteL Gs3,4
		        waitL 8
		        psgNoteL Gs3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL Gs3,4
		        waitL 8
		        psgNoteL Gs3,6
		        psgNote  Gs3
		countedLoopEnd
		        psgNoteL Gs3,4
		        waitL 8
		        psgNoteL Gs3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL As3,4
		        waitL 8
		        psgNoteL As3,6
		        psgNote  As3
		countedLoopEnd
		        psgNoteL As3,4
		        waitL 8
		        psgNoteL As3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL As3,4
		        waitL 8
		        psgNoteL As3,6
		        psgNote  As3
		countedLoopEnd
		        psgNoteL As3,4
		        waitL 8
		        psgNoteL As3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL B3,4
		        waitL 8
		        psgNoteL B3,6
		        psgNote  B3
		countedLoopEnd
		        psgNoteL B3,4
		        waitL 8
		        psgNoteL B3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL B3,4
		        waitL 8
		        psgNoteL B3,6
		        psgNote  B3
		countedLoopEnd
		        psgNoteL B3,4
		        waitL 8
		        psgNoteL B3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL B3,4
		        waitL 8
		        psgNoteL B3,6
		        psgNote  B3
		countedLoopEnd
		        psgNoteL B3,4
		        waitL 8
		        psgNoteL B3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL B3,4
		        waitL 8
		        psgNoteL B3,6
		        psgNote  B3
		countedLoopEnd
		        psgNoteL B3,24
		  psgInst 079h
		        psgNoteL Cs4,192
		mainLoopEnd
Music_51_Channel_7:
		  setRelease 01h
		  vibrato 04Ch
		mainLoopStart
		  psgInst 07Ah
		countedLoopStart 2
		        psgNoteL F4,4
		        waitL 8
		        psgNoteL E4,6
		        psgNote  F4
		countedLoopEnd
		        psgNoteL F4,4
		        waitL 8
		        psgNoteL F4,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL F4,4
		        waitL 8
		        psgNoteL E4,6
		        psgNote  F4
		countedLoopEnd
		        psgNoteL F4,3
		        psgNote  E4
		        psgNote  D4
		        psgNote  C4
		        psgNote  As3
		        psgNote  A3
		        psgNote  G3
		        psgNote  F3
		repeatStart
		countedLoopStart 2
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,6
		        psgNote  F3
		countedLoopEnd
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,6
		        psgNote  F3
		countedLoopEnd
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,4
		        waitL 8
		countedLoopStart 1
		        psgNoteL D3,4
		        waitL 8
		        psgNoteL D3,6
		        psgNote  D3
		countedLoopEnd
		        psgNoteL E3,4
		        waitL 8
		        psgNoteL E3,6
		        psgNote  E3
		        psgNoteL E3,4
		        waitL 8
		        psgNoteL E3,4
		        waitL 8
		countedLoopStart 1
		        psgNoteL D3,4
		        waitL 8
		        psgNoteL D3,6
		        psgNote  D3
		countedLoopEnd
		        psgNoteL C3,4
		        waitL 8
		        psgNoteL C3,6
		        psgNote  C3
		        psgNoteL C3,4
		        waitL 8
		        psgNoteL C3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL As3,4
		        waitL 8
		        psgNoteL As3,6
		        psgNote  As3
		countedLoopEnd
		        psgNoteL As3,4
		        waitL 8
		        psgNoteL As3,4
		        waitL 8
		countedLoopStart 1
		        psgNoteL As3,4
		        waitL 8
		        psgNoteL As3,6
		        psgNote  As3
		countedLoopEnd
		        psgNoteL As3,4
		        waitL 20
		        psgNoteL As3,24
		        wait
		repeatSection1Start
		        psgNoteL D3,12
		        wait
		        psgNote  Ds3
		        wait
		        psgNoteL Ds3,24
		        psgNoteL E3,20
		        waitL 4
		        psgNote  E3
		        waitL 8
		        psgNoteL E3,6
		        psgNote  E3
		        psgNoteL E3,24
		        wait
		repeatEnd
		repeatSection2Start
		        psgNoteL D3,24
		        psgNoteL Cs3,48
		  psgInst 079h
		        psgNoteL D3,96
		        psgNote  As3
		        psgNote  C4
		        psgNote  Cs4
		        psgNote  Ds4
		  psgInst 0Ah
		  setRelease 06h
		        psgNoteL C4,30
		        waitL 6
		        psgNoteL C4,12
		        psgNote  C4
		        psgNote  C4
		        psgNoteL C4,36
		        psgNoteL C4,12
		        psgNote  C4
		        psgNote  C4
		        psgNoteL Ds4,30
		        waitL 6
		        psgNoteL Ds4,12
		        psgNote  Ds4
		        psgNote  Ds4
		        psgNoteL Ds4,36
		        psgNoteL Ds4,12
		        psgNote  Ds4
		        psgNote  Ds4
		  setRelease 01h
		        psgNote  Ds4
		  psgInst 0Bh
		        psgNoteL B4,6
		        psgNote  C5
		        psgNoteL C5,4
		        waitL 8
		        psgNoteL C5,4
		        waitL 8
		        psgNoteL Gs4,4
		        waitL 8
		        psgNoteL G4,6
		        psgNote  Gs4
		        psgNoteL Gs4,4
		        waitL 8
		        psgNoteL C4,4
		        waitL 8
		        psgNoteL C4,4
		        waitL 8
		  psgInst 07Ah
		countedLoopStart 2
		        psgNoteL G3,6
		        psgNote  Gs3
		        psgNoteL Gs3,4
		        waitL 8
		countedLoopEnd
		        psgNoteL Gs3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,6
		        psgNote  F3
		countedLoopEnd
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,6
		        psgNote  F3
		countedLoopEnd
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,6
		        psgNote  F3
		countedLoopEnd
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,6
		        psgNote  F3
		countedLoopEnd
		        psgNoteL F3,4
		        waitL 8
		        psgNoteL F3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL G3,4
		        waitL 8
		        psgNoteL G3,6
		        psgNote  G3
		countedLoopEnd
		        psgNoteL G3,4
		        waitL 8
		        psgNoteL G3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL G3,4
		        waitL 8
		        psgNoteL G3,6
		        psgNote  G3
		countedLoopEnd
		        psgNoteL G3,4
		        waitL 8
		        psgNoteL G3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL E3,4
		        waitL 8
		        psgNoteL E3,6
		        psgNote  E3
		countedLoopEnd
		        psgNoteL E3,4
		        waitL 8
		        psgNoteL E3,4
		        waitL 8
		countedLoopStart 2
		        psgNoteL E3,4
		        waitL 8
		        psgNoteL E3,6
		        psgNote  E3
		countedLoopEnd
		        psgNoteL E3,24
		  psgInst 079h
		        psgNoteL E3,192
		mainLoopEnd
Music_51_Channel_9:
		channel_end
