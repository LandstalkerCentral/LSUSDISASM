
; ASM FILE music13.asm :
; 0xC7A1..0xCC97 : Music 13
Music_13:       db 0
		db 0
		db 0
		db 0B7h
		dw Music_13_Channel_0
		dw Music_13_Channel_1
		dw Music_13_Channel_2
		dw Music_13_Channel_3
		dw Music_13_Channel_4
		dw Music_13_Channel_5
		dw Music_13_Channel_6
		dw Music_13_Channel_7
		dw Music_13_Channel_9
		dw Music_13_Channel_9
Music_13_Channel_0:
		mainLoopStart
		        waitL 8
		  inst 1
		  setRelease 01h
		  vibrato 00h
		  vol 0Bh
		        noteL E6,23
		        waitL 19
		        noteL A6,69
		  vol 0Ah
		        noteL E6,23
		        waitL 2
		  vol 0Ch
		        noteL D6,24
		        waitL 17
		        noteL G6,95
		        waitL 3
		        noteL C6,26
		        waitL 17
		  vol 0Eh
		        noteL F6,26
		        waitL 40
		  vol 0Ch
		        noteL B6,23
		        noteL B6,36
		        waitL 10
		  vol 0Bh
		        noteL G6,74
		        waitL 22
		  vol 0Ch
		        noteL A6,15
		        waitL 6
		        noteL C7,15
		        waitL 7
		  vol 0Dh
		        noteL E7,66
		        waitL 22
		  vol 0Bh
		        noteL C7,38
		        waitL 8
		        noteL D7,80
		  vol 0Ah
		        noteL Cs7,10
		  vol 0Ch
		        noteL B6,26
		        waitL 41
		  vol 0Bh
		        noteL B6,24
		        waitL 22
		        noteL B6,24
		        noteL A6,50
		        waitL 66
		        noteL G6,12
		        waitL 10
		  vol 0Ch
		        noteL As6,66
		        noteL As6,24
		  vol 0Bh
		        noteL A6,26
		        waitL 20
		        note  E6
		        waitL 11
		        noteL G6,16
		        waitL 20
		  vol 0Dh
		        noteL A6,24
		        waitL 19
		  vol 0Eh
		        noteL C7,23
		  vol 0Dh
		        noteL E7,36
		  vol 0Ch
		        noteL D7,11
		  vol 0Dh
		        noteL D7,64
		        noteL E7,21
		        waitL 6
		  vol 0Ch
		        noteL E7,128
		        waitL 5
		  vol 0Dh
		        noteL E6,18
		        noteL D6,20
		        noteL A6,44
		        noteL A7,40
		        waitL 3
		        noteL D6,18
		        noteL C6,21
		        noteL G6,42
		  vol 0Ch
		        noteL G7,38
		        waitL 3
		  vol 0Dh
		        noteL C6,17
		        noteL B5,20
		        noteL F6,41
		        note  F7
		        noteL B6,28
		        noteL C7,12
		        noteL G6,80
		  vol 0Ch
		        noteL A5,10
		        note  B5
		  vol 0Dh
		        noteL C6,9
		        noteL D6,11
		        noteL E6,62
		        noteL D6,21
		        noteL C6,34
		        waitL 9
		  vol 0Ch
		        noteL D6,74
		  vol 0Bh
		        noteL Cs6,10
		  vol 0Eh
		        noteL B5,11
		  vol 0Dh
		        noteL C6,10
		  vol 0Eh
		        noteL E6,9
		  vol 0Dh
		        noteL G6,11
		        noteL B6,72
		        noteL C7,10
		        waitL 4
		        noteL E7,35
		  vol 0Bh
		        noteL D7,11
		  vol 0Ch
		        noteL D7,48
		  vol 0Ah
		        note  A6
		        waitL 2
		  vol 0Bh
		        noteL E6,20
		        noteL D6,22
		  vol 0Dh
		        noteL Gs6,58
		  vol 0Ch
		        noteL G6,14
		        noteL F6,12
		  vol 0Dh
		        noteL G6,22
		  vol 0Ch
		        note  E6
		  vol 0Dh
		        noteL B6,43
		  vol 0Ah
		        noteL A6,45
		  vol 0Ch
		        noteL A5,22
		  vol 0Dh
		        noteL B5,20
		        noteL C6,21
		        note  D6
		        noteL E6,22
		        noteL F6,27
		        waitL 13
		        noteL E6,40
		        noteL D6,22
		  vol 0Ch
		        noteL E6,25
		  vol 0Dh
		        noteL F6,32
		        waitL 29
		mainLoopEnd
