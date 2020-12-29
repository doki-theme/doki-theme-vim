if asuna_dark#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    AsunaDarkClassName
hi! link diffNewFile AsunaDarkRed

hi! link diffAdded   AsunaDarkClassName
hi! link diffLine    AsunaDarkKeyColorItalic
hi! link diffRemoved AsunaDarkRed

