if monika_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MonikaDarkParameterItalic
hi! link rubyBlockParameter         MonikaDarkParameterItalic
hi! link rubyCurlyBlock             MonikaDarkKeyword
hi! link rubyGlobalVariable         MonikaDarkConstants
hi! link rubyInstanceVariable       MonikaDarkConstantsItalic
hi! link rubyInterpolationDelimiter MonikaDarkKeyword
hi! link rubyRegexpDelimiter        MonikaDarkRed
hi! link rubyStringDelimiter        MonikaDarkStringColor
