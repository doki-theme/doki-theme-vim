if kanna#should_abort('html')
    finish
endif

hi! link htmlTag         KannaFg
hi! link htmlArg         KannaClassNameItalic
hi! link htmlTitle       KannaFg
hi! link htmlH1          KannaFg
hi! link htmlSpecialChar KannaConstants
