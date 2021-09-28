if sagiri#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    SagiriClassName
hi! link diffNewFile SagiriRed

hi! link diffAdded   SagiriClassName
hi! link diffLine    SagiriKeyColorItalic
hi! link diffRemoved SagiriRed

