if ryuko_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    RyukoDarkClassName
hi! link diffNewFile RyukoDarkRed

hi! link diffAdded   RyukoDarkClassName
hi! link diffLine    RyukoDarkKeyColorItalic
hi! link diffRemoved RyukoDarkRed

