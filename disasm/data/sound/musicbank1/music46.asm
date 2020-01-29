
; ASM FILE music46.asm :
; 0xE4A6..0xE6E2 : Music 46
Music_46:       db 0
		db 0
		db 0
		db 0B0h
		dw Music_46_Channel_0
		dw Music_46_Channel_1
		dw Music_46_Channel_2
		dw Music_46_Channel_3
		dw Music_46_Channel_4
		dw Music_46_Channel_5
		dw Music_46_Channel_6
		dw Music_46_Channel_7
		dw Music_46_Channel_9
		dw Music_46_Channel_9
Music_46_Channel_0:
		  setRelease 01h
		  vibrato 02Ch
		        waitL 96
		        wait
		mainLoopStart
		        waitL 12
		  inst 5
		  vol 0Ch
		        note  E4
		        note  F4
		        note  Gs4
		        note  B4
		        note  C5
		        note  G5
		        note  Fs5
		  sustain
		        noteL F5,3
		        note  G5
		        note  F5
		  setRelease 01h
		        noteL E5,75
		        noteL G5,12
		  sustain
		        noteL F5,3
		        note  G5
		        note  F5
		  setRelease 01h
		        noteL E5,87
		        noteL Ds5,0
		  setSlide 05h
		        noteL E5,72
		  noSlide
		        noteL F4,48
		  sustain
		        noteL Gs4,4
		        noteL B4,3
		  setRelease 01h
		        noteL Gs4,53
		        noteL F4,22
		        noteL Gs4,9
		        noteL B4,8
		        note  D5
		        waitL 10
		        noteL Cs5,0
		  setSlide 05h
		        noteL D5,147
		  noSlide
		        noteL Gs4,48
		        noteL A4,4
		        noteL Gs4,44
		        noteL E5,0
		  setSlide 05h
		        noteL F5,48
		  noSlide
		mainLoopEnd
Music_46_Channel_1:
		  inst 53
		  vol 0Bh
		  setRelease 08h
		  vibrato 02Ch
		mainLoopStart
		        noteL B3,24
		        noteL B3,12
		        note  B3
		mainLoopEnd
Music_46_Channel_2:
		  inst 53
		  vol 0Bh
		  setRelease 08h
		  vibrato 02Ch
		mainLoopStart
		        noteL A3,24
		        noteL A3,12
		        note  A3
		mainLoopEnd
Music_46_Channel_3:
		  inst 53
		  vol 0Dh
		  setRelease 08h
		  vibrato 02Ch
		mainLoopStart
		        noteL A2,24
		        noteL E3,12
		        note  E3
		mainLoopEnd
Music_46_Channel_4:
		  shifting 020h
		  setRelease 01h
		  vibrato 02Ch
		        waitL 102
		        waitL 96
		mainLoopStart
		        waitL 12
		  inst 5
		  vol 0Ah
		        note  E4
		        note  F4
		        note  Gs4
		        note  B4
		        note  C5
		        note  G5
		        note  Fs5
		  sustain
		        noteL F5,3
		        note  G5
		  setRelease 01h
		        note  F5
		        noteL E5,75
		        noteL G5,12
		  sustain
		        noteL F5,3
		        note  G5
		        note  F5
		  setRelease 01h
		        noteL E5,87
		        noteL Ds5,0
		  setSlide 05h
		        noteL E5,72
		  noSlide
		        noteL F4,48
		  sustain
		        noteL Gs4,4
		        noteL B4,3
		  setRelease 01h
		        noteL Gs4,53
		        noteL F4,22
		        noteL Gs4,9
		        noteL B4,8
		        note  D5
		        waitL 10
		        noteL Cs5,0
		  setSlide 05h
		        noteL D5,147
		  noSlide
		        noteL Gs4,48
		        noteL A4,4
		        noteL Gs4,44
		        noteL E5,0
		  setSlide 05h
		        noteL F5,48
		  noSlide
		mainLoopEnd
Music_46_Channel_5:
		        waitL 96
		        waitL 12
		        sampleL 4,6
		        sample  4
		        sampleL 0,12
		        sample  4
		        sample  0
		        sampleL 4,24
		        sampleL 4,12
		mainLoopStart
		        sample  0
		        sample  0
		        sampleL 4,6
		        sample  4
		        sample  0
		        sample  0
		        sample  4
		        sampleL 0,6
		        sampleL 4,12
		        sampleL 4,6
		        sampleL 0,12
		        sample  4
		mainLoopEnd
