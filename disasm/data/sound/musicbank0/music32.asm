
; ASM FILE music32.asm :
; 0xFA96..0xFDB9 : Music 32
Music32:        db 0
		db 0
		db 0
		db 0C8h
		dw Music32_Channel9
		dw Music32_Channel9
		dw Music32_Channel9
		dw Music32_Channel9
		dw Music32_Channel9
		dw Music32_Channel9
		dw Music32_Channel9
		dw Music32_Channel9
		dw Music32_Channel9
		dw Music32_Channel9
Music32_Channel9:
		channel_end
		align 8000h
