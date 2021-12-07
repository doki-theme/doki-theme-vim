if essex#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          EssexParameterItalic
hi! link rubyBlockParameter         EssexParameterItalic
hi! link rubyCurlyBlock             EssexKeyword
hi! link rubyGlobalVariable         EssexConstants
hi! link rubyInstanceVariable       EssexConstantsItalic
hi! link rubyInterpolationDelimiter EssexKeyword
hi! link rubyRegexpDelimiter        EssexRed
hi! link rubyStringDelimiter        EssexStringColor
