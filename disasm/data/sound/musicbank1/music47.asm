
; ASM FILE music47.asm :
; 0xE6E2..0xE74E : Music 47
Music_47:       db 0
		db 0
		db 0
		db 0B5h
		dw Music_47_Channel_0
		dw Music_47_Channel_1
		dw Music_47_Channel_2
		dw Music_47_Channel_3
		dw Music_47_Channel_4
		dw Music_47_Channel_5
		dw Music_47_Channel_9
		dw Music_47_Channel_9
		dw Music_47_Channel_9
		dw Music_47_Channel_9
Music_47_Channel_0:
		  inst 53
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        noteL D7,48
		        waitL 6
		channel_end
Music_47_Channel_1:
		  inst 53
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL Cs7,48
		        waitL 6
		channel_end
Music_47_Channel_2:
		  inst 53
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL As6,48
		        waitL 6
		channel_end
Music_47_Channel_3:
		  inst 14
		  vol 0Bh
		  setRelease 00h
		  vibrato 00h
		        noteL Cs6,48
		        waitL 6
		channel_end
Music_47_Channel_4:
		  inst 14
		  vol 0Ch
		  setRelease 00h
		  vibrato 00h
		        noteL D6,48
		        waitL 6
		channel_end
Music_47_Channel_5:
		        waitL 5
		        sample  11
		        sample  10
		        sampleL 9,12
Music_47_Channel_9:
		channel_end
