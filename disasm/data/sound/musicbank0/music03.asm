
; ASM FILE music03.asm :
; 0x97B3..0x9D0E : Music 03
Music10:        db 0
		db 0
		db 0
		db 0BCh
		dw Music10_Channel0
		dw Music10_Channel1
		dw Music10_Channel2
		dw Music10_Channel3
		dw Music10_Channel4
		dw Music10_Channel5
		dw Music10_Channel6
		dw Music10_Channel7
		dw Music10_Channel9
		dw Music10_Channel9
Music10_Channel0:
		mainLoopStart
		  setRelease 01h
		  vibrato 02Ch
		  inst 49
		  vol 0Bh
		countedLoopStart 11
		        noteL G6,4
		        note  Ds6
		        note  B5
		countedLoopEnd
		  vol 0Ah
		        noteL G6,4
		        note  Ds6
		        note  B5
		  vol 09h
		        note  G6
		        note  Ds6
		        note  B5
		  vol 08h
		        note  G6
		        note  Ds6
		        note  B5
		  vol 07h
		        note  G6
		        note  Ds6
		        note  B5
		  vol 0Bh
		countedLoopStart 11
		        noteL F6,4
		        note  Cs6
		        note  A5
		countedLoopEnd
		  vol 0Ah
		        noteL F6,4
		        note  Cs6
		        note  A5
		  vol 09h
		        note  F6
		        note  Cs6
		        note  A5
		  vol 08h
		        note  F6
		        note  Cs6
		        note  A5
		  vol 07h
		        note  F6
		        note  Cs6
		        note  A5
		  vol 0Bh
		countedLoopStart 11
		        noteL C6,4
		        note  Gs5
		        note  E5
		        note  C6
		        note  Gs5
		        note  E5
		countedLoopEnd
		  vol 0Ah
		        noteL C6,4
		        note  Gs5
		        note  E5
		  vol 09h
		        note  C6
		        note  Gs5
		        note  E5
		  vol 08h
		        note  C6
		        note  Gs5
		        note  E5
		  vol 07h
		        note  C6
		        note  Gs5
		        note  E5
		  vol 06h
		        note  C6
		        note  Gs5
		        note  E5
		  vol 05h
		        note  C6
		        note  Gs5
		        note  E5
		  vol 04h
		        note  C6
		        note  Gs5
		        note  E5
		  vol 03h
		        note  C6
		        note  Gs5
		        note  E5
		        waitL 48
		  inst 49
		  vol 0Bh
		        noteL Gs6,24
		        note  Ds6
		        note  D6
		        noteL A5,48
		        noteL Gs6,24
		        note  Ds6
		        note  D6
		        note  A5
		        noteL As6,72
		        noteL B6,48
		        wait
		        noteL G6,24
		        note  D6
		        note  Cs6
		        noteL Gs5,48
		        noteL G6,24
		        note  D6
		        note  Cs6
		        note  Gs5
		        noteL A6,72
		        noteL As6,48
		  inst 49
		  vol 09h
		        noteL G5,96
		  vol 0Ah
		        note  Gs5
		  vol 0Bh
		        note  A5
		  vol 0Ch
		        note  As5
		  inst 45
		  vol 0Bh
		        noteL B5,24
		        note  B5
		        note  B5
		        note  B5
		        note  B5
		        note  As5
		        note  B5
		        note  As5
		        note  B5
		        noteL D6,48
		        note  D6
		        noteL As5,24
		        note  B5
		        note  D6
		        note  Cs6
		        note  D6
		        noteL F6,48
		        note  F6
		        noteL Cs6,24
		        note  D6
		        note  F6
		        note  Fs6
		        note  F6
		        note  Fs6
		        noteL A6,48
		        note  A6
		        noteL F6,24
		        noteL Fs6,48
		        note  As6
		        note  B6
		        noteL C7,10
		        noteL C7,6
		        noteL G6,10
		        noteL G6,6
		        noteL G7,10
		        noteL G7,6
		  vol 0Ah
		        noteL Fs7,10
		        noteL Fs7,6
		        noteL B6,10
		        noteL B6,6
		        noteL C7,10
		        noteL C7,6
		  vol 09h
		        noteL G6,10
		        noteL G6,6
		        noteL G7,10
		        noteL G7,6
		        noteL Fs7,10
		        noteL Fs7,6
		  vol 08h
		        noteL B6,10
		        noteL B6,6
		        noteL C7,10
		        noteL C7,6
		        noteL G6,10
		        noteL G6,6
		  vol 07h
		        noteL G7,10
		        noteL G7,6
		        noteL Fs7,10
		        noteL Fs7,6
		        noteL B6,10
		        noteL B6,6
		  vol 06h
		        noteL C7,10
		        noteL C7,6
		        noteL G6,10
		        noteL G6,6
		        noteL G7,10
		        noteL G7,6
		  vol 05h
		        noteL Fs7,10
		        noteL Fs7,6
		        noteL B6,10
		        noteL B6,6
		        waitL 48
		  inst 55
		  vol 0Bh
		countedLoopStart 5
		        noteL Fs7,4
		        note  F7
		countedLoopEnd
		  vol 0Ah
		        noteL Fs7,4
		        note  F7
		        note  Fs7
		        note  F7
		  vol 09h
		        note  Fs7
		        note  F7
		  vol 08h
		        note  Fs7
		        note  F7
		  vol 07h
		        note  Fs7
		        note  F7
		  vol 06h
		        note  Fs7
		        note  F7
		  vol 05h
		        note  Fs7
		        note  F7
		  vol 04h
		        note  Fs7
		        note  F7
		  vol 03h
		        note  Fs7
		        note  F7
		  vol 02h
		        note  Fs7
		        note  F7
		  vol 01h
		        note  Fs7
		        note  F7
		        waitL 8
		mainLoopEnd
