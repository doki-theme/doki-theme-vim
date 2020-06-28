if megumin#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MeguminClassName
hi! link diffNewFile MeguminRed

hi! link diffAdded   MeguminClassName
hi! link diffLine    MeguminKeyColorItalic
hi! link diffRemoved MeguminRed

