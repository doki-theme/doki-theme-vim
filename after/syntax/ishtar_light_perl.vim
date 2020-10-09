if ishtar_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       IshtarLightRed

" Builtin functions
hi! link perlOperator            IshtarLightKeyColor
hi! link perlStatementFiledesc   IshtarLightKeyColor
hi! link perlStatementFiles      IshtarLightKeyColor
hi! link perlStatementFlow       IshtarLightKeyColor
hi! link perlStatementHash       IshtarLightKeyColor
hi! link perlStatementIOfunc     IshtarLightKeyColor
hi! link perlStatementIPC        IshtarLightKeyColor
hi! link perlStatementList       IshtarLightKeyColor
hi! link perlStatementMisc       IshtarLightKeyColor
hi! link perlStatementNetwork    IshtarLightKeyColor
hi! link perlStatementNumeric    IshtarLightKeyColor
hi! link perlStatementProc       IshtarLightKeyColor
hi! link perlStatementPword      IshtarLightKeyColor
hi! link perlStatementRegexp     IshtarLightKeyColor
hi! link perlStatementScalar     IshtarLightKeyColor
hi! link perlStatementSocket     IshtarLightKeyColor
hi! link perlStatementTime       IshtarLightKeyColor
hi! link perlStatementVector     IshtarLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd IshtarLightRed
endif

" Signatures
hi! link perlSignature           IshtarLightParameterItalic
hi! link perlSubPrototype        IshtarLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName IshtarLightConstants
