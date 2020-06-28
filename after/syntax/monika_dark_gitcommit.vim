if monika_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MonikaDarkClassName
hi! link diffNewFile MonikaDarkRed

hi! link diffAdded   MonikaDarkClassName
hi! link diffLine    MonikaDarkKeyColorItalic
hi! link diffRemoved MonikaDarkRed

