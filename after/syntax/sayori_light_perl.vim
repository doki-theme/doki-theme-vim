if sayori_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       SayoriLightRed

" Builtin functions
hi! link perlOperator            SayoriLightKeyColor
hi! link perlStatementFiledesc   SayoriLightKeyColor
hi! link perlStatementFiles      SayoriLightKeyColor
hi! link perlStatementFlow       SayoriLightKeyColor
hi! link perlStatementHash       SayoriLightKeyColor
hi! link perlStatementIOfunc     SayoriLightKeyColor
hi! link perlStatementIPC        SayoriLightKeyColor
hi! link perlStatementList       SayoriLightKeyColor
hi! link perlStatementMisc       SayoriLightKeyColor
hi! link perlStatementNetwork    SayoriLightKeyColor
hi! link perlStatementNumeric    SayoriLightKeyColor
hi! link perlStatementProc       SayoriLightKeyColor
hi! link perlStatementPword      SayoriLightKeyColor
hi! link perlStatementRegexp     SayoriLightKeyColor
hi! link perlStatementScalar     SayoriLightKeyColor
hi! link perlStatementSocket     SayoriLightKeyColor
hi! link perlStatementTime       SayoriLightKeyColor
hi! link perlStatementVector     SayoriLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd SayoriLightRed
endif

" Signatures
hi! link perlSignature           SayoriLightParameterItalic
hi! link perlSubPrototype        SayoriLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName SayoriLightConstants
