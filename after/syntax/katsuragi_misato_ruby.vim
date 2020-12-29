if katsuragi_misato#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          KatsuragiMisatoParameterItalic
hi! link rubyBlockParameter         KatsuragiMisatoParameterItalic
hi! link rubyCurlyBlock             KatsuragiMisatoKeyword
hi! link rubyGlobalVariable         KatsuragiMisatoConstants
hi! link rubyInstanceVariable       KatsuragiMisatoConstantsItalic
hi! link rubyInterpolationDelimiter KatsuragiMisatoKeyword
hi! link rubyRegexpDelimiter        KatsuragiMisatoRed
hi! link rubyStringDelimiter        KatsuragiMisatoStringColor
