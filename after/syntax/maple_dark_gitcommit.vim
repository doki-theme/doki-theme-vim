if maple_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MapleDarkClassName
hi! link diffNewFile MapleDarkRed

hi! link diffAdded   MapleDarkClassName
hi! link diffLine    MapleDarkKeyColorItalic
hi! link diffRemoved MapleDarkRed

