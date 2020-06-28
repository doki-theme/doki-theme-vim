if {{themeName}}#should_abort('html')
    finish
endif

hi! link htmlTag         {{themeProperName}}Fg
hi! link htmlArg         {{themeProperName}}ClassNameItalic
hi! link htmlTitle       {{themeProperName}}Fg
hi! link htmlH1          {{themeProperName}}Fg
hi! link htmlSpecialChar {{themeProperName}}Constants
