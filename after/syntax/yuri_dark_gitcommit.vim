if yuri_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    YuriDarkClassName
hi! link diffNewFile YuriDarkRed

hi! link diffAdded   YuriDarkClassName
hi! link diffLine    YuriDarkKeyColorItalic
hi! link diffRemoved YuriDarkRed

