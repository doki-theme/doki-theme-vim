if zero_two_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       ZeroTwoDarkRed

" Builtin functions
hi! link perlOperator            ZeroTwoDarkKeyColor
hi! link perlStatementFiledesc   ZeroTwoDarkKeyColor
hi! link perlStatementFiles      ZeroTwoDarkKeyColor
hi! link perlStatementFlow       ZeroTwoDarkKeyColor
hi! link perlStatementHash       ZeroTwoDarkKeyColor
hi! link perlStatementIOfunc     ZeroTwoDarkKeyColor
hi! link perlStatementIPC        ZeroTwoDarkKeyColor
hi! link perlStatementList       ZeroTwoDarkKeyColor
hi! link perlStatementMisc       ZeroTwoDarkKeyColor
hi! link perlStatementNetwork    ZeroTwoDarkKeyColor
hi! link perlStatementNumeric    ZeroTwoDarkKeyColor
hi! link perlStatementProc       ZeroTwoDarkKeyColor
hi! link perlStatementPword      ZeroTwoDarkKeyColor
hi! link perlStatementRegexp     ZeroTwoDarkKeyColor
hi! link perlStatementScalar     ZeroTwoDarkKeyColor
hi! link perlStatementSocket     ZeroTwoDarkKeyColor
hi! link perlStatementTime       ZeroTwoDarkKeyColor
hi! link perlStatementVector     ZeroTwoDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd ZeroTwoDarkRed
endif

" Signatures
hi! link perlSignature           ZeroTwoDarkParameterItalic
hi! link perlSubPrototype        ZeroTwoDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName ZeroTwoDarkConstants
