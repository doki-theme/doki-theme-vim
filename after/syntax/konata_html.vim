if konata#should_abort('html')
    finish
endif

hi! link htmlTag         KonataFg
hi! link htmlArg         KonataClassNameItalic
hi! link htmlTitle       KonataFg
hi! link htmlH1          KonataFg
hi! link htmlSpecialChar KonataConstants
