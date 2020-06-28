if natsuki_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          NatsukiDarkParameterItalic
hi! link rubyBlockParameter         NatsukiDarkParameterItalic
hi! link rubyCurlyBlock             NatsukiDarkKeyword
hi! link rubyGlobalVariable         NatsukiDarkConstants
hi! link rubyInstanceVariable       NatsukiDarkConstantsItalic
hi! link rubyInterpolationDelimiter NatsukiDarkKeyword
hi! link rubyRegexpDelimiter        NatsukiDarkRed
hi! link rubyStringDelimiter        NatsukiDarkStringColor
