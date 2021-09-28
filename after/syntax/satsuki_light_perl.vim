if satsuki_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       SatsukiLightRed

" Builtin functions
hi! link perlOperator            SatsukiLightKeyColor
hi! link perlStatementFiledesc   SatsukiLightKeyColor
hi! link perlStatementFiles      SatsukiLightKeyColor
hi! link perlStatementFlow       SatsukiLightKeyColor
hi! link perlStatementHash       SatsukiLightKeyColor
hi! link perlStatementIOfunc     SatsukiLightKeyColor
hi! link perlStatementIPC        SatsukiLightKeyColor
hi! link perlStatementList       SatsukiLightKeyColor
hi! link perlStatementMisc       SatsukiLightKeyColor
hi! link perlStatementNetwork    SatsukiLightKeyColor
hi! link perlStatementNumeric    SatsukiLightKeyColor
hi! link perlStatementProc       SatsukiLightKeyColor
hi! link perlStatementPword      SatsukiLightKeyColor
hi! link perlStatementRegexp     SatsukiLightKeyColor
hi! link perlStatementScalar     SatsukiLightKeyColor
hi! link perlStatementSocket     SatsukiLightKeyColor
hi! link perlStatementTime       SatsukiLightKeyColor
hi! link perlStatementVector     SatsukiLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd SatsukiLightRed
endif

" Signatures
hi! link perlSignature           SatsukiLightParameterItalic
hi! link perlSubPrototype        SatsukiLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName SatsukiLightConstants
