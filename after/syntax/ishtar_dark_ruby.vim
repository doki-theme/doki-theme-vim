if ishtar_dark#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          IshtarDarkParameterItalic
hi! link rubyBlockParameter         IshtarDarkParameterItalic
hi! link rubyCurlyBlock             IshtarDarkKeyword
hi! link rubyGlobalVariable         IshtarDarkConstants
hi! link rubyInstanceVariable       IshtarDarkConstantsItalic
hi! link rubyInterpolationDelimiter IshtarDarkKeyword
hi! link rubyRegexpDelimiter        IshtarDarkRed
hi! link rubyStringDelimiter        IshtarDarkStringColor