Music10_Channel1:
		mainLoopStart
		  setRelease 01h
		  vibrato 02Ch
		  inst 49
		  vol 0Bh
		  stereo 040h
		countedLoopStart 11
		        noteL Ds6,4
		        note  B5
		        note  G6
		countedLoopEnd
		  vol 0Ah
		        noteL Ds6,4
		        note  B5
		        note  G6
		  vol 09h
		        note  Ds6
		        note  B5
		        note  G6
		  vol 08h
		        note  Ds6
		        note  B5
		        note  G6
		  vol 07h
		        note  Ds6
		        note  B5
		        note  G6
		  vol 0Bh
		countedLoopStart 11
		        noteL Cs6,4
		        note  A5
		        note  F6
		countedLoopEnd
		  vol 0Ah
		        noteL Cs6,4
		        note  A5
		        note  F6
		  vol 09h
		        note  Cs6
		        note  A5
		        note  F6
		  vol 08h
		        note  Cs6
		        note  A5
		        note  F6
		  vol 07h
		        note  Cs6
		        note  A5
		        note  F6
		  vol 0Bh
		countedLoopStart 11
		        noteL Gs5,4
		        note  E5
		        note  C6
		        note  Gs5
		        note  E5
		        note  C6
		countedLoopEnd
		  vol 0Ah
		        noteL Gs5,4
		        note  E5
		        note  C6
		  vol 09h
		        note  Gs5
		        note  E5
		        note  C6
		  vol 08h
		        note  Gs5
		        note  E5
		        note  C6
		  vol 07h
		        note  Gs5
		        note  E5
		        note  C6
		  vol 06h
		        note  Gs5
		        note  E5
		        note  C6
		  vol 05h
		        note  Gs5
		        note  E5
		        note  C6
		  vol 04h
		        note  Gs5
		        note  E5
		        note  C6
		  vol 03h
		        note  Gs5
		        note  E5
		        note  C6
		        waitL 96
		  stereo 0C0h
		  inst 44
		  vol 08h
		        note  D5
		  setRelease 03h
		        noteL D5,24
		        noteL D5,74
		  setRelease 01h
		        noteL D5,12
		        noteL Ds5,8
		        note  E5
		        noteL F5,6
		        note  E5
		        note  Ds5
		        noteL D5,48
		        waitL 96
		        note  Cs5
		  setRelease 03h
		        noteL Cs5,24
		        noteL Cs5,74
		  setRelease 01h
		        noteL Cs5,12
		        noteL D5,8
		        note  Ds5
		        noteL E5,6
		        note  Ds5
		        note  D5
		        noteL Cs5,48
		  inst 49
		  vol 09h
		        noteL B4,96
		  vol 0Ah
		        note  C5
		  vol 0Bh
		        note  Cs5
		  vol 0Ch
		        note  D5
		  inst 45
		  vol 0Ah
		        noteL Ds5,24
		        note  Ds5
		        note  Ds5
		        note  Ds5
		        note  Ds5
		        note  D5
		        note  Ds5
		        note  D5
		        note  Ds5
		        noteL Fs5,48
		        note  Fs5
		        noteL D5,24
		        note  Ds5
		        note  Fs5
		        note  F5
		        note  Fs5
		        noteL A5,48
		        note  A5
		        noteL F5,24
		        note  Fs5
		        note  A5
		        note  As5
		        note  A5
		        note  As5
		        noteL Cs6,48
		        note  Cs6
		        noteL A5,24
		        noteL As5,48
		        note  D6
		        note  Ds6
		  sustain
		        noteL E6,160
		  vibrato 020h
		  setRelease 01h
		        note  E6
		        waitL 48
		  inst 55
		  vol 0Bh
		countedLoopStart 5
		        noteL F7,4
		        note  E7
		countedLoopEnd
		  vol 0Ah
		        noteL F7,4
		        note  E7
		        note  F7
		        note  E7
		  vol 09h
		        note  F7
		        note  E7
		  vol 08h
		        note  F7
		        note  E7
		  vol 07h
		        note  F7
		        note  E7
		  vol 06h
		        note  F7
		        note  E7
		  vol 05h
		        note  F7
		        note  E7
		  vol 04h
		        note  F7
		        note  E7
		  vol 03h
		        note  F7
		        note  E7
		  vol 02h
		        note  F7
		        note  E7
		  vol 01h
		        note  F7
		        note  E7
		        waitL 8
		mainLoopEnd
