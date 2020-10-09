if ishtar_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    IshtarDarkClassName
hi! link diffNewFile IshtarDarkRed

hi! link diffAdded   IshtarDarkClassName
hi! link diffLine    IshtarDarkKeyColorItalic
hi! link diffRemoved IshtarDarkRed

