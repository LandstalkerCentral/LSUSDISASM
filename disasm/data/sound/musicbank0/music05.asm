
; ASM FILE music05.asm :
; 0xDAB3..0xDB74 : Music 05
Music05:        db 0
		db 0
		db 0
		db 0B2h
		dw Music05_Channel0
		dw Music05_Channel1
		dw Music05_Channel2
		dw Music05_Channel3
		dw Music05_Channel4
		dw Music05_Channel5
		dw Music05_Channel6
		dw Music05_Channel7
		dw Music05_Channel9
		dw Music05_Channel9
Music05_Channel0:
		  inst 13
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        noteL G5,5
		        waitL 3
		        noteL F5,5
		        waitL 3
		        noteL G5,5
		        waitL 3
		        noteL Gs5,54
		        waitL 6
		channel_end
Music05_Channel1:
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL C5,5
		        waitL 3
		        noteL As4,5
		        waitL 3
		        noteL C5,5
		        waitL 3
		        noteL Cs5,54
		        waitL 6
		channel_end
Music05_Channel2:
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL As4,5
		        waitL 3
		        noteL Gs4,5
		        waitL 3
		        noteL As4,5
		        waitL 3
		        noteL F4,54
		        waitL 6
		channel_end
Music05_Channel3:
		  inst 13
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		        noteL Gs3,8
		        note  Fs3
		        note  F3
		        noteL Ds3,54
		        waitL 6
		channel_end
Music05_Channel4:
		  shifting 020h
		        waitL 3
		  inst 13
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		        noteL G5,5
		        waitL 3
		        noteL F5,5
		        waitL 3
		        noteL G5,5
		        waitL 3
		        noteL Gs5,54
		        waitL 3
		channel_end
Music05_Channel5:
		        sampleL 9,8
		        sample  9
		        sample  9
		        sampleL 10,4
		        sampleL 10,3
		        sampleL 10,2
		        sample  10
		        sample  10
		        sample  10
		countedLoopStart 12
		        sampleL 11,2
		countedLoopEnd
		        sampleL 10,2
		        sample  10
		        sampleL 10,3
		        sampleL 9,6
		channel_end
Music05_Channel6:
		channel_end
Music05_Channel7:
		channel_end
Music05_Channel9:
		channel_end
