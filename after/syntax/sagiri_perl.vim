if sagiri#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       SagiriRed

" Builtin functions
hi! link perlOperator            SagiriKeyColor
hi! link perlStatementFiledesc   SagiriKeyColor
hi! link perlStatementFiles      SagiriKeyColor
hi! link perlStatementFlow       SagiriKeyColor
hi! link perlStatementHash       SagiriKeyColor
hi! link perlStatementIOfunc     SagiriKeyColor
hi! link perlStatementIPC        SagiriKeyColor
hi! link perlStatementList       SagiriKeyColor
hi! link perlStatementMisc       SagiriKeyColor
hi! link perlStatementNetwork    SagiriKeyColor
hi! link perlStatementNumeric    SagiriKeyColor
hi! link perlStatementProc       SagiriKeyColor
hi! link perlStatementPword      SagiriKeyColor
hi! link perlStatementRegexp     SagiriKeyColor
hi! link perlStatementScalar     SagiriKeyColor
hi! link perlStatementSocket     SagiriKeyColor
hi! link perlStatementTime       SagiriKeyColor
hi! link perlStatementVector     SagiriKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd SagiriRed
endif

" Signatures
hi! link perlSignature           SagiriParameterItalic
hi! link perlSubPrototype        SagiriParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName SagiriConstants
