if cinnamon#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          CinnamonParameterItalic
hi! link rubyBlockParameter         CinnamonParameterItalic
hi! link rubyCurlyBlock             CinnamonKeyword
hi! link rubyGlobalVariable         CinnamonConstants
hi! link rubyInstanceVariable       CinnamonConstantsItalic
hi! link rubyInterpolationDelimiter CinnamonKeyword
hi! link rubyRegexpDelimiter        CinnamonRed
hi! link rubyStringDelimiter        CinnamonStringColor
