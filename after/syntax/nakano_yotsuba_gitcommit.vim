if nakano_yotsuba#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    NakanoYotsubaClassName
hi! link diffNewFile NakanoYotsubaRed

hi! link diffAdded   NakanoYotsubaClassName
hi! link diffLine    NakanoYotsubaKeyColorItalic
hi! link diffRemoved NakanoYotsubaRed

