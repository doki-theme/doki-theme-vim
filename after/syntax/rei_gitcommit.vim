if rei#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    ReiClassName
hi! link diffNewFile ReiRed

hi! link diffAdded   ReiClassName
hi! link diffLine    ReiKeyColorItalic
hi! link diffRemoved ReiRed

