if coconut#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       CoconutRed

" Builtin functions
hi! link perlOperator            CoconutKeyColor
hi! link perlStatementFiledesc   CoconutKeyColor
hi! link perlStatementFiles      CoconutKeyColor
hi! link perlStatementFlow       CoconutKeyColor
hi! link perlStatementHash       CoconutKeyColor
hi! link perlStatementIOfunc     CoconutKeyColor
hi! link perlStatementIPC        CoconutKeyColor
hi! link perlStatementList       CoconutKeyColor
hi! link perlStatementMisc       CoconutKeyColor
hi! link perlStatementNetwork    CoconutKeyColor
hi! link perlStatementNumeric    CoconutKeyColor
hi! link perlStatementProc       CoconutKeyColor
hi! link perlStatementPword      CoconutKeyColor
hi! link perlStatementRegexp     CoconutKeyColor
hi! link perlStatementScalar     CoconutKeyColor
hi! link perlStatementSocket     CoconutKeyColor
hi! link perlStatementTime       CoconutKeyColor
hi! link perlStatementVector     CoconutKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd CoconutRed
endif

" Signatures
hi! link perlSignature           CoconutParameterItalic
hi! link perlSubPrototype        CoconutParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName CoconutConstants
