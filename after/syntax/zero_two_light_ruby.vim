if zero_two_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          ZeroTwoLightParameterItalic
hi! link rubyBlockParameter         ZeroTwoLightParameterItalic
hi! link rubyCurlyBlock             ZeroTwoLightKeyword
hi! link rubyGlobalVariable         ZeroTwoLightConstants
hi! link rubyInstanceVariable       ZeroTwoLightConstantsItalic
hi! link rubyInterpolationDelimiter ZeroTwoLightKeyword
hi! link rubyRegexpDelimiter        ZeroTwoLightRed
hi! link rubyStringDelimiter        ZeroTwoLightStringColor