Music_13_Channel_1:
		mainLoopStart
		        waitL 28
		  inst 1
		  setRelease 01h
		  vibrato 00h
		  vol 0Bh
		        noteL D6,110
		        waitL 25
		  vol 0Ch
		        noteL C6,97
		  vol 0Bh
		        noteL C6,20
		        waitL 24
		  vol 0Dh
		        noteL B5,26
		        waitL 18
		  vol 0Ch
		        noteL A6,47
		        waitL 20
		        waitL 33
		  vol 09h
		        noteL C7,20
		        waitL 29
		  vol 0Ah
		        noteL E6,60
		        waitL 11
		  vol 0Bh
		        noteL B6,20
		        noteL D7,15
		        waitL 61
		  vol 0Ch
		        noteL D7,24
		        waitL 35
		  vol 0Bh
		        noteL D7,11
		        waitL 76
		  vol 0Ah
		        noteL D7,9
		  vol 0Bh
		        noteL C7,5
		        waitL 23
		  vol 0Ch
		        noteL C7,46
		        waitL 21
		  vol 0Bh
		        noteL A6,27
		        waitL 20
		        waitL 48
		  vol 09h
		        noteL G6,49
		        waitL 29
		  vol 0Ch
		        noteL A6,12
		  vol 0Bh
		        noteL G6,113
		        noteL E6,23
		        waitL 18
		  vol 0Ch
		        noteL F6,15
		        waitL 12
		        noteL F6,43
		  vol 0Dh
		        noteL B6,24
		        waitL 21
		        noteL C7,132
		        waitL 4
		        noteL Cs7,130
		        waitL 2
		  vol 0Ch
		        noteL C6,40
		  vol 0Dh
		        noteL E6,15
		  vol 0Ch
		        noteL E7,14
		        note  D7
		  vol 0Bh
		        noteL E7,42
		        waitL 2
		  vol 0Ch
		        noteL B5,39
		        noteL D6,15
		  vol 0Dh
		        noteL D7,14
		  vol 0Ch
		        noteL C7,12
		        noteL D7,40
		        waitL 2
		        noteL A5,38
		        noteL C6,14
		  vol 0Dh
		        noteL C7,13
		  vol 0Bh
		        noteL B6,14
		        note  C7
		  vol 0Dh
		        note  A6
		        noteL B6,13
		        noteL D6,28
		        noteL E6,12
		  vol 0Ch
		        noteL B5,28
		        noteL C6,52
		        noteL F5,123
		        waitL 32
		  vol 0Dh
		        noteL D6,6
		        waitL 75
		  vol 0Ch
		        noteL D6,9
		  vol 0Bh
		        noteL C6,5
		        noteL G5,41
		  vol 0Dh
		        noteL G6,82
		        waitL 3
		        noteL C7,94
		  vol 0Ah
		        noteL E6,49
		        waitL 1
		        noteL C6,85
		  vol 0Bh
		        noteL B5,42
		  vol 0Ch
		        note  D6
		        noteL E6,44
		  vol 0Ah
		        noteL E6,46
		  vol 0Ch
		        noteL F5,22
		  vol 0Bh
		        noteL G5,20
		  vol 0Ch
		        noteL A5,21
		        note  A5
		        noteL B5,22
		        noteL C6,27
		        waitL 9
		  vol 0Dh
		        noteL B5,91
		        waitL 28
		  vol 0Ch
		        noteL G6,33
		mainLoopEnd
