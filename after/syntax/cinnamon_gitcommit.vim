if cinnamon#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    CinnamonClassName
hi! link diffNewFile CinnamonRed

hi! link diffAdded   CinnamonClassName
hi! link diffLine    CinnamonKeyColorItalic
hi! link diffRemoved CinnamonRed

