if emilia_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       EmiliaDarkRed

" Builtin functions
hi! link perlOperator            EmiliaDarkKeyColor
hi! link perlStatementFiledesc   EmiliaDarkKeyColor
hi! link perlStatementFiles      EmiliaDarkKeyColor
hi! link perlStatementFlow       EmiliaDarkKeyColor
hi! link perlStatementHash       EmiliaDarkKeyColor
hi! link perlStatementIOfunc     EmiliaDarkKeyColor
hi! link perlStatementIPC        EmiliaDarkKeyColor
hi! link perlStatementList       EmiliaDarkKeyColor
hi! link perlStatementMisc       EmiliaDarkKeyColor
hi! link perlStatementNetwork    EmiliaDarkKeyColor
hi! link perlStatementNumeric    EmiliaDarkKeyColor
hi! link perlStatementProc       EmiliaDarkKeyColor
hi! link perlStatementPword      EmiliaDarkKeyColor
hi! link perlStatementRegexp     EmiliaDarkKeyColor
hi! link perlStatementScalar     EmiliaDarkKeyColor
hi! link perlStatementSocket     EmiliaDarkKeyColor
hi! link perlStatementTime       EmiliaDarkKeyColor
hi! link perlStatementVector     EmiliaDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd EmiliaDarkRed
endif

" Signatures
hi! link perlSignature           EmiliaDarkParameterItalic
hi! link perlSubPrototype        EmiliaDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName EmiliaDarkConstants
