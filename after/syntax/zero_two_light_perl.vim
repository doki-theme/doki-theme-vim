if zero_two_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       ZeroTwoLightRed

" Builtin functions
hi! link perlOperator            ZeroTwoLightKeyColor
hi! link perlStatementFiledesc   ZeroTwoLightKeyColor
hi! link perlStatementFiles      ZeroTwoLightKeyColor
hi! link perlStatementFlow       ZeroTwoLightKeyColor
hi! link perlStatementHash       ZeroTwoLightKeyColor
hi! link perlStatementIOfunc     ZeroTwoLightKeyColor
hi! link perlStatementIPC        ZeroTwoLightKeyColor
hi! link perlStatementList       ZeroTwoLightKeyColor
hi! link perlStatementMisc       ZeroTwoLightKeyColor
hi! link perlStatementNetwork    ZeroTwoLightKeyColor
hi! link perlStatementNumeric    ZeroTwoLightKeyColor
hi! link perlStatementProc       ZeroTwoLightKeyColor
hi! link perlStatementPword      ZeroTwoLightKeyColor
hi! link perlStatementRegexp     ZeroTwoLightKeyColor
hi! link perlStatementScalar     ZeroTwoLightKeyColor
hi! link perlStatementSocket     ZeroTwoLightKeyColor
hi! link perlStatementTime       ZeroTwoLightKeyColor
hi! link perlStatementVector     ZeroTwoLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd ZeroTwoLightRed
endif

" Signatures
hi! link perlSignature           ZeroTwoLightParameterItalic
hi! link perlSubPrototype        ZeroTwoLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName ZeroTwoLightConstants
