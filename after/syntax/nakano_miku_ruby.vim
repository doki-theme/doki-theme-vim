if nakano_miku#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          NakanoMikuParameterItalic
hi! link rubyBlockParameter         NakanoMikuParameterItalic
hi! link rubyCurlyBlock             NakanoMikuKeyword
hi! link rubyGlobalVariable         NakanoMikuConstants
hi! link rubyInstanceVariable       NakanoMikuConstantsItalic
hi! link rubyInterpolationDelimiter NakanoMikuKeyword
hi! link rubyRegexpDelimiter        NakanoMikuRed
hi! link rubyStringDelimiter        NakanoMikuStringColor
