if vanilla#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          VanillaParameterItalic
hi! link rubyBlockParameter         VanillaParameterItalic
hi! link rubyCurlyBlock             VanillaKeyword
hi! link rubyGlobalVariable         VanillaConstants
hi! link rubyInstanceVariable       VanillaConstantsItalic
hi! link rubyInterpolationDelimiter VanillaKeyword
hi! link rubyRegexpDelimiter        VanillaRed
hi! link rubyStringDelimiter        VanillaStringColor
