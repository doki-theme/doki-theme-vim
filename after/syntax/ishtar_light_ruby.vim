if ishtar_light#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          IshtarLightParameterItalic
hi! link rubyBlockParameter         IshtarLightParameterItalic
hi! link rubyCurlyBlock             IshtarLightKeyword
hi! link rubyGlobalVariable         IshtarLightConstants
hi! link rubyInstanceVariable       IshtarLightConstantsItalic
hi! link rubyInterpolationDelimiter IshtarLightKeyword
hi! link rubyRegexpDelimiter        IshtarLightRed
hi! link rubyStringDelimiter        IshtarLightStringColor
