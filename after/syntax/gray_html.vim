if gray#should_abort('html')
    finish
endif

hi! link htmlTag         GrayFg
hi! link htmlArg         GrayClassNameItalic
hi! link htmlTitle       GrayFg
hi! link htmlH1          GrayFg
hi! link htmlSpecialChar GrayConstants
