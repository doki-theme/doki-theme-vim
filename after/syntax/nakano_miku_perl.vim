if nakano_miku#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       NakanoMikuRed

" Builtin functions
hi! link perlOperator            NakanoMikuKeyColor
hi! link perlStatementFiledesc   NakanoMikuKeyColor
hi! link perlStatementFiles      NakanoMikuKeyColor
hi! link perlStatementFlow       NakanoMikuKeyColor
hi! link perlStatementHash       NakanoMikuKeyColor
hi! link perlStatementIOfunc     NakanoMikuKeyColor
hi! link perlStatementIPC        NakanoMikuKeyColor
hi! link perlStatementList       NakanoMikuKeyColor
hi! link perlStatementMisc       NakanoMikuKeyColor
hi! link perlStatementNetwork    NakanoMikuKeyColor
hi! link perlStatementNumeric    NakanoMikuKeyColor
hi! link perlStatementProc       NakanoMikuKeyColor
hi! link perlStatementPword      NakanoMikuKeyColor
hi! link perlStatementRegexp     NakanoMikuKeyColor
hi! link perlStatementScalar     NakanoMikuKeyColor
hi! link perlStatementSocket     NakanoMikuKeyColor
hi! link perlStatementTime       NakanoMikuKeyColor
hi! link perlStatementVector     NakanoMikuKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd NakanoMikuRed
endif

" Signatures
hi! link perlSignature           NakanoMikuParameterItalic
hi! link perlSubPrototype        NakanoMikuParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName NakanoMikuConstants
