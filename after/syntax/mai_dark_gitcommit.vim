if mai_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MaiDarkClassName
hi! link diffNewFile MaiDarkRed

hi! link diffAdded   MaiDarkClassName
hi! link diffLine    MaiDarkKeyColorItalic
hi! link diffRemoved MaiDarkRed

