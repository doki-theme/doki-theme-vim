if miia#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MiiaClassName
hi! link diffNewFile MiiaRed

hi! link diffAdded   MiiaClassName
hi! link diffLine    MiiaKeyColorItalic
hi! link diffRemoved MiiaRed

