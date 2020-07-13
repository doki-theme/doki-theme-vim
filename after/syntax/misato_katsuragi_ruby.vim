if misato_katsuragi#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MisatoKatsuragiParameterItalic
hi! link rubyBlockParameter         MisatoKatsuragiParameterItalic
hi! link rubyCurlyBlock             MisatoKatsuragiKeyword
hi! link rubyGlobalVariable         MisatoKatsuragiConstants
hi! link rubyInstanceVariable       MisatoKatsuragiConstantsItalic
hi! link rubyInterpolationDelimiter MisatoKatsuragiKeyword
hi! link rubyRegexpDelimiter        MisatoKatsuragiRed
hi! link rubyStringDelimiter        MisatoKatsuragiStringColor
