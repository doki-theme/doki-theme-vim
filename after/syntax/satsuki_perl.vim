if satsuki#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       SatsukiRed

" Builtin functions
hi! link perlOperator            SatsukiKeyColor
hi! link perlStatementFiledesc   SatsukiKeyColor
hi! link perlStatementFiles      SatsukiKeyColor
hi! link perlStatementFlow       SatsukiKeyColor
hi! link perlStatementHash       SatsukiKeyColor
hi! link perlStatementIOfunc     SatsukiKeyColor
hi! link perlStatementIPC        SatsukiKeyColor
hi! link perlStatementList       SatsukiKeyColor
hi! link perlStatementMisc       SatsukiKeyColor
hi! link perlStatementNetwork    SatsukiKeyColor
hi! link perlStatementNumeric    SatsukiKeyColor
hi! link perlStatementProc       SatsukiKeyColor
hi! link perlStatementPword      SatsukiKeyColor
hi! link perlStatementRegexp     SatsukiKeyColor
hi! link perlStatementScalar     SatsukiKeyColor
hi! link perlStatementSocket     SatsukiKeyColor
hi! link perlStatementTime       SatsukiKeyColor
hi! link perlStatementVector     SatsukiKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd SatsukiRed
endif

" Signatures
hi! link perlSignature           SatsukiParameterItalic
hi! link perlSubPrototype        SatsukiParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName SatsukiConstants
