if azuki#should_abort('html')
    finish
endif

hi! link htmlTag         AzukiFg
hi! link htmlArg         AzukiClassNameItalic
hi! link htmlTitle       AzukiFg
hi! link htmlH1          AzukiFg
hi! link htmlSpecialChar AzukiConstants
