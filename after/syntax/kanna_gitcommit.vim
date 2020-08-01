if kanna#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    KannaClassName
hi! link diffNewFile KannaRed

hi! link diffAdded   KannaClassName
hi! link diffLine    KannaKeyColorItalic
hi! link diffRemoved KannaRed

