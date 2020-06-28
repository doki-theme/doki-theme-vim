if ram#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    RamClassName
hi! link diffNewFile RamRed

hi! link diffAdded   RamClassName
hi! link diffLine    RamKeyColorItalic
hi! link diffRemoved RamRed

