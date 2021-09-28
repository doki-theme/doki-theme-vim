if satsuki_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          SatsukiDarkParameterItalic
hi! link rubyBlockParameter         SatsukiDarkParameterItalic
hi! link rubyCurlyBlock             SatsukiDarkKeyword
hi! link rubyGlobalVariable         SatsukiDarkConstants
hi! link rubyInstanceVariable       SatsukiDarkConstantsItalic
hi! link rubyInterpolationDelimiter SatsukiDarkKeyword
hi! link rubyRegexpDelimiter        SatsukiDarkRed
hi! link rubyStringDelimiter        SatsukiDarkStringColor
