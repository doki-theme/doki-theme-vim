if rei#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       ReiRed

" Builtin functions
hi! link perlOperator            ReiKeyColor
hi! link perlStatementFiledesc   ReiKeyColor
hi! link perlStatementFiles      ReiKeyColor
hi! link perlStatementFlow       ReiKeyColor
hi! link perlStatementHash       ReiKeyColor
hi! link perlStatementIOfunc     ReiKeyColor
hi! link perlStatementIPC        ReiKeyColor
hi! link perlStatementList       ReiKeyColor
hi! link perlStatementMisc       ReiKeyColor
hi! link perlStatementNetwork    ReiKeyColor
hi! link perlStatementNumeric    ReiKeyColor
hi! link perlStatementProc       ReiKeyColor
hi! link perlStatementPword      ReiKeyColor
hi! link perlStatementRegexp     ReiKeyColor
hi! link perlStatementScalar     ReiKeyColor
hi! link perlStatementSocket     ReiKeyColor
hi! link perlStatementTime       ReiKeyColor
hi! link perlStatementVector     ReiKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd ReiRed
endif

" Signatures
hi! link perlSignature           ReiParameterItalic
hi! link perlSubPrototype        ReiParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName ReiConstants
