if tohsaka_rin#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          TohsakaRinParameterItalic
hi! link rubyBlockParameter         TohsakaRinParameterItalic
hi! link rubyCurlyBlock             TohsakaRinKeyword
hi! link rubyGlobalVariable         TohsakaRinConstants
hi! link rubyInstanceVariable       TohsakaRinConstantsItalic
hi! link rubyInterpolationDelimiter TohsakaRinKeyword
hi! link rubyRegexpDelimiter        TohsakaRinRed
hi! link rubyStringDelimiter        TohsakaRinStringColor
