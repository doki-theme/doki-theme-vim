if mai_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MaiDarkRed

" Builtin functions
hi! link perlOperator            MaiDarkKeyColor
hi! link perlStatementFiledesc   MaiDarkKeyColor
hi! link perlStatementFiles      MaiDarkKeyColor
hi! link perlStatementFlow       MaiDarkKeyColor
hi! link perlStatementHash       MaiDarkKeyColor
hi! link perlStatementIOfunc     MaiDarkKeyColor
hi! link perlStatementIPC        MaiDarkKeyColor
hi! link perlStatementList       MaiDarkKeyColor
hi! link perlStatementMisc       MaiDarkKeyColor
hi! link perlStatementNetwork    MaiDarkKeyColor
hi! link perlStatementNumeric    MaiDarkKeyColor
hi! link perlStatementProc       MaiDarkKeyColor
hi! link perlStatementPword      MaiDarkKeyColor
hi! link perlStatementRegexp     MaiDarkKeyColor
hi! link perlStatementScalar     MaiDarkKeyColor
hi! link perlStatementSocket     MaiDarkKeyColor
hi! link perlStatementTime       MaiDarkKeyColor
hi! link perlStatementVector     MaiDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MaiDarkRed
endif

" Signatures
hi! link perlSignature           MaiDarkParameterItalic
hi! link perlSubPrototype        MaiDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MaiDarkConstants
