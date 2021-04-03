if rias_onyx#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       RiasOnyxRed

" Builtin functions
hi! link perlOperator            RiasOnyxKeyColor
hi! link perlStatementFiledesc   RiasOnyxKeyColor
hi! link perlStatementFiles      RiasOnyxKeyColor
hi! link perlStatementFlow       RiasOnyxKeyColor
hi! link perlStatementHash       RiasOnyxKeyColor
hi! link perlStatementIOfunc     RiasOnyxKeyColor
hi! link perlStatementIPC        RiasOnyxKeyColor
hi! link perlStatementList       RiasOnyxKeyColor
hi! link perlStatementMisc       RiasOnyxKeyColor
hi! link perlStatementNetwork    RiasOnyxKeyColor
hi! link perlStatementNumeric    RiasOnyxKeyColor
hi! link perlStatementProc       RiasOnyxKeyColor
hi! link perlStatementPword      RiasOnyxKeyColor
hi! link perlStatementRegexp     RiasOnyxKeyColor
hi! link perlStatementScalar     RiasOnyxKeyColor
hi! link perlStatementSocket     RiasOnyxKeyColor
hi! link perlStatementTime       RiasOnyxKeyColor
hi! link perlStatementVector     RiasOnyxKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd RiasOnyxRed
endif

" Signatures
hi! link perlSignature           RiasOnyxParameterItalic
hi! link perlSubPrototype        RiasOnyxParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName RiasOnyxConstants
