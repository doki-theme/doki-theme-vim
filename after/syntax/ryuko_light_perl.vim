if ryuko_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       RyukoLightRed

" Builtin functions
hi! link perlOperator            RyukoLightKeyColor
hi! link perlStatementFiledesc   RyukoLightKeyColor
hi! link perlStatementFiles      RyukoLightKeyColor
hi! link perlStatementFlow       RyukoLightKeyColor
hi! link perlStatementHash       RyukoLightKeyColor
hi! link perlStatementIOfunc     RyukoLightKeyColor
hi! link perlStatementIPC        RyukoLightKeyColor
hi! link perlStatementList       RyukoLightKeyColor
hi! link perlStatementMisc       RyukoLightKeyColor
hi! link perlStatementNetwork    RyukoLightKeyColor
hi! link perlStatementNumeric    RyukoLightKeyColor
hi! link perlStatementProc       RyukoLightKeyColor
hi! link perlStatementPword      RyukoLightKeyColor
hi! link perlStatementRegexp     RyukoLightKeyColor
hi! link perlStatementScalar     RyukoLightKeyColor
hi! link perlStatementSocket     RyukoLightKeyColor
hi! link perlStatementTime       RyukoLightKeyColor
hi! link perlStatementVector     RyukoLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd RyukoLightRed
endif

" Signatures
hi! link perlSignature           RyukoLightParameterItalic
hi! link perlSubPrototype        RyukoLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName RyukoLightConstants
