
; ASM FILE music17.asm :
; 0xDD8B..0xDE62 : Music 17
Music08:        db 0
		db 0
		db 0
		db 0BCh
		dw Music08_Channel0
		dw Music08_Channel1
		dw Music08_Channel2
		dw Music08_Channel3
		dw Music08_Channel4
		dw Music08_Channel5
		dw Music08_Channel6
		dw Music08_Channel7
		dw Music08_Channel9
		dw Music08_Channel9
Music08_Channel0:
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
Music08_Channel1:
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
Music08_Channel2:
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
Music08_Channel3:
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
Music08_Channel4:
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
Music08_Channel5:
		channel_end
Music08_Channel6:
		channel_end
Music08_Channel7:
		channel_end
Music08_Channel9:
		channel_end
