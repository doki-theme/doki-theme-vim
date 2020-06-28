if monika_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MonikaDarkRed

" Builtin functions
hi! link perlOperator            MonikaDarkKeyColor
hi! link perlStatementFiledesc   MonikaDarkKeyColor
hi! link perlStatementFiles      MonikaDarkKeyColor
hi! link perlStatementFlow       MonikaDarkKeyColor
hi! link perlStatementHash       MonikaDarkKeyColor
hi! link perlStatementIOfunc     MonikaDarkKeyColor
hi! link perlStatementIPC        MonikaDarkKeyColor
hi! link perlStatementList       MonikaDarkKeyColor
hi! link perlStatementMisc       MonikaDarkKeyColor
hi! link perlStatementNetwork    MonikaDarkKeyColor
hi! link perlStatementNumeric    MonikaDarkKeyColor
hi! link perlStatementProc       MonikaDarkKeyColor
hi! link perlStatementPword      MonikaDarkKeyColor
hi! link perlStatementRegexp     MonikaDarkKeyColor
hi! link perlStatementScalar     MonikaDarkKeyColor
hi! link perlStatementSocket     MonikaDarkKeyColor
hi! link perlStatementTime       MonikaDarkKeyColor
hi! link perlStatementVector     MonikaDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MonikaDarkRed
endif

" Signatures
hi! link perlSignature           MonikaDarkParameterItalic
hi! link perlSubPrototype        MonikaDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MonikaDarkConstants
