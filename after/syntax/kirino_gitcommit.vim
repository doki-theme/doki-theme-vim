if kirino#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    KirinoClassName
hi! link diffNewFile KirinoRed

hi! link diffAdded   KirinoClassName
hi! link diffLine    KirinoKeyColorItalic
hi! link diffRemoved KirinoRed

