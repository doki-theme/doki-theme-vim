if konata#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    KonataClassName
hi! link diffNewFile KonataRed

hi! link diffAdded   KonataClassName
hi! link diffLine    KonataKeyColorItalic
hi! link diffRemoved KonataRed

