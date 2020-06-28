if yuri_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    YuriLightClassName
hi! link diffNewFile YuriLightRed

hi! link diffAdded   YuriLightClassName
hi! link diffLine    YuriLightKeyColorItalic
hi! link diffRemoved YuriLightRed

