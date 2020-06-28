if yuri_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          YuriDarkParameterItalic
hi! link rubyBlockParameter         YuriDarkParameterItalic
hi! link rubyCurlyBlock             YuriDarkKeyword
hi! link rubyGlobalVariable         YuriDarkConstants
hi! link rubyInstanceVariable       YuriDarkConstantsItalic
hi! link rubyInterpolationDelimiter YuriDarkKeyword
hi! link rubyRegexpDelimiter        YuriDarkRed
hi! link rubyStringDelimiter        YuriDarkStringColor
