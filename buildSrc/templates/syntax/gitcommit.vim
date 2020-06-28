if {{themeName}}#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    {{themeProperName}}ClassName
hi! link diffNewFile {{themeProperName}}Red

hi! link diffAdded   {{themeProperName}}ClassName
hi! link diffLine    {{themeProperName}}KeyColorItalic
hi! link diffRemoved {{themeProperName}}Red

