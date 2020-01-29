
; GAME SECTION 11 :
; 0x1E0000..0x1F6000 : PCM Banks, Music bank 0
; FREE SPACE : 696 bytes.


PCMBank0:       incbin "data/sound/pcmbank0.bin"
PCMBank1:       incbin "data/sound/pcmbank1.bin"
MusicBank0:     incbin "data/sound/musicbank0.bin"
                align $1F6000
