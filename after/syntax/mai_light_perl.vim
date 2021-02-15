if mai_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MaiLightRed

" Builtin functions
hi! link perlOperator            MaiLightKeyColor
hi! link perlStatementFiledesc   MaiLightKeyColor
hi! link perlStatementFiles      MaiLightKeyColor
hi! link perlStatementFlow       MaiLightKeyColor
hi! link perlStatementHash       MaiLightKeyColor
hi! link perlStatementIOfunc     MaiLightKeyColor
hi! link perlStatementIPC        MaiLightKeyColor
hi! link perlStatementList       MaiLightKeyColor
hi! link perlStatementMisc       MaiLightKeyColor
hi! link perlStatementNetwork    MaiLightKeyColor
hi! link perlStatementNumeric    MaiLightKeyColor
hi! link perlStatementProc       MaiLightKeyColor
hi! link perlStatementPword      MaiLightKeyColor
hi! link perlStatementRegexp     MaiLightKeyColor
hi! link perlStatementScalar     MaiLightKeyColor
hi! link perlStatementSocket     MaiLightKeyColor
hi! link perlStatementTime       MaiLightKeyColor
hi! link perlStatementVector     MaiLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MaiLightRed
endif

" Signatures
hi! link perlSignature           MaiLightParameterItalic
hi! link perlSubPrototype        MaiLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MaiLightConstants
