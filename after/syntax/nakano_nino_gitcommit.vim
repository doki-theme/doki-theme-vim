if nakano_nino#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    NakanoNinoClassName
hi! link diffNewFile NakanoNinoRed

hi! link diffAdded   NakanoNinoClassName
hi! link diffLine    NakanoNinoKeyColorItalic
hi! link diffRemoved NakanoNinoRed

