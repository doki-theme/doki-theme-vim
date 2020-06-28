if mioda_ibuki_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MiodaIbukiLightParameterItalic
hi! link rubyBlockParameter         MiodaIbukiLightParameterItalic
hi! link rubyCurlyBlock             MiodaIbukiLightKeyword
hi! link rubyGlobalVariable         MiodaIbukiLightConstants
hi! link rubyInstanceVariable       MiodaIbukiLightConstantsItalic
hi! link rubyInterpolationDelimiter MiodaIbukiLightKeyword
hi! link rubyRegexpDelimiter        MiodaIbukiLightRed
hi! link rubyStringDelimiter        MiodaIbukiLightStringColor
