if beatrice#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    BeatriceClassName
hi! link diffNewFile BeatriceRed

hi! link diffAdded   BeatriceClassName
hi! link diffLine    BeatriceKeyColorItalic
hi! link diffRemoved BeatriceRed

