if darkness_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          DarknessDarkParameterItalic
hi! link rubyBlockParameter         DarknessDarkParameterItalic
hi! link rubyCurlyBlock             DarknessDarkKeyword
hi! link rubyGlobalVariable         DarknessDarkConstants
hi! link rubyInstanceVariable       DarknessDarkConstantsItalic
hi! link rubyInterpolationDelimiter DarknessDarkKeyword
hi! link rubyRegexpDelimiter        DarknessDarkRed
hi! link rubyStringDelimiter        DarknessDarkStringColor
