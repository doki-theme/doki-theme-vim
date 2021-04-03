if rias_onyx#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          RiasOnyxParameterItalic
hi! link rubyBlockParameter         RiasOnyxParameterItalic
hi! link rubyCurlyBlock             RiasOnyxKeyword
hi! link rubyGlobalVariable         RiasOnyxConstants
hi! link rubyInstanceVariable       RiasOnyxConstantsItalic
hi! link rubyInterpolationDelimiter RiasOnyxKeyword
hi! link rubyRegexpDelimiter        RiasOnyxRed
hi! link rubyStringDelimiter        RiasOnyxStringColor
