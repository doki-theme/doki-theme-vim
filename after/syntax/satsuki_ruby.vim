if satsuki#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          SatsukiParameterItalic
hi! link rubyBlockParameter         SatsukiParameterItalic
hi! link rubyCurlyBlock             SatsukiKeyword
hi! link rubyGlobalVariable         SatsukiConstants
hi! link rubyInstanceVariable       SatsukiConstantsItalic
hi! link rubyInterpolationDelimiter SatsukiKeyword
hi! link rubyRegexpDelimiter        SatsukiRed
hi! link rubyStringDelimiter        SatsukiStringColor
