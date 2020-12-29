if asuna_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       AsunaLightRed

" Builtin functions
hi! link perlOperator            AsunaLightKeyColor
hi! link perlStatementFiledesc   AsunaLightKeyColor
hi! link perlStatementFiles      AsunaLightKeyColor
hi! link perlStatementFlow       AsunaLightKeyColor
hi! link perlStatementHash       AsunaLightKeyColor
hi! link perlStatementIOfunc     AsunaLightKeyColor
hi! link perlStatementIPC        AsunaLightKeyColor
hi! link perlStatementList       AsunaLightKeyColor
hi! link perlStatementMisc       AsunaLightKeyColor
hi! link perlStatementNetwork    AsunaLightKeyColor
hi! link perlStatementNumeric    AsunaLightKeyColor
hi! link perlStatementProc       AsunaLightKeyColor
hi! link perlStatementPword      AsunaLightKeyColor
hi! link perlStatementRegexp     AsunaLightKeyColor
hi! link perlStatementScalar     AsunaLightKeyColor
hi! link perlStatementSocket     AsunaLightKeyColor
hi! link perlStatementTime       AsunaLightKeyColor
hi! link perlStatementVector     AsunaLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd AsunaLightRed
endif

" Signatures
hi! link perlSignature           AsunaLightParameterItalic
hi! link perlSubPrototype        AsunaLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName AsunaLightConstants
