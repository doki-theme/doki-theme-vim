if makise_kurisu#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MakiseKurisuParameterItalic
hi! link rubyBlockParameter         MakiseKurisuParameterItalic
hi! link rubyCurlyBlock             MakiseKurisuKeyword
hi! link rubyGlobalVariable         MakiseKurisuConstants
hi! link rubyInstanceVariable       MakiseKurisuConstantsItalic
hi! link rubyInterpolationDelimiter MakiseKurisuKeyword
hi! link rubyRegexpDelimiter        MakiseKurisuRed
hi! link rubyStringDelimiter        MakiseKurisuStringColor
