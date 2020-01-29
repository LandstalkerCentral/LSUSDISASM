
; ASM FILE music06.asm :
; 0x99AD..0x9E3F : Music 06
Music_6:        db 0
		db 0
		db 0
		db 0ABh
		dw Music_6_Channel_0
		dw Music_6_Channel_1
		dw Music_6_Channel_2
		dw Music_6_Channel_3
		dw Music_6_Channel_4
		dw Music_6_Channel_5
		dw Music_6_Channel_6
		dw Music_6_Channel_7
		dw Music_6_Channel_9
		dw Music_6_Channel_9
Music_6_Channel_0:
		  inst 5
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL G5,6
		        wait
		        noteL C6,36
		        noteL B5,6
		        note  A5
		        note  B5
		        note  C6
		        note  D6
		        wait
		        noteL G5,48
		        waitL 18
		        noteL G6,6
		        noteL F6,18
		        noteL E6,6
		        noteL D6,18
		        noteL C6,6
		        noteL B5,3
		        note  C6
		        note  B5
		        note  A5
		        noteL B5,6
		        note  D6
		        noteL A6,24
		        note  G6
		        waitL 18
		        noteL E6,6
		        noteL G6,12
		        noteL F6,18
		        noteL E6,6
		        note  F6
		        note  G6
		        note  F6
		        note  E6
		        note  D6
		        wait
		        noteL F6,12
		        noteL E6,18
		        noteL Ds6,6
		        note  E6
		        note  Gs6
		        note  A6
		        note  B6
		        note  C7
		        wait
		        note  C6
		        note  B5
		        note  C6
		        note  F6
		        noteL A5,48
		        noteL B5,6
		        note  As5
		        note  B5
		        note  D6
		        noteL Gs5,24
		        waitL 12
		        noteL E5,6
		        wait
		        noteL A5,36
		        noteL Gs5,6
		        note  A5
		        note  B5
		        wait
		        note  E5
		        wait
		        noteL E6,36
		        noteL D6,6
		        note  E6
		        note  F6
		        wait
		        note  B5
		        wait
		        note  C6
		        note  B5
		        note  C6
		        note  E6
		        noteL A6,18
		        noteL G6,6
		        noteL F6,18
		        noteL D6,6
		        note  B5
		        note  As5
		        note  B5
		        note  D6
		        noteL G6,18
		        noteL F6,6
		        noteL E6,18
		        noteL C6,6
		        note  A5
		        note  Gs5
		        note  A5
		        note  C6
		        noteL F6,18
		        noteL E6,6
		        note  D6
		        note  E6
		        note  F6
		        wait
		        noteL E6,72
		  setRelease 06h
		        noteL Cs5,12
		        note  Cs5
		        note  Cs5
		        note  D5
		        note  E5
		        note  D5
		  setRelease 01h
		        noteL Cs5,6
		        note  A6
		        note  Gs6
		        note  A6
		        note  Ds6
		        note  E6
		        note  C6
		        note  Cs6
		        note  Gs5
		        note  A5
		        note  Ds5
		        note  E5
		  setRelease 06h
		        noteL Fs5,12
		        note  Fs5
		        note  Fs5
		        note  G5
		        note  A5
		        note  G5
		  setRelease 01h
		        noteL Fs5,6
		        note  D7
		        note  Cs7
		        note  D7
		        note  Gs6
		        note  A6
		        note  F6
		        note  Fs6
		        note  Cs6
		        noteL D6,12
		        noteL C6,6
		        note  B5
		        wait
		        noteL G6,24
		        noteL G6,6
		        note  Fs6
		        note  E6
		        note  Fs6
		        note  G6
		        wait
		        noteL B5,24
		        noteL A5,3
		        note  B5
		        noteL A5,30
		        noteL G5,6
		        note  Fs5
		        noteL G5,48
		        waitL 12
		mainLoopEnd
