if darkness_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       DarknessLightRed

" Builtin functions
hi! link perlOperator            DarknessLightKeyColor
hi! link perlStatementFiledesc   DarknessLightKeyColor
hi! link perlStatementFiles      DarknessLightKeyColor
hi! link perlStatementFlow       DarknessLightKeyColor
hi! link perlStatementHash       DarknessLightKeyColor
hi! link perlStatementIOfunc     DarknessLightKeyColor
hi! link perlStatementIPC        DarknessLightKeyColor
hi! link perlStatementList       DarknessLightKeyColor
hi! link perlStatementMisc       DarknessLightKeyColor
hi! link perlStatementNetwork    DarknessLightKeyColor
hi! link perlStatementNumeric    DarknessLightKeyColor
hi! link perlStatementProc       DarknessLightKeyColor
hi! link perlStatementPword      DarknessLightKeyColor
hi! link perlStatementRegexp     DarknessLightKeyColor
hi! link perlStatementScalar     DarknessLightKeyColor
hi! link perlStatementSocket     DarknessLightKeyColor
hi! link perlStatementTime       DarknessLightKeyColor
hi! link perlStatementVector     DarknessLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd DarknessLightRed
endif

" Signatures
hi! link perlSignature           DarknessLightParameterItalic
hi! link perlSubPrototype        DarknessLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName DarknessLightConstants
