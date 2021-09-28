if kirino#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          KirinoParameterItalic
hi! link rubyBlockParameter         KirinoParameterItalic
hi! link rubyCurlyBlock             KirinoKeyword
hi! link rubyGlobalVariable         KirinoConstants
hi! link rubyInstanceVariable       KirinoConstantsItalic
hi! link rubyInterpolationDelimiter KirinoKeyword
hi! link rubyRegexpDelimiter        KirinoRed
hi! link rubyStringDelimiter        KirinoStringColor
