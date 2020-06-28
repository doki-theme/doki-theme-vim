if megumin#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MeguminParameterItalic
hi! link rubyBlockParameter         MeguminParameterItalic
hi! link rubyCurlyBlock             MeguminKeyword
hi! link rubyGlobalVariable         MeguminConstants
hi! link rubyInstanceVariable       MeguminConstantsItalic
hi! link rubyInterpolationDelimiter MeguminKeyword
hi! link rubyRegexpDelimiter        MeguminRed
hi! link rubyStringDelimiter        MeguminStringColor
