if zero_two_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          ZeroTwoDarkParameterItalic
hi! link rubyBlockParameter         ZeroTwoDarkParameterItalic
hi! link rubyCurlyBlock             ZeroTwoDarkKeyword
hi! link rubyGlobalVariable         ZeroTwoDarkConstants
hi! link rubyInstanceVariable       ZeroTwoDarkConstantsItalic
hi! link rubyInterpolationDelimiter ZeroTwoDarkKeyword
hi! link rubyRegexpDelimiter        ZeroTwoDarkRed
hi! link rubyStringDelimiter        ZeroTwoDarkStringColor
