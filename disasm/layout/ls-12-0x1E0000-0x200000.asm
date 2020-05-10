
; GAME SECTION 12 :
; 0x1E0000..0x1F6000 : PCM Bank 0, PCM Bank 1, Music bank 0, Sound driver, Music Bank 1.
; FREE SPACE : 131072 bytes.


PCMBank0:       incbin "data/sound/pcmbank0.bin"
PCMBank1:       incbin "data/sound/pcmbank1.bin"
MusicBank1:     incbin "data/sound/musicbank1build.bin"
MusicBank0:     incbin "data/sound/musicbank0build.bin"
