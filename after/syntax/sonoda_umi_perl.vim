if sonoda_umi#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       SonodaUmiRed

" Builtin functions
hi! link perlOperator            SonodaUmiKeyColor
hi! link perlStatementFiledesc   SonodaUmiKeyColor
hi! link perlStatementFiles      SonodaUmiKeyColor
hi! link perlStatementFlow       SonodaUmiKeyColor
hi! link perlStatementHash       SonodaUmiKeyColor
hi! link perlStatementIOfunc     SonodaUmiKeyColor
hi! link perlStatementIPC        SonodaUmiKeyColor
hi! link perlStatementList       SonodaUmiKeyColor
hi! link perlStatementMisc       SonodaUmiKeyColor
hi! link perlStatementNetwork    SonodaUmiKeyColor
hi! link perlStatementNumeric    SonodaUmiKeyColor
hi! link perlStatementProc       SonodaUmiKeyColor
hi! link perlStatementPword      SonodaUmiKeyColor
hi! link perlStatementRegexp     SonodaUmiKeyColor
hi! link perlStatementScalar     SonodaUmiKeyColor
hi! link perlStatementSocket     SonodaUmiKeyColor
hi! link perlStatementTime       SonodaUmiKeyColor
hi! link perlStatementVector     SonodaUmiKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd SonodaUmiRed
endif

" Signatures
hi! link perlSignature           SonodaUmiParameterItalic
hi! link perlSubPrototype        SonodaUmiParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName SonodaUmiConstants
