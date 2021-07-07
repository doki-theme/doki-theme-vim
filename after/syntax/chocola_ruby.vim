if chocola#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          ChocolaParameterItalic
hi! link rubyBlockParameter         ChocolaParameterItalic
hi! link rubyCurlyBlock             ChocolaKeyword
hi! link rubyGlobalVariable         ChocolaConstants
hi! link rubyInstanceVariable       ChocolaConstantsItalic
hi! link rubyInterpolationDelimiter ChocolaKeyword
hi! link rubyRegexpDelimiter        ChocolaRed
hi! link rubyStringDelimiter        ChocolaStringColor
