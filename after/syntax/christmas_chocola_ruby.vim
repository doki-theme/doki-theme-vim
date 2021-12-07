if christmas_chocola#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          ChristmasChocolaParameterItalic
hi! link rubyBlockParameter         ChristmasChocolaParameterItalic
hi! link rubyCurlyBlock             ChristmasChocolaKeyword
hi! link rubyGlobalVariable         ChristmasChocolaConstants
hi! link rubyInstanceVariable       ChristmasChocolaConstantsItalic
hi! link rubyInterpolationDelimiter ChristmasChocolaKeyword
hi! link rubyRegexpDelimiter        ChristmasChocolaRed
hi! link rubyStringDelimiter        ChristmasChocolaStringColor
