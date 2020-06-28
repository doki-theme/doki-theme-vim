if darkness_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    DarknessDarkClassName
hi! link diffNewFile DarknessDarkRed

hi! link diffAdded   DarknessDarkClassName
hi! link diffLine    DarknessDarkKeyColorItalic
hi! link diffRemoved DarknessDarkRed

