if mai_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MaiLightClassName
hi! link diffNewFile MaiLightRed

hi! link diffAdded   MaiLightClassName
hi! link diffLine    MaiLightKeyColorItalic
hi! link diffRemoved MaiLightRed

