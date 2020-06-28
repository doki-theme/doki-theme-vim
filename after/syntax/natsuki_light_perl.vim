if natsuki_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       NatsukiLightRed

" Builtin functions
hi! link perlOperator            NatsukiLightKeyColor
hi! link perlStatementFiledesc   NatsukiLightKeyColor
hi! link perlStatementFiles      NatsukiLightKeyColor
hi! link perlStatementFlow       NatsukiLightKeyColor
hi! link perlStatementHash       NatsukiLightKeyColor
hi! link perlStatementIOfunc     NatsukiLightKeyColor
hi! link perlStatementIPC        NatsukiLightKeyColor
hi! link perlStatementList       NatsukiLightKeyColor
hi! link perlStatementMisc       NatsukiLightKeyColor
hi! link perlStatementNetwork    NatsukiLightKeyColor
hi! link perlStatementNumeric    NatsukiLightKeyColor
hi! link perlStatementProc       NatsukiLightKeyColor
hi! link perlStatementPword      NatsukiLightKeyColor
hi! link perlStatementRegexp     NatsukiLightKeyColor
hi! link perlStatementScalar     NatsukiLightKeyColor
hi! link perlStatementSocket     NatsukiLightKeyColor
hi! link perlStatementTime       NatsukiLightKeyColor
hi! link perlStatementVector     NatsukiLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd NatsukiLightRed
endif

" Signatures
hi! link perlSignature           NatsukiLightParameterItalic
hi! link perlSubPrototype        NatsukiLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName NatsukiLightConstants
