if azuki#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    AzukiClassName
hi! link diffNewFile AzukiRed

hi! link diffAdded   AzukiClassName
hi! link diffLine    AzukiKeyColorItalic
hi! link diffRemoved AzukiRed

