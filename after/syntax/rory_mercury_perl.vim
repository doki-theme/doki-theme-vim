if rory_mercury#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       RoryMercuryRed

" Builtin functions
hi! link perlOperator            RoryMercuryKeyColor
hi! link perlStatementFiledesc   RoryMercuryKeyColor
hi! link perlStatementFiles      RoryMercuryKeyColor
hi! link perlStatementFlow       RoryMercuryKeyColor
hi! link perlStatementHash       RoryMercuryKeyColor
hi! link perlStatementIOfunc     RoryMercuryKeyColor
hi! link perlStatementIPC        RoryMercuryKeyColor
hi! link perlStatementList       RoryMercuryKeyColor
hi! link perlStatementMisc       RoryMercuryKeyColor
hi! link perlStatementNetwork    RoryMercuryKeyColor
hi! link perlStatementNumeric    RoryMercuryKeyColor
hi! link perlStatementProc       RoryMercuryKeyColor
hi! link perlStatementPword      RoryMercuryKeyColor
hi! link perlStatementRegexp     RoryMercuryKeyColor
hi! link perlStatementScalar     RoryMercuryKeyColor
hi! link perlStatementSocket     RoryMercuryKeyColor
hi! link perlStatementTime       RoryMercuryKeyColor
hi! link perlStatementVector     RoryMercuryKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd RoryMercuryRed
endif

" Signatures
hi! link perlSignature           RoryMercuryParameterItalic
hi! link perlSubPrototype        RoryMercuryParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName RoryMercuryConstants
