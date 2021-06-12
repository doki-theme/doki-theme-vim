if shima_rin#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          ShimaRinParameterItalic
hi! link rubyBlockParameter         ShimaRinParameterItalic
hi! link rubyCurlyBlock             ShimaRinKeyword
hi! link rubyGlobalVariable         ShimaRinConstants
hi! link rubyInstanceVariable       ShimaRinConstantsItalic
hi! link rubyInterpolationDelimiter ShimaRinKeyword
hi! link rubyRegexpDelimiter        ShimaRinRed
hi! link rubyStringDelimiter        ShimaRinStringColor
