
; ASM FILE music16.asm :
; 0xDC96..0xDD8B : Music 16
Music07:        db 0
		db 0
		db 0
		db 0BEh
		dw Music07_Channel0
		dw Music07_Channel1
		dw Music07_Channel2
		dw Music07_Channel3
		dw Music07_Channel4
		dw Music07_Channel5
		dw Music07_Channel6
		dw Music07_Channel7
		dw Music07_Channel9
		dw Music07_Channel9
Music07_Channel0:
		  inst 19
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        waitL 12
		        noteL C6,6
		        wait
		        noteL F6,18
		        noteL G6,6
		  setRelease 04h
		        noteL G6,10
		  vol 09h
		        note  G6
		  vol 07h
		        note  G6
		  vol 05h
		        note  G6
		  vol 03h
		        note  G6
		  vol 02h
		        note  G6
		  vol 01h
		        note  G6
		        waitL 1
		channel_end
Music07_Channel1:
		  inst 31
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL G5,48
		  setRelease 04h
		  inst 40
		  vol 0Ch
		        noteL D6,10
		  vol 0Ah
		        note  D6
		  vol 08h
		        note  D6
		  vol 06h
		        note  D6
		  vol 04h
		        note  D6
		  vol 03h
		        note  D6
		  vol 02h
		        note  D6
		        waitL 1
		channel_end
Music07_Channel2:
		  inst 31
		  vol 0Ah
		  setRelease 01h
		  vibrato 02Ch
		        noteL F5,48
		  setRelease 04h
		  inst 40
		  vol 0Ch
		        noteL C6,10
		  vol 0Ah
		        note  C6
		  vol 08h
		        note  C6
		  vol 06h
		        note  C6
		  vol 04h
		        note  C6
		  vol 03h
		        note  C6
		  vol 02h
		        note  C6
		        waitL 1
		channel_end
Music07_Channel3:
		  inst 53
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Ch
		        noteL C2,48
		  setRelease 04h
		  inst 40
		  vol 0Ch
		        noteL As5,10
		  vol 0Ah
		        note  As5
		  vol 08h
		        note  As5
		  vol 06h
		        note  As5
		  vol 04h
		        note  As5
		  vol 03h
		        note  As5
		  vol 02h
		        note  As5
		        waitL 1
		channel_end
Music07_Channel4:
		  inst 39
		  vol 0Bh
		  setRelease 01h
		  vibrato 02Ch
		        waitL 12
		        noteL C6,6
		        wait
		        noteL F6,18
		        noteL G6,6
		        noteL G6,10
		  vol 09h
		        note  G6
		  vol 07h
		        note  G6
		  vol 05h
		        note  G6
		  vol 03h
		        note  G6
		  vol 02h
		        note  G6
		  vol 01h
		        note  G6
		        waitL 1
		channel_end
Music07_Channel5:
		channel_end
Music07_Channel6:
		channel_end
Music07_Channel7:
		channel_end
Music07_Channel9:
		channel_end
