if satsuki#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    SatsukiClassName
hi! link diffNewFile SatsukiRed

hi! link diffAdded   SatsukiClassName
hi! link diffLine    SatsukiKeyColorItalic
hi! link diffRemoved SatsukiRed

