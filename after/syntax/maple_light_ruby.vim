if maple_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MapleLightParameterItalic
hi! link rubyBlockParameter         MapleLightParameterItalic
hi! link rubyCurlyBlock             MapleLightKeyword
hi! link rubyGlobalVariable         MapleLightConstants
hi! link rubyInstanceVariable       MapleLightConstantsItalic
hi! link rubyInterpolationDelimiter MapleLightKeyword
hi! link rubyRegexpDelimiter        MapleLightRed
hi! link rubyStringDelimiter        MapleLightStringColor
