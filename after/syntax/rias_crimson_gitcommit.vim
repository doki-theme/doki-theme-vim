if rias_crimson#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    RiasCrimsonClassName
hi! link diffNewFile RiasCrimsonRed

hi! link diffAdded   RiasCrimsonClassName
hi! link diffLine    RiasCrimsonKeyColorItalic
hi! link diffRemoved RiasCrimsonRed

