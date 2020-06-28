if asuna#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    AsunaClassName
hi! link diffNewFile AsunaRed

hi! link diffAdded   AsunaClassName
hi! link diffLine    AsunaKeyColorItalic
hi! link diffRemoved AsunaRed

