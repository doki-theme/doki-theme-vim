if shigure#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          ShigureParameterItalic
hi! link rubyBlockParameter         ShigureParameterItalic
hi! link rubyCurlyBlock             ShigureKeyword
hi! link rubyGlobalVariable         ShigureConstants
hi! link rubyInstanceVariable       ShigureConstantsItalic
hi! link rubyInterpolationDelimiter ShigureKeyword
hi! link rubyRegexpDelimiter        ShigureRed
hi! link rubyStringDelimiter        ShigureStringColor
