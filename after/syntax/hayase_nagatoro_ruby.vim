if hayase_nagatoro#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          HayaseNagatoroParameterItalic
hi! link rubyBlockParameter         HayaseNagatoroParameterItalic
hi! link rubyCurlyBlock             HayaseNagatoroKeyword
hi! link rubyGlobalVariable         HayaseNagatoroConstants
hi! link rubyInstanceVariable       HayaseNagatoroConstantsItalic
hi! link rubyInterpolationDelimiter HayaseNagatoroKeyword
hi! link rubyRegexpDelimiter        HayaseNagatoroRed
hi! link rubyStringDelimiter        HayaseNagatoroStringColor
