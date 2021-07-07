if coconut#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    CoconutClassName
hi! link diffNewFile CoconutRed

hi! link diffAdded   CoconutClassName
hi! link diffLine    CoconutKeyColorItalic
hi! link diffRemoved CoconutRed

