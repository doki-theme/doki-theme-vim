if sayori_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    SayoriLightClassName
hi! link diffNewFile SayoriLightRed

hi! link diffAdded   SayoriLightClassName
hi! link diffLine    SayoriLightKeyColorItalic
hi! link diffRemoved SayoriLightRed

