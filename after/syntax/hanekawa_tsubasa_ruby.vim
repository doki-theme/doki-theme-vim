if hanekawa_tsubasa#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          HanekawaTsubasaParameterItalic
hi! link rubyBlockParameter         HanekawaTsubasaParameterItalic
hi! link rubyCurlyBlock             HanekawaTsubasaKeyword
hi! link rubyGlobalVariable         HanekawaTsubasaConstants
hi! link rubyInstanceVariable       HanekawaTsubasaConstantsItalic
hi! link rubyInterpolationDelimiter HanekawaTsubasaKeyword
hi! link rubyRegexpDelimiter        HanekawaTsubasaRed
hi! link rubyStringDelimiter        HanekawaTsubasaStringColor
