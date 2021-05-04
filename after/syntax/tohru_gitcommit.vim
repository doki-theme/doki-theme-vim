if tohru#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    TohruClassName
hi! link diffNewFile TohruRed

hi! link diffAdded   TohruClassName
hi! link diffLine    TohruKeyColorItalic
hi! link diffRemoved TohruRed

