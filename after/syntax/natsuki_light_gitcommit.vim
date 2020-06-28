if natsuki_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    NatsukiLightClassName
hi! link diffNewFile NatsukiLightRed

hi! link diffAdded   NatsukiLightClassName
hi! link diffLine    NatsukiLightKeyColorItalic
hi! link diffRemoved NatsukiLightRed

