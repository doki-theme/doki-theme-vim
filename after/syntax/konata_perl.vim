if konata#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       KonataRed

" Builtin functions
hi! link perlOperator            KonataKeyColor
hi! link perlStatementFiledesc   KonataKeyColor
hi! link perlStatementFiles      KonataKeyColor
hi! link perlStatementFlow       KonataKeyColor
hi! link perlStatementHash       KonataKeyColor
hi! link perlStatementIOfunc     KonataKeyColor
hi! link perlStatementIPC        KonataKeyColor
hi! link perlStatementList       KonataKeyColor
hi! link perlStatementMisc       KonataKeyColor
hi! link perlStatementNetwork    KonataKeyColor
hi! link perlStatementNumeric    KonataKeyColor
hi! link perlStatementProc       KonataKeyColor
hi! link perlStatementPword      KonataKeyColor
hi! link perlStatementRegexp     KonataKeyColor
hi! link perlStatementScalar     KonataKeyColor
hi! link perlStatementSocket     KonataKeyColor
hi! link perlStatementTime       KonataKeyColor
hi! link perlStatementVector     KonataKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd KonataRed
endif

" Signatures
hi! link perlSignature           KonataParameterItalic
hi! link perlSubPrototype        KonataParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName KonataConstants
