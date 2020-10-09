if aqua#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       AquaRed

" Builtin functions
hi! link perlOperator            AquaKeyColor
hi! link perlStatementFiledesc   AquaKeyColor
hi! link perlStatementFiles      AquaKeyColor
hi! link perlStatementFlow       AquaKeyColor
hi! link perlStatementHash       AquaKeyColor
hi! link perlStatementIOfunc     AquaKeyColor
hi! link perlStatementIPC        AquaKeyColor
hi! link perlStatementList       AquaKeyColor
hi! link perlStatementMisc       AquaKeyColor
hi! link perlStatementNetwork    AquaKeyColor
hi! link perlStatementNumeric    AquaKeyColor
hi! link perlStatementProc       AquaKeyColor
hi! link perlStatementPword      AquaKeyColor
hi! link perlStatementRegexp     AquaKeyColor
hi! link perlStatementScalar     AquaKeyColor
hi! link perlStatementSocket     AquaKeyColor
hi! link perlStatementTime       AquaKeyColor
hi! link perlStatementVector     AquaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd AquaRed
endif

" Signatures
hi! link perlSignature           AquaParameterItalic
hi! link perlSubPrototype        AquaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName AquaConstants
