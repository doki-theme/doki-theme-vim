if mai_light#should_abort('html')
    finish
endif

hi! link htmlTag         MaiLightFg
hi! link htmlArg         MaiLightClassNameItalic
hi! link htmlTitle       MaiLightFg
hi! link htmlH1          MaiLightFg
hi! link htmlSpecialChar MaiLightConstants
