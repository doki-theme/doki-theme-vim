if asuna_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          AsunaDarkParameterItalic
hi! link rubyBlockParameter         AsunaDarkParameterItalic
hi! link rubyCurlyBlock             AsunaDarkKeyword
hi! link rubyGlobalVariable         AsunaDarkConstants
hi! link rubyInstanceVariable       AsunaDarkConstantsItalic
hi! link rubyInterpolationDelimiter AsunaDarkKeyword
hi! link rubyRegexpDelimiter        AsunaDarkRed
hi! link rubyStringDelimiter        AsunaDarkStringColor
