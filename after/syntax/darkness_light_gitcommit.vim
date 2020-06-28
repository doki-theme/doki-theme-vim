if darkness_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    DarknessLightClassName
hi! link diffNewFile DarknessLightRed

hi! link diffAdded   DarknessLightClassName
hi! link diffLine    DarknessLightKeyColorItalic
hi! link diffRemoved DarknessLightRed

