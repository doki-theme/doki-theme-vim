if gray#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       GrayRed

" Builtin functions
hi! link perlOperator            GrayKeyColor
hi! link perlStatementFiledesc   GrayKeyColor
hi! link perlStatementFiles      GrayKeyColor
hi! link perlStatementFlow       GrayKeyColor
hi! link perlStatementHash       GrayKeyColor
hi! link perlStatementIOfunc     GrayKeyColor
hi! link perlStatementIPC        GrayKeyColor
hi! link perlStatementList       GrayKeyColor
hi! link perlStatementMisc       GrayKeyColor
hi! link perlStatementNetwork    GrayKeyColor
hi! link perlStatementNumeric    GrayKeyColor
hi! link perlStatementProc       GrayKeyColor
hi! link perlStatementPword      GrayKeyColor
hi! link perlStatementRegexp     GrayKeyColor
hi! link perlStatementScalar     GrayKeyColor
hi! link perlStatementSocket     GrayKeyColor
hi! link perlStatementTime       GrayKeyColor
hi! link perlStatementVector     GrayKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd GrayRed
endif

" Signatures
hi! link perlSignature           GrayParameterItalic
hi! link perlSubPrototype        GrayParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName GrayConstants
