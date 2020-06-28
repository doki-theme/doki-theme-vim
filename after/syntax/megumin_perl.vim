if megumin#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MeguminRed

" Builtin functions
hi! link perlOperator            MeguminKeyColor
hi! link perlStatementFiledesc   MeguminKeyColor
hi! link perlStatementFiles      MeguminKeyColor
hi! link perlStatementFlow       MeguminKeyColor
hi! link perlStatementHash       MeguminKeyColor
hi! link perlStatementIOfunc     MeguminKeyColor
hi! link perlStatementIPC        MeguminKeyColor
hi! link perlStatementList       MeguminKeyColor
hi! link perlStatementMisc       MeguminKeyColor
hi! link perlStatementNetwork    MeguminKeyColor
hi! link perlStatementNumeric    MeguminKeyColor
hi! link perlStatementProc       MeguminKeyColor
hi! link perlStatementPword      MeguminKeyColor
hi! link perlStatementRegexp     MeguminKeyColor
hi! link perlStatementScalar     MeguminKeyColor
hi! link perlStatementSocket     MeguminKeyColor
hi! link perlStatementTime       MeguminKeyColor
hi! link perlStatementVector     MeguminKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MeguminRed
endif

" Signatures
hi! link perlSignature           MeguminParameterItalic
hi! link perlSubPrototype        MeguminParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MeguminConstants
