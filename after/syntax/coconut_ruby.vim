if coconut#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          CoconutParameterItalic
hi! link rubyBlockParameter         CoconutParameterItalic
hi! link rubyCurlyBlock             CoconutKeyword
hi! link rubyGlobalVariable         CoconutConstants
hi! link rubyInstanceVariable       CoconutConstantsItalic
hi! link rubyInterpolationDelimiter CoconutKeyword
hi! link rubyRegexpDelimiter        CoconutRed
hi! link rubyStringDelimiter        CoconutStringColor
