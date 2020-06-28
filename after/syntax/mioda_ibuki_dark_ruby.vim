if mioda_ibuki_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          MiodaIbukiDarkParameterItalic
hi! link rubyBlockParameter         MiodaIbukiDarkParameterItalic
hi! link rubyCurlyBlock             MiodaIbukiDarkKeyword
hi! link rubyGlobalVariable         MiodaIbukiDarkConstants
hi! link rubyInstanceVariable       MiodaIbukiDarkConstantsItalic
hi! link rubyInterpolationDelimiter MiodaIbukiDarkKeyword
hi! link rubyRegexpDelimiter        MiodaIbukiDarkRed
hi! link rubyStringDelimiter        MiodaIbukiDarkStringColor
