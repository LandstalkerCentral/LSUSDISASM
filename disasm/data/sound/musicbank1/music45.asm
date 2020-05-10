
; ASM FILE music45.asm :
; 0xCC97..0xCFFB : Music 45
Music46:        db 0
		db 0
		db 0
		db 0C8h
		dw Music46_Channel0
		dw Music46_Channel1
		dw Music46_Channel2
		dw Music46_Channel3
		dw Music46_Channel4
		dw Music46_Channel5
		dw Music46_Channel6
		dw Music46_Channel7
		dw Music46_Channel9
		dw Music46_Channel9
Music46_Channel0:
		  stereo 0C0h
		  setRelease 00h
		  vibrato 02Dh
		        waitL 192
		        waitL 168
		  inst 53
		  vol 0Ch
		        noteL C5,12
		        wait
		mainLoopStart
		        noteL F5,0
		  setSlide 02h
		        noteL G5,240
		  noSlide
		        waitL 12
		        noteL C5,6
		        wait
		        noteL F5,12
		        noteL G5,6
		        wait
		  sustain
		        noteL As5,9
		  setSlide 08h
		  setRelease 01h
		        note  C6
		        waitL 6
		  noSlide
		        note  A5
		        wait
		        note  As5
		        wait
		        note  G5
		        waitL 10
		        noteL A5,6
		        waitL 10
		        noteL F5,6
		        waitL 10
		  noSlide
		        noteL F5,0
		  setSlide 02h
		  sustain
		        noteL G5,192
		  vibrato 020h
		  setRelease 01h
		        noteL G5,156
		  vibrato 02Ch
		  noSlide
		        waitL 12
		        note  C5
		        wait
		        noteL Ds5,0
		  setSlide 02h
		        noteL F5,240
		  noSlide
		        waitL 12
		        noteL C5,6
		        wait
		        noteL Ds5,12
		        noteL F5,6
		        wait
		  sustain
		  setSlide 08h
		        noteL Fs5,2
		        noteL G5,12
		  setRelease 01h
		        noteL Fs5,10
		  noSlide
		        noteL F5,6
		        wait
		        note  Ds5
		        wait
		        note  C5
		        waitL 10
		        noteL As4,6
		        waitL 10
		        noteL Ds5,6
		        waitL 10
		        noteL B4,0
		  setSlide 01h
		  sustain
		        noteL C5,192
		  vibrato 020h
		  setRelease 01h
		        noteL C5,156
		  noSlide
		  vibrato 02Ch
		        waitL 12
		        note  C5
		        wait
		mainLoopEnd
Music46_Channel1:
		  stereo 0C0h
		  shifting 020h
		  setRelease 00h
		  vibrato 03Ch
		        waitL 198
		        waitL 168
		  inst 53
		  vol 09h
		        noteL C5,12
		        wait
		mainLoopStart
		        noteL F5,0
		  setSlide 02h
		        noteL G5,240
		  noSlide
		        waitL 12
		        noteL C5,6
		        wait
		        noteL F5,12
		        noteL G5,6
		        wait
		  sustain
		        noteL As5,9
		  setSlide 08h
		  setRelease 01h
		        note  C6
		        waitL 6
		  noSlide
		        note  A5
		        wait
		        note  As5
		        wait
		        note  G5
		        waitL 10
		        noteL A5,6
		        waitL 10
		        noteL F5,6
		        waitL 10
		  noSlide
		        noteL F5,0
		  setSlide 02h
		  sustain
		        noteL G5,192
		  vibrato 020h
		  setRelease 01h
		        noteL G5,156
		  vibrato 02Ch
		  noSlide
		        waitL 12
		        note  C5
		        wait
		        noteL Ds5,0
		  setSlide 02h
		        noteL F5,240
		  noSlide
		        waitL 12
		        noteL C5,6
		        wait
		        noteL Ds5,12
		        noteL F5,6
		        wait
		  sustain
		  setSlide 08h
		        noteL Fs5,2
		        noteL G5,12
		  setRelease 01h
		        noteL Fs5,10
		  noSlide
		        noteL F5,6
		        wait
		        note  Ds5
		        wait
		        note  C5
		        waitL 10
		        noteL As4,6
		        waitL 10
		        noteL Ds5,6
		        waitL 10
		        noteL B4,0
		  setSlide 01h
		  sustain
		        noteL C5,192
		  vibrato 020h
		  setRelease 01h
		        noteL C5,156
		  noSlide
		  vibrato 02Ch
		        waitL 12
		        note  C5
		        wait
		mainLoopEnd
Music46_Channel2:
		  setRelease 01h
		  vibrato 04Ch
		mainLoopStart
		countedLoopStart 5
		        waitL 24
		  stereo 040h
		  inst 31
		  vol 0Ah
		        noteL C6,8
		        note  G5
		        note  F5
		        note  C5
		        waitL 16
		  stereo 080h
		  vol 07h
		        noteL C6,8
		        note  G5
		        note  F5
		        note  C5
		        waitL 88
		countedLoopEnd
		countedLoopStart 1
		        waitL 24
		  stereo 080h
		  vol 0Ah
		        noteL F6,8
		        note  C6
		        note  As5
		        note  F5
		        waitL 16
		  stereo 080h
		  vol 07h
		        noteL F6,8
		        note  C6
		        note  As5
		        note  F5
		        waitL 88
		countedLoopEnd
		mainLoopEnd
