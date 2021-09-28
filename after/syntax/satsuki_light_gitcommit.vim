if satsuki_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    SatsukiLightClassName
hi! link diffNewFile SatsukiLightRed

hi! link diffAdded   SatsukiLightClassName
hi! link diffLine    SatsukiLightKeyColorItalic
hi! link diffRemoved SatsukiLightRed

