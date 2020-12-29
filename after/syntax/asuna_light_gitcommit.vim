if asuna_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    AsunaLightClassName
hi! link diffNewFile AsunaLightRed

hi! link diffAdded   AsunaLightClassName
hi! link diffLine    AsunaLightKeyColorItalic
hi! link diffRemoved AsunaLightRed

