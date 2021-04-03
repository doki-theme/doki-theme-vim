if astolfo#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       AstolfoRed

" Builtin functions
hi! link perlOperator            AstolfoKeyColor
hi! link perlStatementFiledesc   AstolfoKeyColor
hi! link perlStatementFiles      AstolfoKeyColor
hi! link perlStatementFlow       AstolfoKeyColor
hi! link perlStatementHash       AstolfoKeyColor
hi! link perlStatementIOfunc     AstolfoKeyColor
hi! link perlStatementIPC        AstolfoKeyColor
hi! link perlStatementList       AstolfoKeyColor
hi! link perlStatementMisc       AstolfoKeyColor
hi! link perlStatementNetwork    AstolfoKeyColor
hi! link perlStatementNumeric    AstolfoKeyColor
hi! link perlStatementProc       AstolfoKeyColor
hi! link perlStatementPword      AstolfoKeyColor
hi! link perlStatementRegexp     AstolfoKeyColor
hi! link perlStatementScalar     AstolfoKeyColor
hi! link perlStatementSocket     AstolfoKeyColor
hi! link perlStatementTime       AstolfoKeyColor
hi! link perlStatementVector     AstolfoKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd AstolfoRed
endif

" Signatures
hi! link perlSignature           AstolfoParameterItalic
hi! link perlSubPrototype        AstolfoParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName AstolfoConstants
