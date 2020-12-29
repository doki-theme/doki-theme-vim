if makise_kurisu#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    MakiseKurisuClassName
hi! link diffNewFile MakiseKurisuRed

hi! link diffAdded   MakiseKurisuClassName
hi! link diffLine    MakiseKurisuKeyColorItalic
hi! link diffRemoved MakiseKurisuRed