Music_6_Channel_1:
		        waitL 132
		  inst 5
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        waitL 6
		        note  Cs5
		        note  D5
		        note  E5
		        wait
		        note  D5
		        note  A5
		        note  D5
		        wait
		        note  D5
		        note  A5
		        note  D5
		        noteL G5,24
		        noteL As5,6
		        wait
		        note  As4
		        note  C5
		        note  D5
		        note  E5
		        note  F5
		        note  Fs5
		        noteL G5,24
		        noteL C5,6
		        wait
		        note  C5
		        note  D5
		        noteL C5,3
		        note  D5
		        noteL C5,24
		        waitL 6
		        note  C5
		        wait
		        note  C5
		        wait
		        note  C5
		        note  D5
		        noteL C5,3
		        note  D5
		        noteL C5,24
		        waitL 6
		        note  E5
		        wait
		        noteL F5,30
		        waitL 6
		        note  F5
		        note  E5
		        note  D5
		        note  C5
		        note  B4
		        note  A4
		        noteL Gs4,24
		        noteL B4,12
		        noteL D5,6
		        note  C5
		        noteL B4,12
		        wait
		        waitL 36
		        noteL A4,24
		        noteL Gs4,12
		        noteL A4,24
		        waitL 12
		        note  E5
		        note  D5
		        note  F5
		  setRelease 06h
		        note  E5
		        note  A4
		        note  E5
		        note  A4
		        note  D5
		        note  A4
		        note  D5
		        note  G4
		        note  D5
		        note  G4
		        note  C5
		        note  G4
		        note  C5
		        note  F4
		        note  C5
		        note  F4
		        note  A4
		        note  D5
		        wait
		  setRelease 01h
		        noteL Gs5,6
		        note  Fs5
		        noteL Gs5,30
		        noteL Fs5,6
		        note  E5
		        note  D5
		  setRelease 02h
		        note  A4
		        note  E4
		        note  A4
		        note  E4
		        note  A4
		        note  E4
		        note  A4
		        note  E4
		        note  A4
		        note  E4
		        note  A4
		        note  E4
		        noteL A4,7
		        waitL 5
		  setRelease 08h
		        noteL E6,12
		        note  Cs6
		        note  A5
		        note  E5
		  setRelease 01h
		        note  Cs5
		  setRelease 02h
		        noteL D5,6
		        note  A4
		        note  D5
		        note  A4
		        note  D5
		        note  A4
		        note  D5
		        note  A4
		        note  D5
		        note  A4
		        note  D5
		        note  A4
		        noteL D5,7
		        waitL 5
		  setRelease 08h
		        noteL A6,12
		        note  Fs6
		        note  D6
		        note  A5
		  setRelease 01h
		        note  Fs5
		  setRelease 06h
		        noteL G5,24
		        note  G5
		        note  G5
		  setRelease 01h
		        noteL G5,30
		        waitL 6
		        note  D5
		        wait
		        noteL C5,24
		        noteL C5,6
		        wait
		        note  A4
		        wait
		        noteL B4,3
		        note  C5
		        noteL B4,24
		        waitL 18
		        waitL 12
		  vol 0Bh
		        noteL E5,6
		        note  F5
		  setRelease 06h
		        noteL G5,12
		        note  C5
		        note  D5
		        note  B4
		  setRelease 01h
		  vol 0Ah
		        noteL C5,48
		mainLoopEnd
