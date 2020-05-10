
; ASM FILE music64.asm :
; 0xDD2D..0xDD48 : Music 64
Music64:        db 0
		db 0
		db 0
		db 0C8h
		dw Music64_Channel9
		dw Music64_Channel9
		dw Music64_Channel9
		dw Music64_Channel9
		dw Music64_Channel9
		dw Music64_Channel9
		dw Music64_Channel9
		dw Music64_Channel9
		dw Music64_Channel9
		dw Music64_Channel9
Music64_Channel9:
		channel_end
