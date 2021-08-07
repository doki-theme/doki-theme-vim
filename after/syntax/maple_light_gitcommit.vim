if maple_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MapleLightClassName
hi! link diffNewFile MapleLightRed

hi! link diffAdded   MapleLightClassName
hi! link diffLine    MapleLightKeyColorItalic
hi! link diffRemoved MapleLightRed

