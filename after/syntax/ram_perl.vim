if ram#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       RamRed

" Builtin functions
hi! link perlOperator            RamKeyColor
hi! link perlStatementFiledesc   RamKeyColor
hi! link perlStatementFiles      RamKeyColor
hi! link perlStatementFlow       RamKeyColor
hi! link perlStatementHash       RamKeyColor
hi! link perlStatementIOfunc     RamKeyColor
hi! link perlStatementIPC        RamKeyColor
hi! link perlStatementList       RamKeyColor
hi! link perlStatementMisc       RamKeyColor
hi! link perlStatementNetwork    RamKeyColor
hi! link perlStatementNumeric    RamKeyColor
hi! link perlStatementProc       RamKeyColor
hi! link perlStatementPword      RamKeyColor
hi! link perlStatementRegexp     RamKeyColor
hi! link perlStatementScalar     RamKeyColor
hi! link perlStatementSocket     RamKeyColor
hi! link perlStatementTime       RamKeyColor
hi! link perlStatementVector     RamKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd RamRed
endif

" Signatures
hi! link perlSignature           RamParameterItalic
hi! link perlSubPrototype        RamParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName RamConstants
