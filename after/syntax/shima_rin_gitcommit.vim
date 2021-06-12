if shima_rin#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    ShimaRinClassName
hi! link diffNewFile ShimaRinRed

hi! link diffAdded   ShimaRinClassName
hi! link diffLine    ShimaRinKeyColorItalic
hi! link diffRemoved ShimaRinRed

