if darkness_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       DarknessDarkRed

" Builtin functions
hi! link perlOperator            DarknessDarkKeyColor
hi! link perlStatementFiledesc   DarknessDarkKeyColor
hi! link perlStatementFiles      DarknessDarkKeyColor
hi! link perlStatementFlow       DarknessDarkKeyColor
hi! link perlStatementHash       DarknessDarkKeyColor
hi! link perlStatementIOfunc     DarknessDarkKeyColor
hi! link perlStatementIPC        DarknessDarkKeyColor
hi! link perlStatementList       DarknessDarkKeyColor
hi! link perlStatementMisc       DarknessDarkKeyColor
hi! link perlStatementNetwork    DarknessDarkKeyColor
hi! link perlStatementNumeric    DarknessDarkKeyColor
hi! link perlStatementProc       DarknessDarkKeyColor
hi! link perlStatementPword      DarknessDarkKeyColor
hi! link perlStatementRegexp     DarknessDarkKeyColor
hi! link perlStatementScalar     DarknessDarkKeyColor
hi! link perlStatementSocket     DarknessDarkKeyColor
hi! link perlStatementTime       DarknessDarkKeyColor
hi! link perlStatementVector     DarknessDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd DarknessDarkRed
endif

" Signatures
hi! link perlSignature           DarknessDarkParameterItalic
hi! link perlSubPrototype        DarknessDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName DarknessDarkConstants
