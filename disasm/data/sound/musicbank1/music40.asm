
; ASM FILE music40.asm :
; 0xDD8B..0xDE62 : Music 40
Music_40:       db 0
		db 0
		db 0
		db 0BCh
		dw Music_40_Channel_0
		dw Music_40_Channel_1
		dw Music_40_Channel_2
		dw Music_40_Channel_3
		dw Music_40_Channel_4
		dw Music_40_Channel_5
		dw Music_40_Channel_6
		dw Music_40_Channel_7
		dw Music_40_Channel_9
		dw Music_40_Channel_9
Music_40_Channel_0:
		  inst 26
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		        noteL G6,16
		        noteL As6,14
		        noteL A6,13
		        noteL Gs6,12
		        noteL G6,11
		        noteL As6,10
		        noteL A6,9
		        note  Gs6
		        noteL F6,6
		        noteL Cs6,5
		        noteL F6,4
		        note  Gs6
		        noteL B6,3
		        note  Cs7
		        note  F7
		        noteL Ds7,68
		        waitL 6
		channel_end
Music_40_Channel_1:
		  inst 26
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        noteL Ds6,16
		        noteL G6,14
		        noteL F6,13
		        noteL E6,12
		        noteL Ds6,11
		        noteL G6,10
		        noteL F6,9
		        note  E6
		        noteL F5,96
		        waitL 6
		channel_end
Music_40_Channel_2:
		        waitL 8
		  inst 26
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		        noteL As5,15
		        noteL Ds6,14
		        noteL C6,12
		        note  B5
		        noteL As5,10
		        note  Ds6
		        noteL C6,8
		        noteL B5,5
		  vol 0Ah
		        noteL B4,96
		        waitL 6
		channel_end
Music_40_Channel_3:
		  inst 26
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        noteL Gs5,16
		        noteL E5,14
		        noteL Fs5,13
		        noteL G5,12
		        noteL Gs5,11
		        noteL E5,10
		        noteL Fs5,9
		        note  G5
		  inst 34
		        noteL Cs3,96
		        waitL 6
		channel_end
Music_40_Channel_4:
		  shifting 020h
		        waitL 6
		  inst 26
		  vol 09h
		  setRelease 01h
		  vibrato 02Ch
		        noteL G6,16
		        noteL As6,14
		        noteL A6,13
		        noteL Gs6,12
		        noteL G6,11
		        noteL As6,10
		        noteL A6,9
		        note  Gs6
		        noteL F6,6
		        noteL Cs6,5
		        noteL F6,4
		        note  Gs6
		        noteL B6,3
		        note  Cs7
		        note  F7
		        noteL Ds7,68
		channel_end
Music_40_Channel_5:
		channel_end
Music_40_Channel_6:
		channel_end
Music_40_Channel_7:
		channel_end
Music_40_Channel_9:
		channel_end
