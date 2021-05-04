if nakano_nino#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       NakanoNinoRed

" Builtin functions
hi! link perlOperator            NakanoNinoKeyColor
hi! link perlStatementFiledesc   NakanoNinoKeyColor
hi! link perlStatementFiles      NakanoNinoKeyColor
hi! link perlStatementFlow       NakanoNinoKeyColor
hi! link perlStatementHash       NakanoNinoKeyColor
hi! link perlStatementIOfunc     NakanoNinoKeyColor
hi! link perlStatementIPC        NakanoNinoKeyColor
hi! link perlStatementList       NakanoNinoKeyColor
hi! link perlStatementMisc       NakanoNinoKeyColor
hi! link perlStatementNetwork    NakanoNinoKeyColor
hi! link perlStatementNumeric    NakanoNinoKeyColor
hi! link perlStatementProc       NakanoNinoKeyColor
hi! link perlStatementPword      NakanoNinoKeyColor
hi! link perlStatementRegexp     NakanoNinoKeyColor
hi! link perlStatementScalar     NakanoNinoKeyColor
hi! link perlStatementSocket     NakanoNinoKeyColor
hi! link perlStatementTime       NakanoNinoKeyColor
hi! link perlStatementVector     NakanoNinoKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd NakanoNinoRed
endif

" Signatures
hi! link perlSignature           NakanoNinoParameterItalic
hi! link perlSubPrototype        NakanoNinoParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName NakanoNinoConstants
