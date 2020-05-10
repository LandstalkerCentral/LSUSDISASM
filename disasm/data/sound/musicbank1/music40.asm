
; ASM FILE music40.asm :
; 0xA7C8..0xA945 : Music 40
Music40:        db 0
		db 0
		db 0
		db 0C9h
		dw Music40_Channel0
		dw Music40_Channel1
		dw Music40_Channel2
		dw Music40_Channel3
		dw Music40_Channel4
		dw Music40_Channel5
		dw Music40_Channel6
		dw Music40_Channel7
		dw Music40_Channel9
		dw Music40_Channel9
Music40_Channel0:
		mainLoopStart
		        waitL 2
		  inst 14
		  vol 0Bh
		  setRelease 01h
		  vibrato 00h
		        noteL A7,96
		        noteL Gs7,48
		        noteL A7,96
		        noteL Gs7,48
		        noteL A7,96
		        noteL D8,48
		        noteL F7,96
		        waitL 48
		        note  E7
		        note  Fs7
		        note  Gs7
		        note  A7
		        note  B7
		        note  Cs8
		        note  D8
		        note  E8
		        note  G8
		        noteL A7,12
		        waitL 36
		        noteL A8,12
		        wait
		        note  A7
		        waitL 60
		        noteL A7,96
		        noteL Gs7,48
		        noteL A7,96
		        noteL Gs7,48
		        noteL A7,96
		        noteL D8,48
		        noteL F8,96
		        waitL 48
		        wait
		        note  Fs8
		        note  Cs8
		        note  D8
		        note  As7
		        note  B7
		        note  Gs7
		        note  A7
		        note  Cs7
		        noteL D7,12
		        waitL 34
		        noteL B6,48
		        note  A6
		mainLoopEnd
Music40_Channel1:
		  inst 14
		  vol 0Ah
		  setRelease 01h
		  vibrato 00h
		mainLoopStart
		        noteL Fs7,96
		        noteL F7,48
		        noteL Fs7,96
		        noteL F7,48
		        noteL Fs7,96
		        noteL Fs7,48
		        noteL D7,96
		        waitL 48
		        note  Gs6
		        note  A6
		        note  B6
		        note  Cs7
		        note  D7
		        note  E7
		        noteL F7,72
		        noteL E7,24
		        noteL D7,48
		        noteL Cs7,12
		        waitL 36
		        noteL Gs8,4
		        waitL 20
		        noteL Gs7,4
		        waitL 68
		        noteL Fs7,96
		        noteL F7,48
		        noteL Fs7,96
		        noteL F7,48
		        noteL Fs7,96
		        noteL Fs7,48
		        note  D7
		        noteL B6,24
		        note  Cs7
		        note  D7
		        note  F7
		        noteL Fs7,48
		        note  A7
		        note  G7
		        note  Fs7
		        noteL D7,96
		        note  Cs7
		        noteL G6,48
		        noteL Fs6,12
		        waitL 36
		        noteL G6,24
		        note  D6
		        note  Cs6
		        note  E6
		mainLoopEnd
Music40_Channel2:
		  inst 14
		  vol 0Ah
		  setRelease 01h
		  vibrato 00h
		mainLoopStart
		        noteL D6,48
		        note  A6
		        note  A5
		        note  D6
		        note  A6
		        note  A5
		        note  D6
		        note  A6
		        note  A5
		        note  As5
		        noteL Gs6,24
		        note  G6
		        note  F6
		        note  D6
		        noteL E6,96
		        noteL E6,48
		        noteL A6,96
		        noteL A5,48
		        noteL B5,96
		        noteL As5,48
		        noteL A5,12
		        waitL 84
		        noteL A6,6
		        waitL 18
		        noteL A5,6
		        waitL 18
		        noteL D6,48
		        note  A6
		        note  A5
		        note  D6
		        note  A6
		        note  A5
		        note  D6
		        note  A6
		        note  A5
		        note  B5
		        noteL D6,24
		        note  E6
		        note  F6
		        note  Gs6
		        noteL A6,144
		        noteL B6,96
		        noteL G6,48
		        noteL A6,96
		        noteL A5,48
		        noteL D6,12
		        waitL 36
		        noteL E5,48
		        note  A5
		mainLoopEnd
Music40_Channel3:
		  shifting 020h
		mainLoopStart
		  stereo 080h
		        waitL 4
		  inst 14
		  vol 08h
		  setRelease 01h
		  vibrato 00h
		        noteL A7,96
		        noteL Gs7,48
		        noteL A7,96
		        noteL Gs7,48
		        noteL A7,96
		        noteL D8,48
		        noteL F7,96
		        waitL 48
		        note  E7
		        note  Fs7
		        note  Gs7
		        note  A7
		        note  B7
		        note  Cs8
		        note  D8
		        note  E8
		        note  G8
		        noteL A7,12
		        waitL 36
		        noteL A8,12
		        wait
		        note  A7
		        waitL 60
		  stereo 040h
		        noteL A7,96
		        noteL Gs7,48
		        noteL A7,96
		        noteL Gs7,48
		        noteL A7,96
		        noteL D8,48
		        noteL F8,96
		        waitL 48
		        wait
		        note  Fs8
		        note  Cs8
		        note  D8
		        note  As7
		        note  B7
		        note  Gs7
		        note  A7
		        note  Cs7
		        noteL D7,12
		        waitL 34
		        noteL B6,48
		        note  A6
		mainLoopEnd
Music40_Channel4:
		channel_end
Music40_Channel5:
		channel_end
Music40_Channel6:
		channel_end
Music40_Channel7:
		channel_end
Music40_Channel9:
		channel_end
