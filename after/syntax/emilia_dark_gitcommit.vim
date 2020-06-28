if emilia_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    EmiliaDarkClassName
hi! link diffNewFile EmiliaDarkRed

hi! link diffAdded   EmiliaDarkClassName
hi! link diffLine    EmiliaDarkKeyColorItalic
hi! link diffRemoved EmiliaDarkRed

