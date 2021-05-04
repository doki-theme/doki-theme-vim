if gray#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    GrayClassName
hi! link diffNewFile GrayRed

hi! link diffAdded   GrayClassName
hi! link diffLine    GrayKeyColorItalic
hi! link diffRemoved GrayRed