Music46_Channel3:
		  stereo 0C0h
		  inst 30
		  vol 0Ah
		  setRelease 01h
		  vibrato 04Ch
		mainLoopStart
		countedLoopStart 5
		  sustain
		        noteL As2,1
		  setSlide 0Dh
		  setRelease 01h
		        noteL C3,59
		  noSlide
		        waitL 12
		        noteL G2,8
		        waitL 16
		        noteL As2,8
		        waitL 16
		        noteL As2,8
		        waitL 16
		        noteL C3,10
		        waitL 38
		countedLoopEnd
		countedLoopStart 1
		  sustain
		        noteL Ds3,1
		  setSlide 08h
		  setRelease 01h
		        noteL F3,59
		  noSlide
		        waitL 12
		        noteL C3,8
		        waitL 16
		        noteL Ds3,8
		        waitL 16
		        noteL Ds3,8
		        waitL 16
		        noteL F3,10
		        waitL 38
		countedLoopEnd
		mainLoopEnd
Music46_Channel4:
		  setRelease 01h
		  vibrato 04Ch
		mainLoopStart
		countedLoopStart 1
		        waitL 24
		  inst 61
		  vol 09h
		        noteL A3,12
		  vol 07h
		        noteL A3,84
		  vol 09h
		        noteL A3,12
		  vol 07h
		        noteL A3,36
		  vol 09h
		        noteL A3,12
		  vol 07h
		        note  A3
		countedLoopEnd
		mainLoopStart
		countedLoopStart 14
		        waitL 24
		  vol 09h
		        noteL A3,12
		  vol 07h
		        noteL A3,84
		  vol 09h
		        noteL A3,12
		  vol 07h
		        noteL A3,36
		  vol 09h
		        noteL A3,12
		  vol 07h
		        note  A3
		countedLoopEnd
		        waitL 168
		  vol 09h
		        noteL A3,12
		  vol 07h
		        note  A3
		mainLoopEnd
Music46_Channel5:
		mainLoopStart
		  stereo 0C0h
		        sampleL 0,48
		  stereo 080h
		        sampleL 2,24
		  stereo 0C0h
		        sample  3
		  stereo 080h
		        sampleL 2,48
		  stereo 040h
		        sampleL 4,24
		  stereo 0C0h
		        sample  3
		        sampleL 0,48
		  stereo 080h
		        sampleL 2,24
		  stereo 040h
		        sample  4
		  stereo 0C0h
		        sampleL 3,48
		  stereo 040h
		        sampleL 4,24
		  stereo 080h
		        sample  2
		mainLoopStart
		countedLoopStart 6
		  stereo 0C0h
		        sampleL 0,48
		  stereo 080h
		        sampleL 2,24
		  stereo 0C0h
		        sample  3
		  stereo 080h
		        sampleL 2,48
		  stereo 040h
		        sampleL 4,24
		  stereo 0C0h
		        sample  3
		        sampleL 0,48
		  stereo 080h
		        sampleL 2,24
		  stereo 040h
		        sample  4
		  stereo 0C0h
		        sampleL 3,48
		  stereo 040h
		        sampleL 4,24
		  stereo 080h
		        sample  2
		countedLoopEnd
		  stereo 0C0h
		        sampleL 0,48
		  stereo 080h
		        sampleL 2,24
		  stereo 0C0h
		        sample  3
		  stereo 080h
		        sampleL 2,48
		  stereo 040h
		        sampleL 4,24
		  stereo 0C0h
		        sample  3
		        sampleL 0,20
		  stereo 080h
		        sampleL 2,18
		        sampleL 2,16
		  stereo 0C0h
		        sampleL 3,14
		        sample  3
		  stereo 040h
		        sample  4
		  stereo 080h
		        sampleL 2,12
		  stereo 0C0h
		        sample  3
		        sample  3
		  stereo 040h
		        sample  4
		  stereo 0C0h
		        sampleL 3,24
		  stereo 040h
		        sample  4
		mainLoopEnd
Music46_Channel6:
		  setRelease 01h
		  vibrato 04Ch
		mainLoopStart
		countedLoopStart 5
		  psgInst 00h
		        waitL    24
		  psgInst 01Ah
		        psgNoteL C4,8
		        psgNote  G3
		        psgNote  F3
		        psgNote  C3
		  psgInst 00h
		        waitL    16
		  psgInst 018h
		        psgNoteL C4,8
		        psgNote  G3
		        psgNote  F3
		        psgNote  C3
		  psgInst 00h
		        waitL    88
		countedLoopEnd
		countedLoopStart 1
		  psgInst 00h
		        waitL    24
		  psgInst 01Ah
		        psgNoteL F4,8
		        psgNote  C4
		        psgNote  As3
		        psgNote  F3
		  psgInst 00h
		        waitL    16
		  psgInst 018h
		        psgNoteL F4,8
		        psgNote  C4
		        psgNote  As3
		        psgNote  F3
		  psgInst 00h
		        waitL    88
		countedLoopEnd
		mainLoopEnd
Music46_Channel7:
		  setRelease 01h
		  vibrato 04Ch
		  psgInst 00h
		        waitL    24
		mainLoopStart
		countedLoopStart 5
		  psgInst 00h
		        waitL    24
		  psgInst 015h
		        psgNoteL C4,8
		        psgNote  G3
		        psgNote  F3
		        psgNote  C3
		  psgInst 00h
		        waitL    16
		  psgInst 013h
		        psgNoteL C4,8
		        psgNote  G3
		        psgNote  F3
		        psgNote  C3
		  psgInst 00h
		        waitL    88
		countedLoopEnd
		countedLoopStart 1
		  psgInst 00h
		        waitL    24
		  psgInst 015h
		        psgNoteL F4,8
		        psgNote  C4
		        psgNote  As3
		        psgNote  F3
		  psgInst 00h
		        waitL    16
		  psgInst 013h
		        psgNoteL F4,8
		        psgNote  C4
		        psgNote  As3
		        psgNote  F3
		  psgInst 00h
		        waitL    88
		countedLoopEnd
		mainLoopEnd
Music46_Channel9:
		channel_end
