
; ASM FILE music41.asm :
; 0xDE62..0xDEFC : Music 41
Music_41:       db 0
		db 0
		db 0
		db 0B9h
		dw Music_41_Channel_0
		dw Music_41_Channel_1
		dw Music_41_Channel_2
		dw Music_41_Channel_3
		dw Music_41_Channel_4
		dw Music_41_Channel_5
		dw Music_41_Channel_6
		dw Music_41_Channel_7
		dw Music_41_Channel_9
		dw Music_41_Channel_9
Music_41_Channel_0:
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
Music_41_Channel_1:
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
Music_41_Channel_2:
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
Music_41_Channel_3:
		channel_end
Music_41_Channel_4:
		channel_end
Music_41_Channel_5:
		channel_end
Music_41_Channel_6:
		channel_end
Music_41_Channel_7:
		channel_end
Music_41_Channel_9:
		channel_end
