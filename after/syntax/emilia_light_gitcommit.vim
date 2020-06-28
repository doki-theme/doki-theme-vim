if emilia_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    EmiliaLightClassName
hi! link diffNewFile EmiliaLightRed

hi! link diffAdded   EmiliaLightClassName
hi! link diffLine    EmiliaLightKeyColorItalic
hi! link diffRemoved EmiliaLightRed

