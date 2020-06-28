if ryuko#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    RyukoClassName
hi! link diffNewFile RyukoRed

hi! link diffAdded   RyukoClassName
hi! link diffLine    RyukoKeyColorItalic
hi! link diffRemoved RyukoRed

