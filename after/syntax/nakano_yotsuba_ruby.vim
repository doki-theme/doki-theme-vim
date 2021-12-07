if nakano_yotsuba#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          NakanoYotsubaParameterItalic
hi! link rubyBlockParameter         NakanoYotsubaParameterItalic
hi! link rubyCurlyBlock             NakanoYotsubaKeyword
hi! link rubyGlobalVariable         NakanoYotsubaConstants
hi! link rubyInstanceVariable       NakanoYotsubaConstantsItalic
hi! link rubyInterpolationDelimiter NakanoYotsubaKeyword
hi! link rubyRegexpDelimiter        NakanoYotsubaRed
hi! link rubyStringDelimiter        NakanoYotsubaStringColor
