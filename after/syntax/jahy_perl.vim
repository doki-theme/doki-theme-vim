if jahy#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       JahyRed

" Builtin functions
hi! link perlOperator            JahyKeyColor
hi! link perlStatementFiledesc   JahyKeyColor
hi! link perlStatementFiles      JahyKeyColor
hi! link perlStatementFlow       JahyKeyColor
hi! link perlStatementHash       JahyKeyColor
hi! link perlStatementIOfunc     JahyKeyColor
hi! link perlStatementIPC        JahyKeyColor
hi! link perlStatementList       JahyKeyColor
hi! link perlStatementMisc       JahyKeyColor
hi! link perlStatementNetwork    JahyKeyColor
hi! link perlStatementNumeric    JahyKeyColor
hi! link perlStatementProc       JahyKeyColor
hi! link perlStatementPword      JahyKeyColor
hi! link perlStatementRegexp     JahyKeyColor
hi! link perlStatementScalar     JahyKeyColor
hi! link perlStatementSocket     JahyKeyColor
hi! link perlStatementTime       JahyKeyColor
hi! link perlStatementVector     JahyKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd JahyRed
endif

" Signatures
hi! link perlSignature           JahyParameterItalic
hi! link perlSubPrototype        JahyParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName JahyConstants
