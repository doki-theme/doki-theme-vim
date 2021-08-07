if azuki#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       AzukiRed

" Builtin functions
hi! link perlOperator            AzukiKeyColor
hi! link perlStatementFiledesc   AzukiKeyColor
hi! link perlStatementFiles      AzukiKeyColor
hi! link perlStatementFlow       AzukiKeyColor
hi! link perlStatementHash       AzukiKeyColor
hi! link perlStatementIOfunc     AzukiKeyColor
hi! link perlStatementIPC        AzukiKeyColor
hi! link perlStatementList       AzukiKeyColor
hi! link perlStatementMisc       AzukiKeyColor
hi! link perlStatementNetwork    AzukiKeyColor
hi! link perlStatementNumeric    AzukiKeyColor
hi! link perlStatementProc       AzukiKeyColor
hi! link perlStatementPword      AzukiKeyColor
hi! link perlStatementRegexp     AzukiKeyColor
hi! link perlStatementScalar     AzukiKeyColor
hi! link perlStatementSocket     AzukiKeyColor
hi! link perlStatementTime       AzukiKeyColor
hi! link perlStatementVector     AzukiKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd AzukiRed
endif

" Signatures
hi! link perlSignature           AzukiParameterItalic
hi! link perlSubPrototype        AzukiParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName AzukiConstants