Music_13_Channel_2:
		mainLoopStart
		        waitL 5
		  inst 1
		  setRelease 01h
		  vibrato 00h
		  vol 0Bh
		        noteL C6,133
		        waitL 4
		        noteL B5,138
		        waitL 1
		        noteL A5,89
		  vol 0Ch
		        noteL D6,45
		        noteL D6,46
		  vol 0Bh
		        noteL D6,38
		        waitL 10
		  vol 09h
		        noteL C6,48
		  vol 0Ch
		        noteL F6,131
		  vol 0Bh
		        noteL Gs6,136
		        noteL A6,67
		  vol 0Ah
		        noteL G6,23
		  vol 09h
		        noteL Fs6,47
		        noteL E6,138
		  vol 0Ah
		        noteL E6,66
		        noteL D6,24
		        noteL Cs6,46
		        noteL D6,88
		  vol 0Ch
		        noteL F6,45
		        noteL A6,132
		        waitL 2
		  vol 0Ah
		        noteL A6,132
		        waitL 1
		  vol 0Ch
		        noteL A5,40
		  vol 09h
		        noteL C6,42
		  vol 0Ch
		        noteL C7,34
		  vol 0Dh
		        noteL E6,10
		        waitL 1
		  vol 0Bh
		        noteL G5,39
		  vol 0Ah
		        noteL B5,41
		  vol 0Bh
		        noteL B6,32
		  vol 0Ch
		        noteL C6,9
		        waitL 1
		  vol 0Bh
		        noteL F5,39
		  vol 0Ah
		        noteL A5,41
		  vol 0Bh
		        noteL A6,14
		  vol 0Dh
		        note  C6
		        noteL D6,13
		        waitL 40
		  vol 0Bh
		        noteL C5,19
		        waitL 21
		  vol 0Dh
		        noteL G5,20
		  vol 0Ch
		        note  C5
		        noteL C5,123
		        noteL F5,53
		        noteL G5,11
		        noteL F5,9
		  vol 0Bh
		        noteL E5,12
		  vol 0Ch
		        noteL F5,42
		        noteL E5,41
		  vol 0Dh
		        noteL E6,82
		        waitL 1
		  vol 0Bh
		        noteL A6,95
		  vol 0Ah
		        noteL C6,50
		        noteL Gs5,86
		  vol 09h
		        noteL G5,42
		  vol 0Bh
		        noteL B5,41
		        noteL Cs6,45
		  vol 09h
		        noteL Cs6,46
		  vol 0Bh
		        noteL C5,22
		  vol 0Ch
		        noteL D5,20
		        noteL F5,21
		        note  F5
		  vol 0Bh
		        noteL G5,22
		  vol 0Ch
		        noteL A5,27
		        waitL 5
		        noteL F5,93
		        noteL As5,63
		mainLoopEnd
