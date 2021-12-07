if nakano_yotsuba#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       NakanoYotsubaRed

" Builtin functions
hi! link perlOperator            NakanoYotsubaKeyColor
hi! link perlStatementFiledesc   NakanoYotsubaKeyColor
hi! link perlStatementFiles      NakanoYotsubaKeyColor
hi! link perlStatementFlow       NakanoYotsubaKeyColor
hi! link perlStatementHash       NakanoYotsubaKeyColor
hi! link perlStatementIOfunc     NakanoYotsubaKeyColor
hi! link perlStatementIPC        NakanoYotsubaKeyColor
hi! link perlStatementList       NakanoYotsubaKeyColor
hi! link perlStatementMisc       NakanoYotsubaKeyColor
hi! link perlStatementNetwork    NakanoYotsubaKeyColor
hi! link perlStatementNumeric    NakanoYotsubaKeyColor
hi! link perlStatementProc       NakanoYotsubaKeyColor
hi! link perlStatementPword      NakanoYotsubaKeyColor
hi! link perlStatementRegexp     NakanoYotsubaKeyColor
hi! link perlStatementScalar     NakanoYotsubaKeyColor
hi! link perlStatementSocket     NakanoYotsubaKeyColor
hi! link perlStatementTime       NakanoYotsubaKeyColor
hi! link perlStatementVector     NakanoYotsubaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd NakanoYotsubaRed
endif

" Signatures
hi! link perlSignature           NakanoYotsubaParameterItalic
hi! link perlSubPrototype        NakanoYotsubaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName NakanoYotsubaConstants
