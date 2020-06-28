if konata#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          KonataParameterItalic
hi! link rubyBlockParameter         KonataParameterItalic
hi! link rubyCurlyBlock             KonataKeyword
hi! link rubyGlobalVariable         KonataConstants
hi! link rubyInstanceVariable       KonataConstantsItalic
hi! link rubyInterpolationDelimiter KonataKeyword
hi! link rubyRegexpDelimiter        KonataRed
hi! link rubyStringDelimiter        KonataStringColor
