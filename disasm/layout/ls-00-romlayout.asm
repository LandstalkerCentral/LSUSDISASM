
; ROM LAYOUT FILE
;
; Original ROM layout results in a 2MB ROM.
; Sections can be moved to get more free space by changing declaration order and by using align directives to pad section ends until desired end offset.
; (beware : ROMs over 2MB imply to manage SRAM bankswitching first)

                include "layout\ls-01-0x000000-0x010300.asm"    ; 0x000000..0x010300 : Technical Layer, Initialization, Low Level Game Engine, To figure out and describe succinctly
                include "layout\ls-02-0x010300-0x019514.asm"    ; 0x010300..0x019514 : To figure out and describe succinctly
                include "layout\ls-03-0x019514-0x022E80.asm"    ; 0x019514..0x022E80 : To figure out and describe succinctly
                include "layout\ls-04-0x022E80-0x038600.asm"    ; 0x022E80..0x038600 : To figure out and describe succinctly
                include "layout\ls-05-0x038600-0x044010.asm"    ; 0x038600..0x044010 : To figure out and describe succinctly
                include "layout\ls-06-0x044010-0x09B000.asm"    ; 0x044010..0x09B000 : To figure out and describe succinctly
                include "layout\ls-07-0x09B000-0x0A0A00.asm"    ; 0x09B000..0x0A0A00 : To figure out and describe succinctly
                include "layout\ls-08-0x0A0A00-0x120000.asm"    ; 0x0A0A00..0x120000 : To figure out and describe succinctly
                include "layout\ls-09-0x120000-0x1A4400.asm"    ; 0x120000..0x1A4400 : To figure out and describe succinctly
                include "layout\ls-10-0x1A4400-0x1AF800.asm"    ; 0x1A4400..0x1AF800 : To figure out and describe succinctly
                include "layout\ls-11-0x1AF800-0x1E0000.asm"    ; 0x1AF800..0x1E0000 : To figure out and describe succinctly
                include "layout\ls-12-0x1E0000-0x200000.asm"    ; 0x1E0000..0x1F6000 : PCM Bank 0, PCM Bank 1, Music bank 0, Sound driver, Music Bank 1.
