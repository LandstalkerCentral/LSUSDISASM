
; ASM FILE music27.asm :
; 0xE6E2..0xE74E : Music 27
Music15:        db 0
		db 0
		db 0
		db 0B5h
		dw Music15_Channel0
		dw Music15_Channel1
		dw Music15_Channel2
		dw Music15_Channel3
		dw Music15_Channel4
		dw Music15_Channel5
		dw Music15_Channel9
		dw Music15_Channel9
		dw Music15_Channel9
		dw Music15_Channel9
Music15_Channel0:
		  inst 53
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        noteL D7,48
		        waitL 6
		channel_end
Music15_Channel1:
		  inst 53
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL Cs7,48
		        waitL 6
		channel_end
Music15_Channel2:
		  inst 53
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL As6,48
		        waitL 6
		channel_end
Music15_Channel3:
		  inst 14
		  vol 0Bh
		  setRelease 00h
		  vibrato 00h
		        noteL Cs6,48
		        waitL 6
		channel_end
Music15_Channel4:
		  inst 14
		  vol 0Ch
		  setRelease 00h
		  vibrato 00h
		        noteL D6,48
		        waitL 6
		channel_end
Music15_Channel5:
		        waitL 5
		        sample  11
		        sample  10
		        sampleL 9,12
Music15_Channel9:
		channel_end
