if sayori_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          SayoriDarkParameterItalic
hi! link rubyBlockParameter         SayoriDarkParameterItalic
hi! link rubyCurlyBlock             SayoriDarkKeyword
hi! link rubyGlobalVariable         SayoriDarkConstants
hi! link rubyInstanceVariable       SayoriDarkConstantsItalic
hi! link rubyInterpolationDelimiter SayoriDarkKeyword
hi! link rubyRegexpDelimiter        SayoriDarkRed
hi! link rubyStringDelimiter        SayoriDarkStringColor
