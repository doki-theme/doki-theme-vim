if rias#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    RiasClassName
hi! link diffNewFile RiasRed

hi! link diffAdded   RiasClassName
hi! link diffLine    RiasKeyColorItalic
hi! link diffRemoved RiasRed

