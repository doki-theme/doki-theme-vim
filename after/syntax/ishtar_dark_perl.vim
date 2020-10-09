if ishtar_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       IshtarDarkRed

" Builtin functions
hi! link perlOperator            IshtarDarkKeyColor
hi! link perlStatementFiledesc   IshtarDarkKeyColor
hi! link perlStatementFiles      IshtarDarkKeyColor
hi! link perlStatementFlow       IshtarDarkKeyColor
hi! link perlStatementHash       IshtarDarkKeyColor
hi! link perlStatementIOfunc     IshtarDarkKeyColor
hi! link perlStatementIPC        IshtarDarkKeyColor
hi! link perlStatementList       IshtarDarkKeyColor
hi! link perlStatementMisc       IshtarDarkKeyColor
hi! link perlStatementNetwork    IshtarDarkKeyColor
hi! link perlStatementNumeric    IshtarDarkKeyColor
hi! link perlStatementProc       IshtarDarkKeyColor
hi! link perlStatementPword      IshtarDarkKeyColor
hi! link perlStatementRegexp     IshtarDarkKeyColor
hi! link perlStatementScalar     IshtarDarkKeyColor
hi! link perlStatementSocket     IshtarDarkKeyColor
hi! link perlStatementTime       IshtarDarkKeyColor
hi! link perlStatementVector     IshtarDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd IshtarDarkRed
endif

" Signatures
hi! link perlSignature           IshtarDarkParameterItalic
hi! link perlSubPrototype        IshtarDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName IshtarDarkConstants
