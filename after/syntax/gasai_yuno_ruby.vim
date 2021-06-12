if gasai_yuno#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          GasaiYunoParameterItalic
hi! link rubyBlockParameter         GasaiYunoParameterItalic
hi! link rubyCurlyBlock             GasaiYunoKeyword
hi! link rubyGlobalVariable         GasaiYunoConstants
hi! link rubyInstanceVariable       GasaiYunoConstantsItalic
hi! link rubyInterpolationDelimiter GasaiYunoKeyword
hi! link rubyRegexpDelimiter        GasaiYunoRed
hi! link rubyStringDelimiter        GasaiYunoStringColor