Music10_Channel2:
		mainLoopStart
		  setRelease 01h
		  vibrato 02Ch
		  inst 49
		  vol 0Bh
		  stereo 080h
		countedLoopStart 11
		        noteL B5,4
		        note  G6
		        note  Ds6
		countedLoopEnd
		  vol 0Ah
		        noteL B5,4
		        note  G6
		        note  Ds6
		  vol 09h
		        note  B5
		        note  G6
		        note  Ds6
		  vol 08h
		        note  B5
		        note  G6
		        note  Ds6
		  vol 07h
		        note  B5
		        note  G6
		        note  Ds6
		  vol 0Bh
		countedLoopStart 11
		        noteL A5,4
		        note  F6
		        note  Cs6
		countedLoopEnd
		  vol 0Ah
		        noteL A5,4
		        note  F6
		        note  Cs6
		  vol 09h
		        note  A5
		        note  F6
		        note  Cs6
		  vol 08h
		        note  A5
		        note  F6
		        note  Cs6
		  vol 07h
		        note  A5
		        note  F6
		        note  Cs6
		  vol 0Bh
		countedLoopStart 11
		        noteL E5,4
		        note  C6
		        note  Gs5
		        note  E5
		        note  C6
		        note  Gs5
		countedLoopEnd
		  vol 0Ah
		        noteL E5,4
		        note  C6
		        note  Gs5
		  vol 09h
		        note  E5
		        note  C6
		        note  Gs5
		  vol 08h
		        note  E5
		        note  C6
		        note  Gs5
		  vol 07h
		        note  E5
		        note  C6
		        note  Gs5
		  vol 06h
		        note  E5
		        note  C6
		        note  Gs5
		  vol 05h
		        note  E5
		        note  C6
		        note  Gs5
		  vol 04h
		        note  E5
		        note  C6
		        note  Gs5
		  vol 03h
		        note  E5
		        note  C6
		        note  Gs5
		        waitL 96
		  stereo 0C0h
		  inst 44
		  vol 08h
		        note  B4
		  setRelease 03h
		        noteL B4,24
		        noteL B4,74
		  setRelease 01h
		        noteL B4,12
		        noteL C5,8
		        note  Cs5
		        noteL D5,6
		        note  Cs5
		        note  C5
		        noteL B4,48
		        waitL 96
		        note  As4
		  setRelease 03h
		        noteL As4,24
		        noteL As4,74
		  setRelease 01h
		        noteL As4,12
		        noteL B4,8
		        note  C5
		        noteL Cs5,6
		        note  C5
		        note  B4
		        noteL As4,48
		  inst 49
		  vol 09h
		        noteL Ds4,96
		  vol 0Ah
		        note  E4
		  vol 0Bh
		        note  F4
		  vol 0Ch
		        note  Fs4
		  inst 45
		  vol 08h
		        noteL G4,24
		        note  Fs4
		        note  F4
		        note  G4
		        note  Fs4
		        note  F4
		        note  G4
		        note  Gs4
		        note  G4
		        noteL Gs4,48
		        note  As4
		        noteL Gs4,24
		        note  G4
		        note  As4
		  vol 09h
		        note  B4
		        note  As4
		        noteL B4,48
		        note  Cs5
		        noteL B4,24
		        note  As4
		        note  B4
		        note  D5
		        note  Ds5
		        note  D5
		        noteL Ds5,48
		        note  F5
		        noteL Ds5,24
		        noteL D5,48
		        note  Fs5
		        note  F5
		  sustain
		        noteL Gs5,160
		  vibrato 020h
		  setRelease 01h
		        note  Gs5
		        waitL 48
		  inst 55
		  vol 0Bh
		countedLoopStart 5
		        noteL E7,4
		        note  Ds7
		countedLoopEnd
		  vol 0Ah
		        noteL E7,4
		        note  Ds7
		        note  E7
		        note  Ds7
		  vol 09h
		        note  E7
		        note  Ds7
		  vol 08h
		        note  E7
		        note  Ds7
		  vol 07h
		        note  E7
		        note  Ds7
		  vol 06h
		        note  E7
		        note  Ds7
		  vol 05h
		        note  E7
		        note  Ds7
		  vol 04h
		        note  E7
		        note  Ds7
		  vol 03h
		        note  E7
		        note  Ds7
		  vol 02h
		        note  E7
		        note  Ds7
		  vol 01h
		        note  E7
		        note  Ds7
		        waitL 8
		mainLoopEnd
