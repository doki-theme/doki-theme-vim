if rias_onyx#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    RiasOnyxClassName
hi! link diffNewFile RiasOnyxRed

hi! link diffAdded   RiasOnyxClassName
hi! link diffLine    RiasOnyxKeyColorItalic
hi! link diffRemoved RiasOnyxRed

