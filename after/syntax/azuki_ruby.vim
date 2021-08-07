if azuki#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          AzukiParameterItalic
hi! link rubyBlockParameter         AzukiParameterItalic
hi! link rubyCurlyBlock             AzukiKeyword
hi! link rubyGlobalVariable         AzukiConstants
hi! link rubyInstanceVariable       AzukiConstantsItalic
hi! link rubyInterpolationDelimiter AzukiKeyword
hi! link rubyRegexpDelimiter        AzukiRed
hi! link rubyStringDelimiter        AzukiStringColor
