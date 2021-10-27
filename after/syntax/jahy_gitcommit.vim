if jahy#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    JahyClassName
hi! link diffNewFile JahyRed

hi! link diffAdded   JahyClassName
hi! link diffLine    JahyKeyColorItalic
hi! link diffRemoved JahyRed

