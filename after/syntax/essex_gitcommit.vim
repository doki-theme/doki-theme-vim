if essex#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    EssexClassName
hi! link diffNewFile EssexRed

hi! link diffAdded   EssexClassName
hi! link diffLine    EssexKeyColorItalic
hi! link diffRemoved EssexRed

