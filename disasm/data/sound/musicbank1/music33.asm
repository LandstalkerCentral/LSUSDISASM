
; ASM FILE music33.asm :
; 0x8040..0x8294 : Music 33
Music33:        db 0
		db 0
		db 0
		db 0B6h
		dw Music33_Channel0
		dw Music33_Channel1
		dw Music33_Channel2
		dw Music33_Channel3
		dw Music33_Channel4
		dw Music33_Channel5
		dw Music33_Channel6
		dw Music33_Channel7
		dw Music33_Channel9
		dw Music33_Channel9
Music33_Channel0:
		        waitL 24
		  inst 11
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL D6,40
		        waitL 8
		        noteL D6,48
		        noteL Cs6,12
		        note  B5
		        noteL Cs6,36
		        noteL E6,12
		        noteL A5,24
		        note  A6
		        noteL Fs6,12
		        note  G6
		        noteL A6,24
		        noteL G6,12
		        note  Fs6
		        note  G6
		        note  B5
		        noteL D6,24
		        note  Cs6
		        wait
		        noteL Fs6,40
		        waitL 8
		        noteL Fs6,48
		        noteL E6,12
		        note  D6
		        noteL E6,36
		        noteL Cs6,12
		        note  D6
		        note  Cs6
		        noteL D6,36
		        noteL Cs6,12
		        note  B5
		        note  A5
		        note  G5
		        note  A5
		        note  G5
		        note  Fs5
		        noteL E5,24
		        wait
		        wait
		        noteL A6,40
		        waitL 8
		        noteL A6,48
		        noteL G6,12
		        note  Fs6
		        noteL G6,36
		        noteL E6,12
		        note  Fs6
		        note  F6
		        noteL Fs6,36
		        noteL E6,12
		        note  D6
		        note  Cs6
		        note  B5
		        note  Cs6
		        note  B5
		        note  A5
		        noteL G5,24
		        wait
		        wait
		        note  E5
		        note  A5
		        note  B5
		        noteL Cs6,12
		        note  D6
		        note  B5
		        note  Cs6
		        note  A5
		        note  B5
		        note  G5
		        note  A5
		        noteL D5,24
		        note  A5
		        note  D6
		        note  E6
		        noteL F6,12
		        note  G6
		        noteL E6,14
		        note  F6
		        noteL D6,16
		        noteL E6,18
		        noteL B5,20
		        noteL D6,28
		        waitL 2
		        noteL D6,60
		        noteL Cs6,30
		        noteL B5,36
		        noteL Cs6,6
		        noteL D6,4
		        note  Cs6
		        note  D6
		        noteL Cs6,148
		        waitL 28
		mainLoopEnd
Music33_Channel1:
		  inst 11
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		        noteL Fs5,48
		mainLoopStart
		        noteL G5,48
		        noteL A5,72
		        noteL E5,48
		        noteL D5,12
		        note  Cs5
		        noteL B4,24
		        noteL Fs5,48
		        noteL E5,40
		        waitL 8
		        noteL A5,24
		        noteL As5,48
		        note  B5
		        noteL Cs6,72
		        noteL As5,24
		        noteL Fs5,72
		        noteL D5,24
		        note  E5
		        note  B4
		        noteL G4,12
		        note  D5
		        note  Cs5
		        note  B4
		        noteL Cs5,48
		        note  D5
		        noteL E5,72
		        noteL Cs5,24
		        noteL D5,144
		        noteL B4,12
		        note  Fs5
		        note  E5
		        note  D5
		        noteL Cs5,72
		        noteL D5,24
		        note  E5
		        note  D5
		        noteL Cs5,48
		        noteL Fs5,72
		        noteL G5,24
		        note  A5
		        noteL G5,28
		        noteL F5,114
		        noteL E5,60
		        noteL D5,36
		        noteL E5,84
		        noteL A5,38
		        noteL G5,44
		        noteL Fs5,52
		mainLoopEnd
