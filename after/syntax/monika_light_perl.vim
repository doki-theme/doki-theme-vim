if monika_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MonikaLightRed

" Builtin functions
hi! link perlOperator            MonikaLightKeyColor
hi! link perlStatementFiledesc   MonikaLightKeyColor
hi! link perlStatementFiles      MonikaLightKeyColor
hi! link perlStatementFlow       MonikaLightKeyColor
hi! link perlStatementHash       MonikaLightKeyColor
hi! link perlStatementIOfunc     MonikaLightKeyColor
hi! link perlStatementIPC        MonikaLightKeyColor
hi! link perlStatementList       MonikaLightKeyColor
hi! link perlStatementMisc       MonikaLightKeyColor
hi! link perlStatementNetwork    MonikaLightKeyColor
hi! link perlStatementNumeric    MonikaLightKeyColor
hi! link perlStatementProc       MonikaLightKeyColor
hi! link perlStatementPword      MonikaLightKeyColor
hi! link perlStatementRegexp     MonikaLightKeyColor
hi! link perlStatementScalar     MonikaLightKeyColor
hi! link perlStatementSocket     MonikaLightKeyColor
hi! link perlStatementTime       MonikaLightKeyColor
hi! link perlStatementVector     MonikaLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MonikaLightRed
endif

" Signatures
hi! link perlSignature           MonikaLightParameterItalic
hi! link perlSubPrototype        MonikaLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MonikaLightConstants
