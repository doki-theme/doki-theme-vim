if coconut#should_abort('html')
    finish
endif

hi! link htmlTag         CoconutFg
hi! link htmlArg         CoconutClassNameItalic
hi! link htmlTitle       CoconutFg
hi! link htmlH1          CoconutFg
hi! link htmlSpecialChar CoconutConstants
