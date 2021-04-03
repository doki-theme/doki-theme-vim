if maika#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MaikaRed

" Builtin functions
hi! link perlOperator            MaikaKeyColor
hi! link perlStatementFiledesc   MaikaKeyColor
hi! link perlStatementFiles      MaikaKeyColor
hi! link perlStatementFlow       MaikaKeyColor
hi! link perlStatementHash       MaikaKeyColor
hi! link perlStatementIOfunc     MaikaKeyColor
hi! link perlStatementIPC        MaikaKeyColor
hi! link perlStatementList       MaikaKeyColor
hi! link perlStatementMisc       MaikaKeyColor
hi! link perlStatementNetwork    MaikaKeyColor
hi! link perlStatementNumeric    MaikaKeyColor
hi! link perlStatementProc       MaikaKeyColor
hi! link perlStatementPword      MaikaKeyColor
hi! link perlStatementRegexp     MaikaKeyColor
hi! link perlStatementScalar     MaikaKeyColor
hi! link perlStatementSocket     MaikaKeyColor
hi! link perlStatementTime       MaikaKeyColor
hi! link perlStatementVector     MaikaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MaikaRed
endif

" Signatures
hi! link perlSignature           MaikaParameterItalic
hi! link perlSubPrototype        MaikaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MaikaConstants
