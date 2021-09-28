if sagiri#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          SagiriParameterItalic
hi! link rubyBlockParameter         SagiriParameterItalic
hi! link rubyCurlyBlock             SagiriKeyword
hi! link rubyGlobalVariable         SagiriConstants
hi! link rubyInstanceVariable       SagiriConstantsItalic
hi! link rubyInterpolationDelimiter SagiriKeyword
hi! link rubyRegexpDelimiter        SagiriRed
hi! link rubyStringDelimiter        SagiriStringColor
