if emilia_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          EmiliaDarkParameterItalic
hi! link rubyBlockParameter         EmiliaDarkParameterItalic
hi! link rubyCurlyBlock             EmiliaDarkKeyword
hi! link rubyGlobalVariable         EmiliaDarkConstants
hi! link rubyInstanceVariable       EmiliaDarkConstantsItalic
hi! link rubyInterpolationDelimiter EmiliaDarkKeyword
hi! link rubyRegexpDelimiter        EmiliaDarkRed
hi! link rubyStringDelimiter        EmiliaDarkStringColor
