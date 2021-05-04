if nakano_nino#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          NakanoNinoParameterItalic
hi! link rubyBlockParameter         NakanoNinoParameterItalic
hi! link rubyCurlyBlock             NakanoNinoKeyword
hi! link rubyGlobalVariable         NakanoNinoConstants
hi! link rubyInstanceVariable       NakanoNinoConstantsItalic
hi! link rubyInterpolationDelimiter NakanoNinoKeyword
hi! link rubyRegexpDelimiter        NakanoNinoRed
hi! link rubyStringDelimiter        NakanoNinoStringColor
