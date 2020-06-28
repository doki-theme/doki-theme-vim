if yuri_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          YuriLightParameterItalic
hi! link rubyBlockParameter         YuriLightParameterItalic
hi! link rubyCurlyBlock             YuriLightKeyword
hi! link rubyGlobalVariable         YuriLightConstants
hi! link rubyInstanceVariable       YuriLightConstantsItalic
hi! link rubyInterpolationDelimiter YuriLightKeyword
hi! link rubyRegexpDelimiter        YuriLightRed
hi! link rubyStringDelimiter        YuriLightStringColor
