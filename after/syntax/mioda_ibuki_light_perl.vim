if mioda_ibuki_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MiodaIbukiLightRed

" Builtin functions
hi! link perlOperator            MiodaIbukiLightKeyColor
hi! link perlStatementFiledesc   MiodaIbukiLightKeyColor
hi! link perlStatementFiles      MiodaIbukiLightKeyColor
hi! link perlStatementFlow       MiodaIbukiLightKeyColor
hi! link perlStatementHash       MiodaIbukiLightKeyColor
hi! link perlStatementIOfunc     MiodaIbukiLightKeyColor
hi! link perlStatementIPC        MiodaIbukiLightKeyColor
hi! link perlStatementList       MiodaIbukiLightKeyColor
hi! link perlStatementMisc       MiodaIbukiLightKeyColor
hi! link perlStatementNetwork    MiodaIbukiLightKeyColor
hi! link perlStatementNumeric    MiodaIbukiLightKeyColor
hi! link perlStatementProc       MiodaIbukiLightKeyColor
hi! link perlStatementPword      MiodaIbukiLightKeyColor
hi! link perlStatementRegexp     MiodaIbukiLightKeyColor
hi! link perlStatementScalar     MiodaIbukiLightKeyColor
hi! link perlStatementSocket     MiodaIbukiLightKeyColor
hi! link perlStatementTime       MiodaIbukiLightKeyColor
hi! link perlStatementVector     MiodaIbukiLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MiodaIbukiLightRed
endif

" Signatures
hi! link perlSignature           MiodaIbukiLightParameterItalic
hi! link perlSubPrototype        MiodaIbukiLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MiodaIbukiLightConstants
