if natsuki_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       NatsukiDarkRed

" Builtin functions
hi! link perlOperator            NatsukiDarkKeyColor
hi! link perlStatementFiledesc   NatsukiDarkKeyColor
hi! link perlStatementFiles      NatsukiDarkKeyColor
hi! link perlStatementFlow       NatsukiDarkKeyColor
hi! link perlStatementHash       NatsukiDarkKeyColor
hi! link perlStatementIOfunc     NatsukiDarkKeyColor
hi! link perlStatementIPC        NatsukiDarkKeyColor
hi! link perlStatementList       NatsukiDarkKeyColor
hi! link perlStatementMisc       NatsukiDarkKeyColor
hi! link perlStatementNetwork    NatsukiDarkKeyColor
hi! link perlStatementNumeric    NatsukiDarkKeyColor
hi! link perlStatementProc       NatsukiDarkKeyColor
hi! link perlStatementPword      NatsukiDarkKeyColor
hi! link perlStatementRegexp     NatsukiDarkKeyColor
hi! link perlStatementScalar     NatsukiDarkKeyColor
hi! link perlStatementSocket     NatsukiDarkKeyColor
hi! link perlStatementTime       NatsukiDarkKeyColor
hi! link perlStatementVector     NatsukiDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd NatsukiDarkRed
endif

" Signatures
hi! link perlSignature           NatsukiDarkParameterItalic
hi! link perlSubPrototype        NatsukiDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName NatsukiDarkConstants
