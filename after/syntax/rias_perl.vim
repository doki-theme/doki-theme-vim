if rias#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       RiasRed

" Builtin functions
hi! link perlOperator            RiasKeyColor
hi! link perlStatementFiledesc   RiasKeyColor
hi! link perlStatementFiles      RiasKeyColor
hi! link perlStatementFlow       RiasKeyColor
hi! link perlStatementHash       RiasKeyColor
hi! link perlStatementIOfunc     RiasKeyColor
hi! link perlStatementIPC        RiasKeyColor
hi! link perlStatementList       RiasKeyColor
hi! link perlStatementMisc       RiasKeyColor
hi! link perlStatementNetwork    RiasKeyColor
hi! link perlStatementNumeric    RiasKeyColor
hi! link perlStatementProc       RiasKeyColor
hi! link perlStatementPword      RiasKeyColor
hi! link perlStatementRegexp     RiasKeyColor
hi! link perlStatementScalar     RiasKeyColor
hi! link perlStatementSocket     RiasKeyColor
hi! link perlStatementTime       RiasKeyColor
hi! link perlStatementVector     RiasKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd RiasRed
endif

" Signatures
hi! link perlSignature           RiasParameterItalic
hi! link perlSubPrototype        RiasParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName RiasConstants
