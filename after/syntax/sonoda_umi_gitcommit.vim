if sonoda_umi#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    SonodaUmiClassName
hi! link diffNewFile SonodaUmiRed

hi! link diffAdded   SonodaUmiClassName
hi! link diffLine    SonodaUmiKeyColorItalic
hi! link diffRemoved SonodaUmiRed

