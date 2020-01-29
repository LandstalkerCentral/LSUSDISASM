
; GAME SECTION 12 :
; 0x1F6000..0x200000 : Sound driver, Music Bank 1
; FREE SPACE : 1359 bytes.


SoundDriver:    incbin "data/sound/sounddriver.bin"
MusicBank1:     incbin "data/sound/musicbank1.bin"
                align $200000
