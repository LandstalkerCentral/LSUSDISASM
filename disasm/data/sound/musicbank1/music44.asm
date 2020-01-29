
; ASM FILE music44.asm :
; 0xDEFC..0xE05C : Music 44
Music_44:       db 0
		db 0
		db 0
		db 0D0h
		dw Music_44_Channel_0
		dw Music_44_Channel_1
		dw Music_44_Channel_2
		dw Music_44_Channel_3
		dw Music_44_Channel_4
		dw Music_44_Channel_5
		dw Music_44_Channel_6
		dw Music_44_Channel_7
		dw Music_44_Channel_9
		dw Music_44_Channel_9
Music_44_Channel_0:
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  vibrato 04Ah
		        noteL F6,10
		        waitL 14
		        noteL F6,10
		        waitL 14
		        noteL F6,10
		        waitL 14
		countedLoopStart 1
		        noteL F6,20
		        waitL 4
		        note  F6
		        wait
		        note  F6
		        wait
		        note  F6
		        wait
		        noteL F6,6
		        waitL 18
		        noteL F6,6
		        waitL 18
		countedLoopEnd
		        noteL F6,60
		        waitL 12
		        noteL F6,4
		        wait
		        note  F6
		        wait
		        note  F6
		        wait
		        noteL F6,96
		        waitL 6
		channel_end
Music_44_Channel_1:
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  vibrato 04Ah
		        noteL As5,10
		        waitL 14
		        noteL As5,10
		        waitL 14
		        noteL As5,10
		        waitL 14
		countedLoopStart 1
		        noteL As5,20
		        waitL 4
		        note  As5
		        wait
		        note  As5
		        wait
		        note  As5
		        wait
		        noteL As5,6
		        waitL 18
		        noteL As5,6
		        waitL 18
		countedLoopEnd
		        noteL F5,60
		        waitL 12
		        noteL F5,4
		        wait
		        note  F5
		        wait
		        note  F5
		        wait
		        noteL F5,96
		        waitL 6
		channel_end
Music_44_Channel_2:
		  inst 13
		  vol 0Ah
		  setRelease 01h
		  vibrato 04Ah
		        noteL Ds5,10
		        waitL 14
		        noteL Ds5,10
		        waitL 14
		        noteL F5,10
		        waitL 14
		countedLoopStart 1
		        noteL G5,20
		        waitL 4
		        note  F5
		        wait
		        note  F5
		        wait
		        note  F5
		        wait
		        noteL Ds5,6
		        waitL 18
		        noteL Ds5,6
		        waitL 18
		countedLoopEnd
		        noteL Cs5,60
		        waitL 12
		        noteL Cs5,4
		        wait
		        note  Cs5
		        wait
		        note  Cs5
		        wait
		        noteL C5,96
		        waitL 6
		channel_end
Music_44_Channel_3:
		  inst 26
		  vol 0Ch
		  setRelease 01h
		  vibrato 04Ah
		        noteL F4,12
		        wait
		        note  As4
		        wait
		        note  C5
		        wait
		countedLoopStart 1
		        noteL Ds5,22
		        waitL 2
		        noteL D5,6
		        waitL 2
		        noteL C5,6
		        waitL 2
		        noteL As4,6
		        waitL 2
		        noteL C5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		countedLoopEnd
		        noteL Gs5,62
		        waitL 10
		        noteL Gs5,6
		        waitL 2
		        noteL Gs5,6
		        waitL 2
		        noteL Gs5,6
		        waitL 2
		        noteL A5,96
		        waitL 6
		channel_end
Music_44_Channel_4:
		        waitL 6
		  shifting 020h
		  inst 26
		  vol 09h
		  setRelease 01h
		  vibrato 04Ah
		        noteL F4,12
		        wait
		        note  As4
		        wait
		        note  C5
		        wait
		countedLoopStart 1
		        noteL Ds5,22
		        waitL 2
		        noteL D5,6
		        waitL 2
		        noteL C5,6
		        waitL 2
		        noteL As4,6
		        waitL 2
		        noteL C5,8
		        waitL 16
		        noteL F5,8
		        waitL 16
		countedLoopEnd
		        noteL Gs5,62
		        waitL 10
		        noteL Gs5,6
		        waitL 2
		        noteL Gs5,6
		        waitL 2
		        noteL Gs5,6
		        waitL 2
		        noteL A5,96
		        waitL 1
		channel_end
Music_44_Channel_5:
		channel_end
Music_44_Channel_6:
		channel_end
Music_44_Channel_7:
		channel_end
Music_44_Channel_9:
		channel_end
