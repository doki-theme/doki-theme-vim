if vanilla#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    VanillaClassName
hi! link diffNewFile VanillaRed

hi! link diffAdded   VanillaClassName
hi! link diffLine    VanillaKeyColorItalic
hi! link diffRemoved VanillaRed

