if emilia_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       EmiliaLightRed

" Builtin functions
hi! link perlOperator            EmiliaLightKeyColor
hi! link perlStatementFiledesc   EmiliaLightKeyColor
hi! link perlStatementFiles      EmiliaLightKeyColor
hi! link perlStatementFlow       EmiliaLightKeyColor
hi! link perlStatementHash       EmiliaLightKeyColor
hi! link perlStatementIOfunc     EmiliaLightKeyColor
hi! link perlStatementIPC        EmiliaLightKeyColor
hi! link perlStatementList       EmiliaLightKeyColor
hi! link perlStatementMisc       EmiliaLightKeyColor
hi! link perlStatementNetwork    EmiliaLightKeyColor
hi! link perlStatementNumeric    EmiliaLightKeyColor
hi! link perlStatementProc       EmiliaLightKeyColor
hi! link perlStatementPword      EmiliaLightKeyColor
hi! link perlStatementRegexp     EmiliaLightKeyColor
hi! link perlStatementScalar     EmiliaLightKeyColor
hi! link perlStatementSocket     EmiliaLightKeyColor
hi! link perlStatementTime       EmiliaLightKeyColor
hi! link perlStatementVector     EmiliaLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd EmiliaLightRed
endif

" Signatures
hi! link perlSignature           EmiliaLightParameterItalic
hi! link perlSubPrototype        EmiliaLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName EmiliaLightConstants
