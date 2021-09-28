if satsuki_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       SatsukiDarkRed

" Builtin functions
hi! link perlOperator            SatsukiDarkKeyColor
hi! link perlStatementFiledesc   SatsukiDarkKeyColor
hi! link perlStatementFiles      SatsukiDarkKeyColor
hi! link perlStatementFlow       SatsukiDarkKeyColor
hi! link perlStatementHash       SatsukiDarkKeyColor
hi! link perlStatementIOfunc     SatsukiDarkKeyColor
hi! link perlStatementIPC        SatsukiDarkKeyColor
hi! link perlStatementList       SatsukiDarkKeyColor
hi! link perlStatementMisc       SatsukiDarkKeyColor
hi! link perlStatementNetwork    SatsukiDarkKeyColor
hi! link perlStatementNumeric    SatsukiDarkKeyColor
hi! link perlStatementProc       SatsukiDarkKeyColor
hi! link perlStatementPword      SatsukiDarkKeyColor
hi! link perlStatementRegexp     SatsukiDarkKeyColor
hi! link perlStatementScalar     SatsukiDarkKeyColor
hi! link perlStatementSocket     SatsukiDarkKeyColor
hi! link perlStatementTime       SatsukiDarkKeyColor
hi! link perlStatementVector     SatsukiDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd SatsukiDarkRed
endif

" Signatures
hi! link perlSignature           SatsukiDarkParameterItalic
hi! link perlSubPrototype        SatsukiDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName SatsukiDarkConstants
