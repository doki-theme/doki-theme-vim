if aqua#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    AquaClassName
hi! link diffNewFile AquaRed

hi! link diffAdded   AquaClassName
hi! link diffLine    AquaKeyColorItalic
hi! link diffRemoved AquaRed

