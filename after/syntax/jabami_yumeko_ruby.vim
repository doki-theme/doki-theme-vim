if jabami_yumeko#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          JabamiYumekoParameterItalic
hi! link rubyBlockParameter         JabamiYumekoParameterItalic
hi! link rubyCurlyBlock             JabamiYumekoKeyword
hi! link rubyGlobalVariable         JabamiYumekoConstants
hi! link rubyInstanceVariable       JabamiYumekoConstantsItalic
hi! link rubyInterpolationDelimiter JabamiYumekoKeyword
hi! link rubyRegexpDelimiter        JabamiYumekoRed
hi! link rubyStringDelimiter        JabamiYumekoStringColor
