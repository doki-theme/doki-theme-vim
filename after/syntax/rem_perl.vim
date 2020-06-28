if rem#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       RemRed

" Builtin functions
hi! link perlOperator            RemKeyColor
hi! link perlStatementFiledesc   RemKeyColor
hi! link perlStatementFiles      RemKeyColor
hi! link perlStatementFlow       RemKeyColor
hi! link perlStatementHash       RemKeyColor
hi! link perlStatementIOfunc     RemKeyColor
hi! link perlStatementIPC        RemKeyColor
hi! link perlStatementList       RemKeyColor
hi! link perlStatementMisc       RemKeyColor
hi! link perlStatementNetwork    RemKeyColor
hi! link perlStatementNumeric    RemKeyColor
hi! link perlStatementProc       RemKeyColor
hi! link perlStatementPword      RemKeyColor
hi! link perlStatementRegexp     RemKeyColor
hi! link perlStatementScalar     RemKeyColor
hi! link perlStatementSocket     RemKeyColor
hi! link perlStatementTime       RemKeyColor
hi! link perlStatementVector     RemKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd RemRed
endif

" Signatures
hi! link perlSignature           RemParameterItalic
hi! link perlSubPrototype        RemParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName RemConstants
