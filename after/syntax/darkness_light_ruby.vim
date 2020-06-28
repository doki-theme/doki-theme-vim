if darkness_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          DarknessLightParameterItalic
hi! link rubyBlockParameter         DarknessLightParameterItalic
hi! link rubyCurlyBlock             DarknessLightKeyword
hi! link rubyGlobalVariable         DarknessLightConstants
hi! link rubyInstanceVariable       DarknessLightConstantsItalic
hi! link rubyInterpolationDelimiter DarknessLightKeyword
hi! link rubyRegexpDelimiter        DarknessLightRed
hi! link rubyStringDelimiter        DarknessLightStringColor
