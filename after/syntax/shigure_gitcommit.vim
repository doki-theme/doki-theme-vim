if shigure#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    ShigureClassName
hi! link diffNewFile ShigureRed

hi! link diffAdded   ShigureClassName
hi! link diffLine    ShigureKeyColorItalic
hi! link diffRemoved ShigureRed

