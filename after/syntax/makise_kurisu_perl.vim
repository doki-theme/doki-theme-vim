if makise_kurisu#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MakiseKurisuRed

" Builtin functions
hi! link perlOperator            MakiseKurisuKeyColor
hi! link perlStatementFiledesc   MakiseKurisuKeyColor
hi! link perlStatementFiles      MakiseKurisuKeyColor
hi! link perlStatementFlow       MakiseKurisuKeyColor
hi! link perlStatementHash       MakiseKurisuKeyColor
hi! link perlStatementIOfunc     MakiseKurisuKeyColor
hi! link perlStatementIPC        MakiseKurisuKeyColor
hi! link perlStatementList       MakiseKurisuKeyColor
hi! link perlStatementMisc       MakiseKurisuKeyColor
hi! link perlStatementNetwork    MakiseKurisuKeyColor
hi! link perlStatementNumeric    MakiseKurisuKeyColor
hi! link perlStatementProc       MakiseKurisuKeyColor
hi! link perlStatementPword      MakiseKurisuKeyColor
hi! link perlStatementRegexp     MakiseKurisuKeyColor
hi! link perlStatementScalar     MakiseKurisuKeyColor
hi! link perlStatementSocket     MakiseKurisuKeyColor
hi! link perlStatementTime       MakiseKurisuKeyColor
hi! link perlStatementVector     MakiseKurisuKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MakiseKurisuRed
endif

" Signatures
hi! link perlSignature           MakiseKurisuParameterItalic
hi! link perlSubPrototype        MakiseKurisuParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MakiseKurisuConstants
