if astolfo#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    AstolfoClassName
hi! link diffNewFile AstolfoRed

hi! link diffAdded   AstolfoClassName
hi! link diffLine    AstolfoKeyColorItalic
hi! link diffRemoved AstolfoRed

