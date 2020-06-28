if mioda_ibuki_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MiodaIbukiLightClassName
hi! link diffNewFile MiodaIbukiLightRed

hi! link diffAdded   MiodaIbukiLightClassName
hi! link diffLine    MiodaIbukiLightKeyColorItalic
hi! link diffRemoved MiodaIbukiLightRed

