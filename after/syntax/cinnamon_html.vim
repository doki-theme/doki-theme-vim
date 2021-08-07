if cinnamon#should_abort('html')
    finish
endif

hi! link htmlTag         CinnamonFg
hi! link htmlArg         CinnamonClassNameItalic
hi! link htmlTitle       CinnamonFg
hi! link htmlH1          CinnamonFg
hi! link htmlSpecialChar CinnamonConstants
