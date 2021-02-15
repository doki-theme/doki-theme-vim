if mai_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MaiDarkParameterItalic
hi! link rubyBlockParameter         MaiDarkParameterItalic
hi! link rubyCurlyBlock             MaiDarkKeyword
hi! link rubyGlobalVariable         MaiDarkConstants
hi! link rubyInstanceVariable       MaiDarkConstantsItalic
hi! link rubyInterpolationDelimiter MaiDarkKeyword
hi! link rubyRegexpDelimiter        MaiDarkRed
hi! link rubyStringDelimiter        MaiDarkStringColor
