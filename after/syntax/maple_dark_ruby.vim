if maple_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MapleDarkParameterItalic
hi! link rubyBlockParameter         MapleDarkParameterItalic
hi! link rubyCurlyBlock             MapleDarkKeyword
hi! link rubyGlobalVariable         MapleDarkConstants
hi! link rubyInstanceVariable       MapleDarkConstantsItalic
hi! link rubyInterpolationDelimiter MapleDarkKeyword
hi! link rubyRegexpDelimiter        MapleDarkRed
hi! link rubyStringDelimiter        MapleDarkStringColor
