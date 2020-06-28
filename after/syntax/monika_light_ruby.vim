if monika_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MonikaLightParameterItalic
hi! link rubyBlockParameter         MonikaLightParameterItalic
hi! link rubyCurlyBlock             MonikaLightKeyword
hi! link rubyGlobalVariable         MonikaLightConstants
hi! link rubyInstanceVariable       MonikaLightConstantsItalic
hi! link rubyInterpolationDelimiter MonikaLightKeyword
hi! link rubyRegexpDelimiter        MonikaLightRed
hi! link rubyStringDelimiter        MonikaLightStringColor
