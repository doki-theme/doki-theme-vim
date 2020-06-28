if ryuko#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       RyukoRed

" Builtin functions
hi! link perlOperator            RyukoKeyColor
hi! link perlStatementFiledesc   RyukoKeyColor
hi! link perlStatementFiles      RyukoKeyColor
hi! link perlStatementFlow       RyukoKeyColor
hi! link perlStatementHash       RyukoKeyColor
hi! link perlStatementIOfunc     RyukoKeyColor
hi! link perlStatementIPC        RyukoKeyColor
hi! link perlStatementList       RyukoKeyColor
hi! link perlStatementMisc       RyukoKeyColor
hi! link perlStatementNetwork    RyukoKeyColor
hi! link perlStatementNumeric    RyukoKeyColor
hi! link perlStatementProc       RyukoKeyColor
hi! link perlStatementPword      RyukoKeyColor
hi! link perlStatementRegexp     RyukoKeyColor
hi! link perlStatementScalar     RyukoKeyColor
hi! link perlStatementSocket     RyukoKeyColor
hi! link perlStatementTime       RyukoKeyColor
hi! link perlStatementVector     RyukoKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd RyukoRed
endif

" Signatures
hi! link perlSignature           RyukoParameterItalic
hi! link perlSubPrototype        RyukoParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName RyukoConstants
