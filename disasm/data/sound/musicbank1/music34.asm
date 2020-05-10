
; ASM FILE music34.asm :
; 0x8294..0x847F : Music 34
Music34:        db 0
		db 0
		db 0
		db 0D2h
		dw Music34_Channel0
		dw Music34_Channel1
		dw Music34_Channel2
		dw Music34_Channel3
		dw Music34_Channel4
		dw Music34_Channel5
		dw Music34_Channel6
		dw Music34_Channel7
		dw Music34_Channel9
		dw Music34_Channel9
Music34_Channel0:
		  inst 1
		  vol 0Ah
		  setRelease 01h
		  vibrato 05Ch
		mainLoopStart
		        noteL G5,65
		        noteL C6,66
		        note  D6
		        noteL Ds6,38
		        noteL D6,26
		        noteL C6,25
		        noteL B5,33
		        noteL D6,119
		        waitL 57
		        noteL G5,70
		        noteL D6,63
		        noteL Ds6,64
		        noteL F6,39
		        noteL Ds6,25
		        noteL D6,26
		        noteL C6,33
		        noteL Ds6,119
		        waitL 54
		        noteL C6,65
		        note  G6
		        noteL Gs6,69
		        noteL As6,42
		        noteL Gs6,28
		        noteL G6,26
		        noteL F6,27
		        noteL Gs6,30
		        noteL G6,25
		        noteL F6,26
		        noteL E6,31
		        noteL D6,52
		        noteL C6,13
		        noteL D6,25
		        noteL C6,13
		        noteL D6,16
		        noteL Ds6,38
		        noteL D6,15
		        noteL Ds6,30
		        noteL D6,16
		        noteL Ds6,17
		        noteL D6,54
		        noteL B5,14
		        noteL D6,31
		        waitL 23
		        noteL Gs6,35
		        waitL 15
		        noteL G6,144
		        waitL 78
		mainLoopEnd
Music34_Channel1:
		  inst 1
		  vol 0Ah
		  setRelease 01h
		  vibrato 05Ch
		mainLoopStart
		        noteL Ds5,65
		        noteL G5,66
		        note  G5
		        waitL 24
		        noteL F6,28
		        noteL Ds6,23
		        noteL D6,28
		        noteL C6,19
		        noteL B5,119
		        waitL 57
		        noteL D5,70
		        noteL G5,63
		        noteL G5,64
		        waitL 24
		        noteL G6,28
		        noteL F6,25
		        noteL Ds6,27
		        noteL D6,19
		        noteL G5,119
		        waitL 54
		        noteL G5,65
		        note  C6
		        noteL C6,69
		        waitL 26
		        noteL C7,30
		        noteL As6,28
		        noteL Gs6,25
		        noteL G6,31
		        waitL 0
		        noteL As6,25
		        note  Gs6
		        noteL G6,27
		        noteL F6,42
		        waitL 0
		        waitL 15
		        noteL A5,80
		        waitL 26
		        noteL C6,90
		        waitL 41
		        noteL Gs5,58
		        noteL D6,48
		        waitL 10
		        waitL 7
		        noteL D6,152
		        waitL 78
		mainLoopEnd
Music34_Channel2:
		  inst 1
		  vol 09h
		  setRelease 01h
		  vibrato 05Ch
		mainLoopStart
		        noteL C5,65
		        noteL C5,66
		        note  B4
		        noteL G5,122
		        noteL G5,119
		        waitL 57
		        noteL B4,70
		        noteL D5,63
		        noteL C5,64
		        noteL B4,123
		        noteL C5,119
		        waitL 54
		        noteL E5,65
		        note  G5
		        noteL F5,69
		        noteL E5,123
		        noteL F4,112
		        waitL 24
		        noteL D5,53
		        noteL D5,42
		        waitL 15
		        noteL A5,51
		        noteL A5,50
		        waitL 25
		        noteL F5,58
		        noteL B5,64
		        waitL 10
		        noteL B5,159
		        waitL 78
		mainLoopEnd
Music34_Channel3:
		  inst 1
		  vol 0Ah
		  setRelease 01h
		  vibrato 05Ch
		mainLoopStart
		        noteL C4,65
		        noteL Ds4,66
		        note  G4
		        noteL C4,122
		        noteL G3,119
		        waitL 57
		        noteL G3,70
		        noteL B3,63
		        noteL C4,64
		        noteL G3,123
		        noteL C4,119
		        waitL 54
		        noteL C4,65
		        note  E4
		        noteL F4,69
		        noteL C4,80
		        waitL 16
		        noteL C4,27
		        noteL F4,67
		        waitL 14
		        noteL F4,31
		        noteL Fs4,80
		        waitL 10
		        noteL Fs4,15
		        waitL 14
		        noteL Fs4,66
		        waitL 17
		        noteL Fs4,33
		  sustain
		        noteL G4,229
		  setRelease 01h
		        noteL G4,87
		        waitL 78
		mainLoopEnd
Music34_Channel4:
		        waitL 6
		  inst 1
		  shifting 020h
		  vol 07h
		  setRelease 01h
		  vibrato 05Ch
		mainLoopStart
		        noteL G5,65
		        noteL C6,66
		        note  D6
		        noteL Ds6,38
		        noteL D6,26
		        noteL C6,25
		        noteL B5,33
		        noteL D6,119
		        waitL 57
		        noteL G5,70
		        noteL D6,63
		        noteL Ds6,64
		        noteL F6,39
		        noteL Ds6,25
		        noteL D6,26
		        noteL C6,33
		        noteL Ds6,119
		        waitL 54
		        noteL C6,65
		        note  G6
		        noteL Gs6,69
		        noteL As6,42
		        noteL Gs6,28
		        noteL G6,26
		        noteL F6,27
		        noteL Gs6,30
		        noteL G6,25
		        noteL F6,26
		        noteL E6,31
		        noteL D6,52
		        noteL C6,13
		        noteL D6,25
		        noteL C6,13
		        noteL D6,16
		        noteL Ds6,38
		        noteL D6,15
		        noteL Ds6,30
		        noteL D6,16
		        noteL Ds6,17
		        noteL D6,54
		        noteL B5,14
		        noteL D6,31
		        waitL 23
		        noteL Gs6,35
		        waitL 15
		        noteL G6,144
		        waitL 78
		mainLoopEnd
Music34_Channel5:
		channel_end
Music34_Channel6:
		channel_end
Music34_Channel7:
		channel_end
Music34_Channel9:
		channel_end
