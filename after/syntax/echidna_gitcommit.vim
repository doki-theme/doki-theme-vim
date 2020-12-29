if echidna#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    EchidnaClassName
hi! link diffNewFile EchidnaRed

hi! link diffAdded   EchidnaClassName
hi! link diffLine    EchidnaKeyColorItalic
hi! link diffRemoved EchidnaRed