Music10_Channel3:
		mainLoopStart
		  setRelease 01h
		  vibrato 02Ch
		        waitL 48
		  inst 4
		  vol 0Bh
		        note  A3
		        noteL Ds4,24
		        note  B3
		        note  Fs4
		        note  F4
		        waitL 48
		        note  Ds4
		        noteL A4,24
		        note  F4
		        note  As4
		        note  B4
		        waitL 48
		        note  Cs5
		        noteL C5,32
		        note  Gs4
		        note  G4
		        noteL Fs4,48
		        note  D4
		        note  Cs4
		        note  As3
		  stereo 040h
		  inst 12
		  vol 0Dh
		  sustain
		        noteL E3,12
		  setSlide 02h
		        noteL F3,180
		  setRelease 01h
		        noteL F3,144
		        waitL 48
		  sustain
		        noteL F3,12
		  setSlide 01h
		        noteL E3,180
		  setRelease 01h
		        noteL E3,192
		  noSlide
		  stereo 0C0h
		  vol 0Ah
		        noteL F3,96
		  vol 0Bh
		        note  D3
		        note  G3
		  vol 0Ch
		        note  E3
		  inst 45
		  vol 0Ah
		        noteL A3,24
		        note  Gs3
		        note  G3
		        note  A3
		        note  Gs3
		        note  G3
		        note  D3
		        note  F3
		        note  D3
		        noteL As3,48
		        note  B3
		        noteL F3,24
		        note  D3
		        note  F3
		        note  Gs3
		        note  F3
		        noteL Cs4,48
		        note  D4
		        noteL Gs3,24
		        note  F3
		        note  Fs3
		        note  A3
		        note  C4
		        note  A3
		  vol 09h
		        noteL F4,48
		        note  Fs4
		        noteL C4,24
		        noteL A3,48
		        note  Gs4
		        note  G4
		  sustain
		        noteL Cs5,160
		  vibrato 020h
		  setRelease 01h
		        note  Cs5
		        waitL 192
		mainLoopEnd
