
; ASM FILE music64.asm :
; 0xFA96..0xFDB9 : Music 64
Music_64:       db 0
		db 0
		db 0
		db 0C8h
		dw Music_64_Channel_9
		dw Music_64_Channel_9
		dw Music_64_Channel_9
		dw Music_64_Channel_9
		dw Music_64_Channel_9
		dw Music_64_Channel_9
		dw Music_64_Channel_9
		dw Music_64_Channel_9
		dw Music_64_Channel_9
		dw Music_64_Channel_9
Music_64_Channel_9:
		channel_end
