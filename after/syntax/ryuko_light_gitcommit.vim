if ryuko_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    RyukoLightClassName
hi! link diffNewFile RyukoLightRed

hi! link diffAdded   RyukoLightClassName
hi! link diffLine    RyukoLightKeyColorItalic
hi! link diffRemoved RyukoLightRed

