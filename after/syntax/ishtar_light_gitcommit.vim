if ishtar_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    IshtarLightClassName
hi! link diffNewFile IshtarLightRed

hi! link diffAdded   IshtarLightClassName
hi! link diffLine    IshtarLightKeyColorItalic
hi! link diffRemoved IshtarLightRed

