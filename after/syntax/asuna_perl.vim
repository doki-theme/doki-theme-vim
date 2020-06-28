if asuna#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       AsunaRed

" Builtin functions
hi! link perlOperator            AsunaKeyColor
hi! link perlStatementFiledesc   AsunaKeyColor
hi! link perlStatementFiles      AsunaKeyColor
hi! link perlStatementFlow       AsunaKeyColor
hi! link perlStatementHash       AsunaKeyColor
hi! link perlStatementIOfunc     AsunaKeyColor
hi! link perlStatementIPC        AsunaKeyColor
hi! link perlStatementList       AsunaKeyColor
hi! link perlStatementMisc       AsunaKeyColor
hi! link perlStatementNetwork    AsunaKeyColor
hi! link perlStatementNumeric    AsunaKeyColor
hi! link perlStatementProc       AsunaKeyColor
hi! link perlStatementPword      AsunaKeyColor
hi! link perlStatementRegexp     AsunaKeyColor
hi! link perlStatementScalar     AsunaKeyColor
hi! link perlStatementSocket     AsunaKeyColor
hi! link perlStatementTime       AsunaKeyColor
hi! link perlStatementVector     AsunaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd AsunaRed
endif

" Signatures
hi! link perlSignature           AsunaParameterItalic
hi! link perlSubPrototype        AsunaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName AsunaConstants
