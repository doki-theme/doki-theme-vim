if ryuko_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       RyukoDarkRed

" Builtin functions
hi! link perlOperator            RyukoDarkKeyColor
hi! link perlStatementFiledesc   RyukoDarkKeyColor
hi! link perlStatementFiles      RyukoDarkKeyColor
hi! link perlStatementFlow       RyukoDarkKeyColor
hi! link perlStatementHash       RyukoDarkKeyColor
hi! link perlStatementIOfunc     RyukoDarkKeyColor
hi! link perlStatementIPC        RyukoDarkKeyColor
hi! link perlStatementList       RyukoDarkKeyColor
hi! link perlStatementMisc       RyukoDarkKeyColor
hi! link perlStatementNetwork    RyukoDarkKeyColor
hi! link perlStatementNumeric    RyukoDarkKeyColor
hi! link perlStatementProc       RyukoDarkKeyColor
hi! link perlStatementPword      RyukoDarkKeyColor
hi! link perlStatementRegexp     RyukoDarkKeyColor
hi! link perlStatementScalar     RyukoDarkKeyColor
hi! link perlStatementSocket     RyukoDarkKeyColor
hi! link perlStatementTime       RyukoDarkKeyColor
hi! link perlStatementVector     RyukoDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd RyukoDarkRed
endif

" Signatures
hi! link perlSignature           RyukoDarkParameterItalic
hi! link perlSubPrototype        RyukoDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName RyukoDarkConstants
