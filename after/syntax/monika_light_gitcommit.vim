if monika_light#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MonikaLightClassName
hi! link diffNewFile MonikaLightRed

hi! link diffAdded   MonikaLightClassName
hi! link diffLine    MonikaLightKeyColorItalic
hi! link diffRemoved MonikaLightRed

