if gasai_yuno#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       GasaiYunoRed

" Builtin functions
hi! link perlOperator            GasaiYunoKeyColor
hi! link perlStatementFiledesc   GasaiYunoKeyColor
hi! link perlStatementFiles      GasaiYunoKeyColor
hi! link perlStatementFlow       GasaiYunoKeyColor
hi! link perlStatementHash       GasaiYunoKeyColor
hi! link perlStatementIOfunc     GasaiYunoKeyColor
hi! link perlStatementIPC        GasaiYunoKeyColor
hi! link perlStatementList       GasaiYunoKeyColor
hi! link perlStatementMisc       GasaiYunoKeyColor
hi! link perlStatementNetwork    GasaiYunoKeyColor
hi! link perlStatementNumeric    GasaiYunoKeyColor
hi! link perlStatementProc       GasaiYunoKeyColor
hi! link perlStatementPword      GasaiYunoKeyColor
hi! link perlStatementRegexp     GasaiYunoKeyColor
hi! link perlStatementScalar     GasaiYunoKeyColor
hi! link perlStatementSocket     GasaiYunoKeyColor
hi! link perlStatementTime       GasaiYunoKeyColor
hi! link perlStatementVector     GasaiYunoKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd GasaiYunoRed
endif

" Signatures
hi! link perlSignature           GasaiYunoParameterItalic
hi! link perlSubPrototype        GasaiYunoParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName GasaiYunoConstants
