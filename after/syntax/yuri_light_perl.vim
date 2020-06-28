if yuri_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       YuriLightRed

" Builtin functions
hi! link perlOperator            YuriLightKeyColor
hi! link perlStatementFiledesc   YuriLightKeyColor
hi! link perlStatementFiles      YuriLightKeyColor
hi! link perlStatementFlow       YuriLightKeyColor
hi! link perlStatementHash       YuriLightKeyColor
hi! link perlStatementIOfunc     YuriLightKeyColor
hi! link perlStatementIPC        YuriLightKeyColor
hi! link perlStatementList       YuriLightKeyColor
hi! link perlStatementMisc       YuriLightKeyColor
hi! link perlStatementNetwork    YuriLightKeyColor
hi! link perlStatementNumeric    YuriLightKeyColor
hi! link perlStatementProc       YuriLightKeyColor
hi! link perlStatementPword      YuriLightKeyColor
hi! link perlStatementRegexp     YuriLightKeyColor
hi! link perlStatementScalar     YuriLightKeyColor
hi! link perlStatementSocket     YuriLightKeyColor
hi! link perlStatementTime       YuriLightKeyColor
hi! link perlStatementVector     YuriLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd YuriLightRed
endif

" Signatures
hi! link perlSignature           YuriLightParameterItalic
hi! link perlSubPrototype        YuriLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName YuriLightConstants
