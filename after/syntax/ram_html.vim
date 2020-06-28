if ram#should_abort('html')
    finish
endif

hi! link htmlTag         RamFg
hi! link htmlArg         RamClassNameItalic
hi! link htmlTitle       RamFg
hi! link htmlH1          RamFg
hi! link htmlSpecialChar RamConstants
