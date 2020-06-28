if rem#should_abort('html')
    finish
endif

hi! link htmlTag         RemFg
hi! link htmlArg         RemClassNameItalic
hi! link htmlTitle       RemFg
hi! link htmlH1          RemFg
hi! link htmlSpecialChar RemConstants
