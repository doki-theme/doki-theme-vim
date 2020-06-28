if rias#should_abort('html')
    finish
endif

hi! link htmlTag         RiasFg
hi! link htmlArg         RiasClassNameItalic
hi! link htmlTitle       RiasFg
hi! link htmlH1          RiasFg
hi! link htmlSpecialChar RiasConstants
