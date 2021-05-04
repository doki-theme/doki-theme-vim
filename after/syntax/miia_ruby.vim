if miia#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MiiaParameterItalic
hi! link rubyBlockParameter         MiiaParameterItalic
hi! link rubyCurlyBlock             MiiaKeyword
hi! link rubyGlobalVariable         MiiaConstants
hi! link rubyInstanceVariable       MiiaConstantsItalic
hi! link rubyInterpolationDelimiter MiiaKeyword
hi! link rubyRegexpDelimiter        MiiaRed
hi! link rubyStringDelimiter        MiiaStringColor