Music_6_Channel_2:
		        waitL 12
		mainLoopStart
		        waitL 12
		  inst 5
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        noteL C4,6
		        wait
		        noteL E4,24
		        noteL F4,36
		        noteL E4,6
		        note  D4
		        note  E4
		        note  F4
		        note  G4
		        wait
		        note  As3
		        wait
		        note  A3
		        wait
		        noteL D4,17
		        waitL 7
		        noteL F4,17
		        waitL 7
		        noteL G4,6
		        wait
		        note  F4
		        wait
		        noteL E4,24
		        waitL 12
		        noteL C4,24
		        noteL As3,12
		        noteL A3,24
		        waitL 12
		        noteL A3,6
		        wait
		        noteL Gs3,18
		        waitL 6
		        noteL G3,24
		        waitL 12
		        noteL G3,6
		        wait
		        noteL Fs3,24
		        noteL G3,30
		        waitL 6
		        note  D4
		        wait
		        note  G4
		        wait
		        note  F4
		        wait
		        noteL E4,30
		        waitL 6
		        note  B3
		        wait
		        noteL E3,12
		        wait
		        wait
		        noteL A3,6
		        wait
		        noteL C4,17
		        waitL 7
		        noteL D4,36
		        waitL 0
		        noteL C4,6
		        note  B3
		        note  C4
		        wait
		        note  A3
		        wait
		        noteL Gs3,24
		  setRelease 07h
		        note  A3
		        note  C4
		        note  D4
		        note  G3
		        note  B3
		        note  C4
		        note  F3
		        note  A3
		  setRelease 01h
		        note  B3
		        waitL 36
		        noteL E4,6
		        note  Ds4
		        note  E4
		        wait
		        note  E3
		        wait
		  setRelease 06h
		        noteL A3,12
		        note  A3
		        note  A3
		        note  B3
		        note  Cs4
		        note  B3
		        note  A3
		  setRelease 08h
		        note  Cs6
		        note  A5
		        note  E5
		        note  Cs5
		  setRelease 01h
		        note  A3
		  setRelease 06h
		        note  D4
		        note  D4
		        note  D4
		        note  E4
		        note  Fs4
		        note  E4
		        note  D4
		  setRelease 08h
		        note  Fs6
		        note  D6
		        note  A5
		        note  Fs5
		  setRelease 01h
		        note  D4
		        noteL G3,20
		        waitL 4
		        noteL B3,20
		        waitL 4
		        noteL C4,6
		        wait
		        note  E4
		        wait
		        noteL D4,48
		        noteL D4,24
		        noteL G4,30
		        waitL 6
		        note  D4
		        wait
		        noteL G3,12
		        wait
		mainLoopEnd
Music_6_Channel_3:
		  stereo 040h
		        waitL 3
		  shifting 010h
		  inst 5
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL G5,6
		        wait
		        noteL C6,36
		        noteL B5,6
		        note  A5
		        note  B5
		        note  C6
		        note  D6
		        wait
		        noteL G5,48
		        waitL 18
		        noteL G6,6
		        noteL F6,18
		        noteL E6,6
		        noteL D6,18
		        noteL C6,6
		        noteL B5,3
		        note  C6
		        note  B5
		        note  A5
		        noteL B5,6
		        note  D6
		        noteL A6,24
		        note  G6
		        waitL 18
		        noteL E6,6
		        noteL G6,12
		        noteL F6,18
		        noteL E6,6
		        note  F6
		        note  G6
		        note  F6
		        note  E6
		        note  D6
		        wait
		        noteL F6,12
		        noteL E6,18
		        noteL Ds6,6
		        note  E6
		        note  Gs6
		        note  A6
		        note  B6
		        note  C7
		        wait
		        note  C6
		        note  B5
		        note  C6
		        note  F6
		        noteL A5,48
		        noteL B5,6
		        note  As5
		        note  B5
		        note  D6
		        noteL Gs5,24
		        waitL 12
		        noteL E5,6
		        wait
		        noteL A5,36
		        noteL Gs5,6
		        note  A5
		        note  B5
		        wait
		        note  E5
		        wait
		        noteL E6,36
		        noteL D6,6
		        note  E6
		        note  F6
		        wait
		        note  B5
		        wait
		        note  C6
		        note  B5
		        note  C6
		        note  E6
		        noteL A6,18
		        noteL G6,6
		        noteL F6,18
		        noteL D6,6
		        note  B5
		        note  As5
		        note  B5
		        note  D6
		        noteL G6,18
		        noteL F6,6
		        noteL E6,18
		        noteL C6,6
		        note  A5
		        note  Gs5
		        note  A5
		        note  C6
		        noteL F6,18
		        noteL E6,6
		        note  D6
		        note  E6
		        note  F6
		        wait
		        noteL E6,72
		  setRelease 06h
		        noteL Cs5,12
		        note  Cs5
		        note  Cs5
		        note  D5
		        note  E5
		        note  D5
		  setRelease 01h
		        noteL Cs5,6
		        note  A6
		        note  Gs6
		        note  A6
		        note  Ds6
		        note  E6
		        note  C6
		        note  Cs6
		        note  Gs5
		        note  A5
		        note  Ds5
		        note  E5
		  setRelease 06h
		        noteL Fs5,12
		        note  Fs5
		        note  Fs5
		        note  G5
		        note  A5
		        note  G5
		  setRelease 01h
		        noteL Fs5,6
		        note  D7
		        note  Cs7
		        note  D7
		        note  Gs6
		        note  A6
		        note  F6
		        note  Fs6
		        note  Cs6
		        noteL D6,12
		        noteL C6,6
		        note  B5
		        wait
		        noteL G6,24
		        noteL G6,6
		        note  Fs6
		        note  E6
		        note  Fs6
		        note  G6
		        wait
		        noteL B5,24
		        noteL A5,3
		        note  B5
		        noteL A5,30
		        noteL G5,6
		        note  Fs5
		        noteL G5,48
		        waitL 12
		mainLoopEnd
