if astolfo#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          AstolfoParameterItalic
hi! link rubyBlockParameter         AstolfoParameterItalic
hi! link rubyCurlyBlock             AstolfoKeyword
hi! link rubyGlobalVariable         AstolfoConstants
hi! link rubyInstanceVariable       AstolfoConstantsItalic
hi! link rubyInterpolationDelimiter AstolfoKeyword
hi! link rubyRegexpDelimiter        AstolfoRed
hi! link rubyStringDelimiter        AstolfoStringColor
