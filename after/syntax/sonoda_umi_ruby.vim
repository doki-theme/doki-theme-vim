if sonoda_umi#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          SonodaUmiParameterItalic
hi! link rubyBlockParameter         SonodaUmiParameterItalic
hi! link rubyCurlyBlock             SonodaUmiKeyword
hi! link rubyGlobalVariable         SonodaUmiConstants
hi! link rubyInstanceVariable       SonodaUmiConstantsItalic
hi! link rubyInterpolationDelimiter SonodaUmiKeyword
hi! link rubyRegexpDelimiter        SonodaUmiRed
hi! link rubyStringDelimiter        SonodaUmiStringColor
