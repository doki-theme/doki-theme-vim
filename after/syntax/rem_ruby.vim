if rem#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          RemParameterItalic
hi! link rubyBlockParameter         RemParameterItalic
hi! link rubyCurlyBlock             RemKeyword
hi! link rubyGlobalVariable         RemConstants
hi! link rubyInstanceVariable       RemConstantsItalic
hi! link rubyInterpolationDelimiter RemKeyword
hi! link rubyRegexpDelimiter        RemRed
hi! link rubyStringDelimiter        RemStringColor
