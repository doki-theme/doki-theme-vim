if tohru#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       TohruRed

" Builtin functions
hi! link perlOperator            TohruKeyColor
hi! link perlStatementFiledesc   TohruKeyColor
hi! link perlStatementFiles      TohruKeyColor
hi! link perlStatementFlow       TohruKeyColor
hi! link perlStatementHash       TohruKeyColor
hi! link perlStatementIOfunc     TohruKeyColor
hi! link perlStatementIPC        TohruKeyColor
hi! link perlStatementList       TohruKeyColor
hi! link perlStatementMisc       TohruKeyColor
hi! link perlStatementNetwork    TohruKeyColor
hi! link perlStatementNumeric    TohruKeyColor
hi! link perlStatementProc       TohruKeyColor
hi! link perlStatementPword      TohruKeyColor
hi! link perlStatementRegexp     TohruKeyColor
hi! link perlStatementScalar     TohruKeyColor
hi! link perlStatementSocket     TohruKeyColor
hi! link perlStatementTime       TohruKeyColor
hi! link perlStatementVector     TohruKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd TohruRed
endif

" Signatures
hi! link perlSignature           TohruParameterItalic
hi! link perlSubPrototype        TohruParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName TohruConstants
