
; ASM FILE music09.asm :
; 0xDE62..0xDEFC : Music 09
Music09:        db 0
		db 0
		db 0
		db 0B9h
		dw Music09_Channel0
		dw Music09_Channel1
		dw Music09_Channel2
		dw Music09_Channel3
		dw Music09_Channel4
		dw Music09_Channel5
		dw Music09_Channel6
		dw Music09_Channel7
		dw Music09_Channel9
		dw Music09_Channel9
Music09_Channel0:
		  inst 6
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		countedLoopStart 1
		        noteL Gs5,3
		        note  Cs6
		        note  D6
		        note  E6
		        note  Gs6
		        note  As6
		        note  D7
		        note  Cs6
		        note  Gs6
		        note  A6
		        note  B6
		        note  Ds7
		        note  G7
		        note  F7
		countedLoopEnd
		        noteL Cs7,3
		        note  C7
		        waitL 5
		channel_end
Music09_Channel1:
		  inst 6
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		  stereo 040h
		        waitL 2
		countedLoopStart 1
		        noteL Gs5,3
		        note  Cs6
		        note  D6
		        note  E6
		        note  Gs6
		        note  As6
		        note  D7
		        note  Cs6
		        note  Gs6
		        note  A6
		        note  B6
		        note  Ds7
		        note  G7
		        note  F7
		countedLoopEnd
		        noteL Cs7,3
		        note  C7
		        wait
		channel_end
Music09_Channel2:
		  inst 6
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		        waitL 4
		countedLoopStart 1
		        noteL Gs5,3
		        note  Cs6
		        note  D6
		        note  E6
		        note  Gs6
		        note  As6
		        note  D7
		        note  Cs6
		        note  Gs6
		        note  A6
		        note  B6
		        note  Ds7
		        note  G7
		        note  F7
		countedLoopEnd
		        noteL Cs7,3
		        note  C7
		        waitL 1
		channel_end
Music09_Channel3:
		channel_end
Music09_Channel4:
		channel_end
Music09_Channel5:
		channel_end
Music09_Channel6:
		channel_end
Music09_Channel7:
		channel_end
Music09_Channel9:
		channel_end
