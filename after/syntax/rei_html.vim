if rei#should_abort('html')
    finish
endif

hi! link htmlTag         ReiFg
hi! link htmlArg         ReiClassNameItalic
hi! link htmlTitle       ReiFg
hi! link htmlH1          ReiFg
hi! link htmlSpecialChar ReiConstants
