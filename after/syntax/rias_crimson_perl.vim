if rias_crimson#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       RiasCrimsonRed

" Builtin functions
hi! link perlOperator            RiasCrimsonKeyColor
hi! link perlStatementFiledesc   RiasCrimsonKeyColor
hi! link perlStatementFiles      RiasCrimsonKeyColor
hi! link perlStatementFlow       RiasCrimsonKeyColor
hi! link perlStatementHash       RiasCrimsonKeyColor
hi! link perlStatementIOfunc     RiasCrimsonKeyColor
hi! link perlStatementIPC        RiasCrimsonKeyColor
hi! link perlStatementList       RiasCrimsonKeyColor
hi! link perlStatementMisc       RiasCrimsonKeyColor
hi! link perlStatementNetwork    RiasCrimsonKeyColor
hi! link perlStatementNumeric    RiasCrimsonKeyColor
hi! link perlStatementProc       RiasCrimsonKeyColor
hi! link perlStatementPword      RiasCrimsonKeyColor
hi! link perlStatementRegexp     RiasCrimsonKeyColor
hi! link perlStatementScalar     RiasCrimsonKeyColor
hi! link perlStatementSocket     RiasCrimsonKeyColor
hi! link perlStatementTime       RiasCrimsonKeyColor
hi! link perlStatementVector     RiasCrimsonKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd RiasCrimsonRed
endif

" Signatures
hi! link perlSignature           RiasCrimsonParameterItalic
hi! link perlSubPrototype        RiasCrimsonParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName RiasCrimsonConstants
