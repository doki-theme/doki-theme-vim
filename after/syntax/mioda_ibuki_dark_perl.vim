if mioda_ibuki_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MiodaIbukiDarkRed

" Builtin functions
hi! link perlOperator            MiodaIbukiDarkKeyColor
hi! link perlStatementFiledesc   MiodaIbukiDarkKeyColor
hi! link perlStatementFiles      MiodaIbukiDarkKeyColor
hi! link perlStatementFlow       MiodaIbukiDarkKeyColor
hi! link perlStatementHash       MiodaIbukiDarkKeyColor
hi! link perlStatementIOfunc     MiodaIbukiDarkKeyColor
hi! link perlStatementIPC        MiodaIbukiDarkKeyColor
hi! link perlStatementList       MiodaIbukiDarkKeyColor
hi! link perlStatementMisc       MiodaIbukiDarkKeyColor
hi! link perlStatementNetwork    MiodaIbukiDarkKeyColor
hi! link perlStatementNumeric    MiodaIbukiDarkKeyColor
hi! link perlStatementProc       MiodaIbukiDarkKeyColor
hi! link perlStatementPword      MiodaIbukiDarkKeyColor
hi! link perlStatementRegexp     MiodaIbukiDarkKeyColor
hi! link perlStatementScalar     MiodaIbukiDarkKeyColor
hi! link perlStatementSocket     MiodaIbukiDarkKeyColor
hi! link perlStatementTime       MiodaIbukiDarkKeyColor
hi! link perlStatementVector     MiodaIbukiDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MiodaIbukiDarkRed
endif

" Signatures
hi! link perlSignature           MiodaIbukiDarkParameterItalic
hi! link perlSubPrototype        MiodaIbukiDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MiodaIbukiDarkConstants
