if sayori_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    SayoriDarkClassName
hi! link diffNewFile SayoriDarkRed

hi! link diffAdded   SayoriDarkClassName
hi! link diffLine    SayoriDarkKeyColorItalic
hi! link diffRemoved SayoriDarkRed

