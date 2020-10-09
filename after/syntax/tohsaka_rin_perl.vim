if tohsaka_rin#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       TohsakaRinRed

" Builtin functions
hi! link perlOperator            TohsakaRinKeyColor
hi! link perlStatementFiledesc   TohsakaRinKeyColor
hi! link perlStatementFiles      TohsakaRinKeyColor
hi! link perlStatementFlow       TohsakaRinKeyColor
hi! link perlStatementHash       TohsakaRinKeyColor
hi! link perlStatementIOfunc     TohsakaRinKeyColor
hi! link perlStatementIPC        TohsakaRinKeyColor
hi! link perlStatementList       TohsakaRinKeyColor
hi! link perlStatementMisc       TohsakaRinKeyColor
hi! link perlStatementNetwork    TohsakaRinKeyColor
hi! link perlStatementNumeric    TohsakaRinKeyColor
hi! link perlStatementProc       TohsakaRinKeyColor
hi! link perlStatementPword      TohsakaRinKeyColor
hi! link perlStatementRegexp     TohsakaRinKeyColor
hi! link perlStatementScalar     TohsakaRinKeyColor
hi! link perlStatementSocket     TohsakaRinKeyColor
hi! link perlStatementTime       TohsakaRinKeyColor
hi! link perlStatementVector     TohsakaRinKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd TohsakaRinRed
endif

" Signatures
hi! link perlSignature           TohsakaRinParameterItalic
hi! link perlSubPrototype        TohsakaRinParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName TohsakaRinConstants
