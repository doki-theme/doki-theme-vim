if maika#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MaikaParameterItalic
hi! link rubyBlockParameter         MaikaParameterItalic
hi! link rubyCurlyBlock             MaikaKeyword
hi! link rubyGlobalVariable         MaikaConstants
hi! link rubyInstanceVariable       MaikaConstantsItalic
hi! link rubyInterpolationDelimiter MaikaKeyword
hi! link rubyRegexpDelimiter        MaikaRed
hi! link rubyStringDelimiter        MaikaStringColor
