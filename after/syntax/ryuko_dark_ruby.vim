if ryuko_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          RyukoDarkParameterItalic
hi! link rubyBlockParameter         RyukoDarkParameterItalic
hi! link rubyCurlyBlock             RyukoDarkKeyword
hi! link rubyGlobalVariable         RyukoDarkConstants
hi! link rubyInstanceVariable       RyukoDarkConstantsItalic
hi! link rubyInterpolationDelimiter RyukoDarkKeyword
hi! link rubyRegexpDelimiter        RyukoDarkRed
hi! link rubyStringDelimiter        RyukoDarkStringColor
