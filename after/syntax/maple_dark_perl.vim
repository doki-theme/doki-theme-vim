if maple_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MapleDarkRed

" Builtin functions
hi! link perlOperator            MapleDarkKeyColor
hi! link perlStatementFiledesc   MapleDarkKeyColor
hi! link perlStatementFiles      MapleDarkKeyColor
hi! link perlStatementFlow       MapleDarkKeyColor
hi! link perlStatementHash       MapleDarkKeyColor
hi! link perlStatementIOfunc     MapleDarkKeyColor
hi! link perlStatementIPC        MapleDarkKeyColor
hi! link perlStatementList       MapleDarkKeyColor
hi! link perlStatementMisc       MapleDarkKeyColor
hi! link perlStatementNetwork    MapleDarkKeyColor
hi! link perlStatementNumeric    MapleDarkKeyColor
hi! link perlStatementProc       MapleDarkKeyColor
hi! link perlStatementPword      MapleDarkKeyColor
hi! link perlStatementRegexp     MapleDarkKeyColor
hi! link perlStatementScalar     MapleDarkKeyColor
hi! link perlStatementSocket     MapleDarkKeyColor
hi! link perlStatementTime       MapleDarkKeyColor
hi! link perlStatementVector     MapleDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MapleDarkRed
endif

" Signatures
hi! link perlSignature           MapleDarkParameterItalic
hi! link perlSubPrototype        MapleDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MapleDarkConstants