Music_46_Channel_6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL 96
		        wait
		        wait
		        wait
		mainLoopStart
		        waitL 24
		  psgInst 07Dh
		        psgNoteL As4,12
		        psgNoteL Gs4,3
		        psgNoteL As4,2
		        psgNoteL Gs4,7
		        psgNoteL Cs5,6
		        waitL 15
		        psgNoteL Fs4,3
		        psgNoteL Gs4,36
		        psgNoteL As4,12
		        psgNoteL Gs4,3
		        psgNote  As4
		        psgNoteL Gs4,6
		        psgNote  Cs5
		        psgNote  Fs4
		        psgNoteL Gs4,96
		  psgInst 00h
		        waitL 48
		        waitL 60
		  psgInst 07Dh
		        psgNoteL Ds4,6
		        psgNote  Cs4
		        psgNoteL Gs4,12
		        psgNoteL Fs4,3
		        psgNote  Gs4
		        psgNoteL Fs4,6
		        psgNote  As4
		        psgNote  Ds4
		        psgNoteL F4,36
		        psgNoteL As3,2
		        psgNoteL C4,6
		        waitL 4
		        psgNoteL As3,2
		        psgNoteL C4,82
		        waitL 24
		        psgNoteL Gs4,32
		        psgNoteL Fs4,8
		        psgNoteL F4,7
		        psgNote  D4
		        psgNoteL B3,6
		        psgNoteL G3,5
		        psgNoteL Gs3,6
		        psgNoteL As3,5
		        psgNoteL Gs3,3
		        psgNote  As3
		        psgNote  Gs3
		        psgNote  As3
		        psgNote  Gs3
		        psgNote  As3
		        psgNote  Gs3
		        psgNote  As3
		        psgNoteL Gs3,12
		        waitL 8
		  psgInst 00h
		        waitL 72
		  psgInst 07Dh
		        psgNoteL Gs4,2
		        psgNoteL Fs4,5
		        wait
		        psgNoteL As4,2
		        psgNoteL Gs4,12
		        waitL 10
		        psgNoteL C5,2
		        psgNoteL As4,34
		mainLoopEnd
Music_46_Channel_7:
		  shifting 010h
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL 102
		        waitL 96
		        wait
		        wait
		mainLoopStart
		        waitL 24
		  psgInst 07Bh
		        psgNoteL As4,12
		        psgNoteL Gs4,3
		        psgNoteL As4,2
		        psgNoteL Gs4,7
		        psgNoteL Cs5,6
		        waitL 15
		        psgNoteL Fs4,3
		        psgNoteL Gs4,36
		        psgNoteL As4,12
		        psgNoteL Gs4,3
		        psgNote  As4
		        psgNoteL Gs4,6
		        psgNote  Cs5
		        psgNote  Fs4
		        psgNoteL Gs4,96
		  psgInst 00h
		        waitL 48
		        waitL 60
		  psgInst 07Bh
		        psgNoteL Ds4,6
		        psgNote  Cs4
		        psgNoteL Gs4,12
		        psgNoteL Fs4,3
		        psgNote  Gs4
		        psgNoteL Fs4,6
		        psgNote  As4
		        psgNote  Ds4
		        psgNoteL F4,36
		        psgNoteL As3,2
		        psgNoteL C4,6
		        waitL 4
		        psgNoteL As3,2
		        psgNoteL C4,82
		        waitL 24
		        psgNoteL Gs4,32
		        psgNoteL Fs4,8
		        psgNoteL F4,7
		        psgNote  D4
		        psgNoteL B3,6
		        psgNoteL G3,5
		        psgNoteL Gs3,6
		        psgNoteL As3,5
		        psgNoteL Gs3,3
		        psgNote  As3
		        psgNote  Gs3
		        psgNote  As3
		        psgNote  Gs3
		        psgNote  As3
		        psgNote  Gs3
		        psgNote  As3
		        psgNoteL Gs3,12
		        waitL 8
		  psgInst 00h
		        waitL 72
		  psgInst 07Bh
		        psgNoteL Gs4,2
		        psgNoteL Fs4,5
		        wait
		        psgNoteL As4,2
		        psgNoteL Gs4,12
		        waitL 10
		        psgNoteL C5,2
		        psgNoteL As4,34
		mainLoopEnd
Music_46_Channel_9:
		channel_end
