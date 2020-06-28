if rem#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    RemClassName
hi! link diffNewFile RemRed

hi! link diffAdded   RemClassName
hi! link diffLine    RemKeyColorItalic
hi! link diffRemoved RemRed