Music_6_Channel_4:
		  stereo 080h
		        waitL 135
		  shifting 010h
		  inst 5
		  vol 08h
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        waitL 6
		        note  Cs5
		        note  D5
		        note  E5
		        wait
		        note  D5
		        note  A5
		        note  D5
		        wait
		        note  D5
		        note  A5
		        note  D5
		        noteL G5,24
		        noteL As5,6
		        wait
		        note  As4
		        note  C5
		        note  D5
		        note  E5
		        note  F5
		        note  Fs5
		        noteL G5,24
		        noteL C5,6
		        wait
		        note  C5
		        note  D5
		        noteL C5,3
		        note  D5
		        noteL C5,24
		        waitL 6
		        note  C5
		        wait
		        note  C5
		        wait
		        note  C5
		        note  D5
		        noteL C5,3
		        note  D5
		        noteL C5,24
		        waitL 6
		        note  E5
		        wait
		        noteL F5,30
		        waitL 6
		        note  F5
		        note  E5
		        note  D5
		        note  C5
		        note  B4
		        note  A4
		        noteL Gs4,24
		        noteL B4,12
		        noteL D5,6
		        note  C5
		        noteL B4,12
		        wait
		        waitL 36
		        noteL A4,24
		        noteL Gs4,12
		        noteL A4,24
		        waitL 12
		        note  E5
		        note  D5
		        note  F5
		  setRelease 06h
		        note  E5
		        note  A4
		        note  E5
		        note  A4
		        note  D5
		        note  A4
		        note  D5
		        note  G4
		        note  D5
		        note  G4
		        note  C5
		        note  G4
		        note  C5
		        note  F4
		        note  C5
		        note  F4
		        note  A4
		        note  D5
		        wait
		  setRelease 01h
		        noteL Gs5,6
		        note  Fs5
		        noteL Gs5,30
		        noteL Fs5,6
		        note  E5
		        note  D5
		  setRelease 02h
		        note  A4
		        note  E4
		        note  A4
		        note  E4
		        note  A4
		        note  E4
		        note  A4
		        note  E4
		        note  A4
		        note  E4
		        note  A4
		        note  E4
		        noteL A4,7
		        waitL 5
		  setRelease 08h
		        noteL E6,12
		        note  Cs6
		        note  A5
		        note  E5
		  setRelease 01h
		        note  Cs5
		  setRelease 02h
		        noteL D5,6
		        note  A4
		        note  D5
		        note  A4
		        note  D5
		        note  A4
		        note  D5
		        note  A4
		        note  D5
		        note  A4
		        note  D5
		        note  A4
		        noteL D5,7
		        waitL 5
		  setRelease 08h
		        noteL A6,12
		        note  Fs6
		        note  D6
		        note  A5
		  setRelease 01h
		        note  Fs5
		  setRelease 06h
		        noteL G5,24
		        note  G5
		        note  G5
		  setRelease 01h
		        noteL G5,30
		        waitL 6
		        note  D5
		        wait
		        noteL C5,24
		        noteL C5,6
		        wait
		        note  A4
		        wait
		        noteL B4,3
		        note  C5
		        noteL B4,24
		        waitL 18
		        waitL 12
		  vol 09h
		        noteL E5,6
		        note  F5
		  setRelease 06h
		        noteL G5,12
		        note  C5
		        note  D5
		        note  B4
		  setRelease 01h
		  vol 08h
		        noteL C5,48
		mainLoopEnd
Music_6_Channel_5:
		channel_end
Music_6_Channel_6:
		channel_end
Music_6_Channel_7:
		channel_end
Music_6_Channel_9:
		channel_end
