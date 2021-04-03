if maika#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MaikaClassName
hi! link diffNewFile MaikaRed

hi! link diffAdded   MaikaClassName
hi! link diffLine    MaikaKeyColorItalic
hi! link diffRemoved MaikaRed

