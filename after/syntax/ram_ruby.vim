if ram#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          RamParameterItalic
hi! link rubyBlockParameter         RamParameterItalic
hi! link rubyCurlyBlock             RamKeyword
hi! link rubyGlobalVariable         RamConstants
hi! link rubyInstanceVariable       RamConstantsItalic
hi! link rubyInterpolationDelimiter RamKeyword
hi! link rubyRegexpDelimiter        RamRed
hi! link rubyStringDelimiter        RamStringColor
