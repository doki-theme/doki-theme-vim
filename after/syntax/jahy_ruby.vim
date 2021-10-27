if jahy#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          JahyParameterItalic
hi! link rubyBlockParameter         JahyParameterItalic
hi! link rubyCurlyBlock             JahyKeyword
hi! link rubyGlobalVariable         JahyConstants
hi! link rubyInstanceVariable       JahyConstantsItalic
hi! link rubyInterpolationDelimiter JahyKeyword
hi! link rubyRegexpDelimiter        JahyRed
hi! link rubyStringDelimiter        JahyStringColor
