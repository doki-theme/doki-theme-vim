if nakano_miku#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    NakanoMikuClassName
hi! link diffNewFile NakanoMikuRed

hi! link diffAdded   NakanoMikuClassName
hi! link diffLine    NakanoMikuKeyColorItalic
hi! link diffRemoved NakanoMikuRed

