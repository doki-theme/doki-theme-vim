if shigure#should_abort('html')
    finish
endif

hi! link htmlTag         ShigureFg
hi! link htmlArg         ShigureClassNameItalic
hi! link htmlTitle       ShigureFg
hi! link htmlH1          ShigureFg
hi! link htmlSpecialChar ShigureConstants
