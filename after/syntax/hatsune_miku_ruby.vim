if hatsune_miku#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          HatsuneMikuParameterItalic
hi! link rubyBlockParameter         HatsuneMikuParameterItalic
hi! link rubyCurlyBlock             HatsuneMikuKeyword
hi! link rubyGlobalVariable         HatsuneMikuConstants
hi! link rubyInstanceVariable       HatsuneMikuConstantsItalic
hi! link rubyInterpolationDelimiter HatsuneMikuKeyword
hi! link rubyRegexpDelimiter        HatsuneMikuRed
hi! link rubyStringDelimiter        HatsuneMikuStringColor
