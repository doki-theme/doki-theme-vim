if gray#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          GrayParameterItalic
hi! link rubyBlockParameter         GrayParameterItalic
hi! link rubyCurlyBlock             GrayKeyword
hi! link rubyGlobalVariable         GrayConstants
hi! link rubyInstanceVariable       GrayConstantsItalic
hi! link rubyInterpolationDelimiter GrayKeyword
hi! link rubyRegexpDelimiter        GrayRed
hi! link rubyStringDelimiter        GrayStringColor
