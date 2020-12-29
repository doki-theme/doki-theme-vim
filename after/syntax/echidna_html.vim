if echidna#should_abort('html')
    finish
endif

hi! link htmlTag         EchidnaFg
hi! link htmlArg         EchidnaClassNameItalic
hi! link htmlTitle       EchidnaFg
hi! link htmlH1          EchidnaFg
hi! link htmlSpecialChar EchidnaConstants
