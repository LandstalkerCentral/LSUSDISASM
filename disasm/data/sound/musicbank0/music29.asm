
; ASM FILE music29.asm :
; 0xE74E..0xE92B : Music 29
Music16:        db 0
		db 0
		db 0
		db 0C6h
		dw Music16_Channel0
		dw Music16_Channel1
		dw Music16_Channel2
		dw Music16_Channel3
		dw Music16_Channel4
		dw Music16_Channel5
		dw Music16_Channel6
		dw Music16_Channel7
		dw Music16_Channel9
		dw Music16_Channel9
Music16_Channel0:
		countedLoopStart 1
		        waitL 12
		  inst 61
		  vol 0Ah
		  stereo 040h
		        noteL C7,6
		        note  C7
		        noteL C7,24
		  stereo 080h
		        noteL C7,6
		        note  C7
		        noteL C7,24
		  stereo 040h
		        noteL C7,6
		        note  C7
		countedLoopEnd
		  stereo 0C0h
		  inst 7
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Fh
		        noteL D2,0
		  setSlide 021h
		  vibrato 020h
		        noteL Ds7,96
		  noSlide
		  inst 20
		  vol 0Ch
		        noteL Ds5,18
		  vol 08h
		        noteL Ds5,6
		  vol 06h
		        note  Ds5
		        wait
		channel_end
Music16_Channel1:
		        waitL 96
		        wait
		  inst 7
		  vol 0Ch
		  setRelease 01h
		  vibrato 02Fh
		        noteL C2,0
		  setSlide 01Fh
		        noteL As6,96
		  noSlide
		  inst 20
		  vol 0Ch
		        noteL As4,18
		  vol 08h
		        noteL As4,6
		  vol 06h
		        note  As4
		        wait
		channel_end
Music16_Channel2:
		  setRelease 01h
		  vibrato 02Ch
		  stereo 080h
		  inst 17
		  vol 0Ch
		        noteL E6,18
		  vol 0Ah
		        noteL E6,54
		        noteL E6,18
		  vol 08h
		        noteL E6,54
		  vol 0Ch
		        noteL D6,18
		  vol 0Ah
		        noteL D6,126
		  stereo 0C0h
		  inst 20
		  vol 0Ch
		        noteL G4,18
		  vol 08h
		        noteL G4,6
		  vol 06h
		        note  G4
		        wait
		channel_end
Music16_Channel3:
		        waitL 96
		        wait
		  inst 50
		  vol 0Ch
		        note  F3
		  vol 00h
		        waitL 6
		  inst 20
		  vol 0Ch
		        noteL Ds5,18
		  shifting 020h
		  inst 12
		  vol 0Ah
		  sustain
		        noteL Ds3,72
		  vibrato 020h
		  vol 0Ah
		        noteL Ds3,6
		  vol 08h
		        note  Ds3
		  vol 06h
		        note  Ds3
		  vol 04h
		  setRelease 01h
		        note  Ds3
		channel_end
Music16_Channel4:
		  setRelease 01h
		  vibrato 02Ch
		  stereo 040h
		  shifting 020h
		        waitL 6
		  inst 17
		  vol 0Bh
		        noteL E6,18
		  vol 09h
		        noteL E6,54
		        noteL E6,18
		  vol 07h
		        noteL E6,54
		  vol 0Bh
		        noteL D6,18
		  vol 09h
		        noteL D6,126
		  stereo 0C0h
		        waitL 18
		  shifting 00h
		  inst 12
		  vol 0Ch
		  sustain
		        noteL Ds3,72
		  vibrato 020h
		  vol 0Ch
		        noteL Ds3,6
		  vol 0Ah
		        note  Ds3
		  vol 08h
		        note  Ds3
		  setRelease 01h
		  vol 06h
		        note  Ds3
		channel_end
Music16_Channel5:
		        waitL 96
		        waitL 192
		        sampleL 1,24
		        sampleL 0,72
		channel_end
Music16_Channel6:
		  setRelease 01h
		  psgInst 087h
		        psgNoteL F4,4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 088h
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 089h
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 08Ah
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 08Bh
		countedLoopStart 4
		        psgNoteL F4,4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		countedLoopEnd
		  psgInst 08Ah
		        psgNoteL F4,4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 089h
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 088h
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 0Dh
		        psgNoteL Ds5,24
		        waitL    6
		  psgInst 00h
		channel_end
Music16_Channel7:
		  psgInst 00h
		        waitL    6
		  setRelease 01h
		  psgInst 085h
		        psgNoteL F4,4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 086h
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 087h
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 088h
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 09h
		countedLoopStart 4
		        psgNoteL F4,4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		countedLoopEnd
		  psgInst 088h
		        psgNoteL F4,4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 087h
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 086h
		        psgNote  F4
		        psgNote  Gs4
		        psgNote  B4
		        psgNote  E5
		        psgNote  D5
		        psgNote  B4
		  psgInst 0Bh
		        psgNoteL G4,24
		        waitL    6
		  psgInst 00h
		channel_end
Music16_Channel9:
		channel_end
