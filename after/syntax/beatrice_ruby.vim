if beatrice#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          BeatriceParameterItalic
hi! link rubyBlockParameter         BeatriceParameterItalic
hi! link rubyCurlyBlock             BeatriceKeyword
hi! link rubyGlobalVariable         BeatriceConstants
hi! link rubyInstanceVariable       BeatriceConstantsItalic
hi! link rubyInterpolationDelimiter BeatriceKeyword
hi! link rubyRegexpDelimiter        BeatriceRed
hi! link rubyStringDelimiter        BeatriceStringColor