Music33_Channel2:
		  inst 11
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        noteL D4,48
		mainLoopStart
		        noteL E4,48
		        note  Fs4
		        note  G4
		        note  Fs4
		        note  Ds4
		        note  E4
		        noteL A4,24
		        note  G4
		        noteL Fs4,48
		        note  Gs4
		        note  As4
		        note  Fs4
		        note  B4
		        note  B3
		        note  E4
		        waitL 12
		        note  E3
		        note  Fs3
		        note  G3
		        noteL A3,48
		        note  B3
		        note  Cs4
		        note  A3
		        note  D4
		        note  Fs4
		        note  G4
		        note  G3
		  sustain
		        noteL A3,192
		        noteL A3,232
		        noteL A3,200
		  setRelease 01h
		        noteL A3,92
		        noteL D4,52
		mainLoopEnd
Music33_Channel3:
		  stereo 080h
		  shifting 020h
		        waitL 30
		  inst 11
		  vol 08h
		  setRelease 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL D6,40
		        waitL 8
		        noteL D6,48
		        noteL Cs6,12
		        note  B5
		        noteL Cs6,36
		        noteL E6,12
		        noteL A5,24
		        note  A6
		        noteL Fs6,12
		        note  G6
		        noteL A6,24
		        noteL G6,12
		        note  Fs6
		        note  G6
		        note  B5
		        noteL D6,24
		        note  Cs6
		        wait
		        noteL Fs6,40
		        waitL 8
		        noteL Fs6,48
		        noteL E6,12
		        note  D6
		        noteL E6,36
		        noteL Cs6,12
		        note  D6
		        note  Cs6
		        noteL D6,36
		        noteL Cs6,12
		        note  B5
		        note  A5
		        note  G5
		        note  A5
		        note  G5
		        note  Fs5
		        noteL E5,24
		        wait
		        wait
		        noteL A6,40
		        waitL 8
		        noteL A6,48
		        noteL G6,12
		        note  Fs6
		        noteL G6,36
		        noteL E6,12
		        note  Fs6
		        note  F6
		        noteL Fs6,36
		        noteL E6,12
		        note  D6
		        note  Cs6
		        note  B5
		        note  Cs6
		        note  B5
		        note  A5
		        noteL G5,24
		        wait
		        wait
		        note  E5
		        note  A5
		        note  B5
		        noteL Cs6,12
		        note  D6
		        note  B5
		        note  Cs6
		        note  A5
		        note  B5
		        note  G5
		        note  A5
		        noteL D5,24
		        note  A5
		        note  D6
		        note  E6
		        noteL F6,12
		        note  G6
		        noteL E6,14
		        note  F6
		        noteL D6,16
		        noteL E6,18
		        noteL B5,20
		        noteL D6,28
		        waitL 2
		        noteL D6,60
		        noteL Cs6,30
		        noteL B5,36
		        noteL Cs6,6
		        noteL D6,4
		        note  Cs6
		        note  D6
		        noteL Cs6,148
		        waitL 28
		mainLoopEnd
Music33_Channel4:
		  stereo 040h
		  shifting 020h
		        waitL 6
		  inst 11
		  vol 07h
		  setRelease 01h
		  vibrato 02Ch
		        noteL Fs5,48
		mainLoopStart
		        noteL G5,48
		        noteL A5,72
		        noteL E5,48
		        noteL D5,12
		        note  Cs5
		        noteL B4,24
		        noteL Fs5,48
		        noteL E5,40
		        waitL 8
		        noteL A5,24
		        noteL As5,48
		        note  B5
		        noteL Cs6,72
		        noteL As5,24
		        noteL Fs5,72
		        noteL D5,24
		        note  E5
		        note  B4
		        noteL G4,12
		        note  D5
		        note  Cs5
		        note  B4
		        noteL Cs5,48
		        note  D5
		        noteL E5,72
		        noteL Cs5,24
		        noteL D5,144
		        noteL B4,12
		        note  Fs5
		        note  E5
		        note  D5
		        noteL Cs5,72
		        noteL D5,24
		        note  E5
		        note  D5
		        noteL Cs5,48
		        noteL Fs5,72
		        noteL G5,24
		        note  A5
		        noteL G5,28
		        noteL F5,114
		        noteL E5,60
		        noteL D5,36
		        noteL E5,84
		        noteL A5,38
		        noteL G5,44
		        noteL Fs5,52
		mainLoopEnd
Music33_Channel5:
		channel_end
Music33_Channel6:
		channel_end
Music33_Channel7:
		channel_end
Music33_Channel9:
		channel_end
