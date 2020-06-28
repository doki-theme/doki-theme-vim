if natsuki_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    NatsukiDarkClassName
hi! link diffNewFile NatsukiDarkRed

hi! link diffAdded   NatsukiDarkClassName
hi! link diffLine    NatsukiDarkKeyColorItalic
hi! link diffRemoved NatsukiDarkRed