Music_13_Channel_3:
		mainLoopStart
		        waitL 3
		  inst 1
		  setRelease 01h
		  vibrato 00h
		  vol 0Ah
		        noteL A5,135
		        waitL 2
		        noteL G5,140
		        noteL F5,90
		  vol 09h
		        noteL F5,45
		        noteL G5,142
		        noteL C6,63
		        noteL A5,10
		  vol 0Ah
		        noteL B5,12
		  vol 0Bh
		        noteL C6,22
		  vol 0Ah
		        noteL A5,24
		        noteL F6,57
		  vol 09h
		        noteL G6,10
		  vol 0Ah
		        note  F6
		        noteL E6,14
		  vol 09h
		        noteL F6,45
		  vol 0Bh
		        noteL E6,90
		  vol 0Ah
		        noteL Ds6,47
		        waitL 23
		  vol 09h
		        noteL B5,115
		        waitL 23
		  vol 0Ah
		        note  E5
		        noteL A5,44
		  vol 09h
		        noteL A5,46
		  vol 08h
		        noteL A5,88
		  vol 0Ah
		        noteL A5,45
		  vol 0Dh
		        noteL F6,132
		  vol 0Ah
		        noteL E6,48
		  vol 0Ch
		        noteL A4,22
		  vol 0Dh
		        noteL B4,21
		  vol 0Eh
		        noteL Cs5,22
		  vol 0Dh
		        noteL E5,21
		  vol 0Ah
		        noteL F5,127
		  vol 0Bh
		        noteL E5,122
		        noteL D5,81
		  vol 0Ch
		        noteL F5,41
		        waitL 20
		        noteL G4,39
		  vol 0Bh
		        noteL E5,61
		        waitL 20
		        note  C4
		  vol 0Ch
		        noteL A4,21
		        noteL Gs4,10
		        noteL A4,11
		  vol 0Bh
		        noteL B4,31
		        noteL A4,10
		  vol 0Ch
		        noteL Gs4,127
		        waitL 21
		  vol 0Bh
		        noteL E4,20
		  vol 0Ch
		        noteL C5,21
		  vol 0Dh
		        noteL A4,10
		        note  B4
		        noteL C5,15
		        noteL D5,16
		        noteL E5,10
		  vol 0Bh
		        noteL E6,74
		  vol 0Ah
		        noteL E5,72
		        waitL 1
		  vol 08h
		        noteL F4,85
		  vol 0Bh
		        noteL D5,42
		  vol 0Ch
		        noteL E4,63
		  vol 0Ah
		        noteL E4,24
		        waitL 45
		  vol 0Bh
		        noteL F4,22
		  vol 0Ch
		        noteL E4,20
		        noteL D4,21
		  vol 0Dh
		        note  C4
		        noteL B3,22
		        noteL A3,27
		        waitL 4
		  vol 0Bh
		        noteL G3,93
		  vol 0Ah
		        noteL E5,64
		mainLoopEnd
Music_13_Channel_4:
		mainLoopStart
		  inst 1
		  setRelease 01h
		  vibrato 00h
		  vol 0Ah
		        noteL F4,138
		  vol 09h
		        noteL E4,142
		        noteL D4,90
		        noteL G4,45
		        noteL C5,142
		  vol 08h
		        noteL F5,131
		  vol 0Ah
		        noteL As5,136
		  vol 09h
		        noteL A5,90
		        noteL B5,47
		  vol 09h
		        noteL E5,93
		  vol 0Bh
		        noteL D5,45
		  vol 08h
		        noteL Cs5,90
		  vol 07h
		        noteL A4,46
		  vol 09h
		        noteL D5,88
		  vol 0Bh
		        noteL C5,45
		  vol 0Ah
		        noteL B4,89
		  vol 0Ch
		        noteL As4,43
		  vol 0Bh
		        noteL A4,48
		  vol 0Ch
		        noteL A3,22
		  vol 0Dh
		        noteL B3,21
		  vol 0Eh
		        noteL Cs4,22
		  vol 0Dh
		        noteL E4,21
		  vol 0Bh
		        noteL F4,127
		        noteL E4,122
		        noteL D4,81
		        noteL G4,41
		  vol 0Ch
		        noteL C4,120
		        noteL F3,123
		  vol 0Bh
		        noteL As3,127
		  vol 0Ch
		        noteL A3,123
		        waitL 3
		  vol 0Bh
		        noteL Fs3,143
		        waitL 1
		  vol 08h
		        noteL F3,85
		  vol 0Ah
		        noteL G3,42
		  vol 0Ch
		        noteL E3,40
		  vol 0Ah
		        noteL A3,45
		  vol 09h
		        noteL A4,47
		  vol 0Bh
		        noteL F3,22
		  vol 0Ch
		        noteL E3,20
		  vol 0Dh
		        noteL D3,21
		        note  C3
		        noteL B2,22
		        noteL A2,27
		  vol 0Ch
		        noteL G2,97
		  vol 08h
		        noteL C4,64
		mainLoopEnd
Music_13_Channel_5:
		channel_end
Music_13_Channel_6:
		channel_end
Music_13_Channel_7:
		channel_end
Music_13_Channel_9:
		channel_end