Music10_Channel4:
		mainLoopStart
		  setRelease 01h
		  vibrato 02Ch
		        waitL 56
		  inst 4
		  vol 08h
		        noteL A3,48
		        noteL Ds4,24
		        note  B3
		        note  Fs4
		        note  F4
		        waitL 48
		        note  Ds4
		        noteL A4,24
		        note  F4
		        note  As4
		        note  B4
		        waitL 48
		        note  Cs5
		        noteL C5,32
		        note  Gs4
		        note  G4
		        noteL Fs4,48
		        note  D4
		        noteL Cs4,40
		  inst 62
		  vol 0Bh
		        noteL As3,52
		  stereo 080h
		  inst 12
		  vol 0Dh
		  sustain
		        noteL E3,12
		  setSlide 02h
		        noteL F3,180
		  setRelease 01h
		        noteL F3,140
		  noSlide
		  stereo 0C0h
		  inst 62
		  vol 0Bh
		        noteL F3,52
		  stereo 080h
		  inst 12
		  vol 0Dh
		  sustain
		        noteL F3,12
		  setSlide 01h
		        noteL E3,180
		  setRelease 01h
		        noteL E3,188
		  noSlide
		  inst 50
		  stereo 0C0h
		  vol 09h
		        noteL F3,48
		        wait
		        note  D3
		        wait
		        note  G3
		        wait
		        note  E3
		        wait
		        waitL 24
		  inst 47
		  vol 08h
		countedLoopStart 8
		        noteL E6,8
		        note  As5
		        note  Fs4
		        noteL As6,72
		countedLoopStart 40
		        noteL E6,8
		        note  As5
		        note  Fs4
		  vol 09h
		        noteL As6,24
		        note  A6
		  vol 08h
		        note  Gs6
		        note  G6
		  vol 07h
		        note  Fs6
		        note  F6
		  vol 06h
		        note  E6
		        note  Ds6
		  vol 05h
		        note  D6
		        note  Cs6
		  vol 04h
		        note  C6
		  vol 03h
		        note  B5
		  vol 02h
		        note  As5
		        waitL 224
		mainLoopEnd
Music10_Channel5:
		mainLoopStart
		countedLoopStart 3
		        waitL 192
		countedLoopEnd
		countedLoopStart 6
		  stereo 040h
		        sampleL 10,12
		  stereo 080h
		        sampleL 11,36
		countedLoopEnd
		        waitL 48
		countedLoopStart 7
		  stereo 040h
		        sampleL 10,12
		  stereo 080h
		        sampleL 11,36
		countedLoopEnd
		        waitL 48
		  stereo 0C0h
		        sample  0
		        sampleL 0,24
		        sampleL 0,120
		        sampleL 0,48
		        sampleL 0,34
		        sample  0
		        sampleL 0,28
		countedLoopStart 7
		        waitL 181
		countedLoopEnd
		mainLoopEnd
Music10_Channel6:
		channel_end
Music10_Channel7:
		channel_end
Music10_Channel9:
		channel_end
