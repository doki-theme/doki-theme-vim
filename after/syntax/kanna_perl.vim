if kanna#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       KannaRed

" Builtin functions
hi! link perlOperator            KannaKeyColor
hi! link perlStatementFiledesc   KannaKeyColor
hi! link perlStatementFiles      KannaKeyColor
hi! link perlStatementFlow       KannaKeyColor
hi! link perlStatementHash       KannaKeyColor
hi! link perlStatementIOfunc     KannaKeyColor
hi! link perlStatementIPC        KannaKeyColor
hi! link perlStatementList       KannaKeyColor
hi! link perlStatementMisc       KannaKeyColor
hi! link perlStatementNetwork    KannaKeyColor
hi! link perlStatementNumeric    KannaKeyColor
hi! link perlStatementProc       KannaKeyColor
hi! link perlStatementPword      KannaKeyColor
hi! link perlStatementRegexp     KannaKeyColor
hi! link perlStatementScalar     KannaKeyColor
hi! link perlStatementSocket     KannaKeyColor
hi! link perlStatementTime       KannaKeyColor
hi! link perlStatementVector     KannaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd KannaRed
endif

" Signatures
hi! link perlSignature           KannaParameterItalic
hi! link perlSubPrototype        KannaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName KannaConstants
