if chocola#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    ChocolaClassName
hi! link diffNewFile ChocolaRed

hi! link diffAdded   ChocolaClassName
hi! link diffLine    ChocolaKeyColorItalic
hi! link diffRemoved ChocolaRed

