if jabami_yumeko#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       JabamiYumekoRed

" Builtin functions
hi! link perlOperator            JabamiYumekoKeyColor
hi! link perlStatementFiledesc   JabamiYumekoKeyColor
hi! link perlStatementFiles      JabamiYumekoKeyColor
hi! link perlStatementFlow       JabamiYumekoKeyColor
hi! link perlStatementHash       JabamiYumekoKeyColor
hi! link perlStatementIOfunc     JabamiYumekoKeyColor
hi! link perlStatementIPC        JabamiYumekoKeyColor
hi! link perlStatementList       JabamiYumekoKeyColor
hi! link perlStatementMisc       JabamiYumekoKeyColor
hi! link perlStatementNetwork    JabamiYumekoKeyColor
hi! link perlStatementNumeric    JabamiYumekoKeyColor
hi! link perlStatementProc       JabamiYumekoKeyColor
hi! link perlStatementPword      JabamiYumekoKeyColor
hi! link perlStatementRegexp     JabamiYumekoKeyColor
hi! link perlStatementScalar     JabamiYumekoKeyColor
hi! link perlStatementSocket     JabamiYumekoKeyColor
hi! link perlStatementTime       JabamiYumekoKeyColor
hi! link perlStatementVector     JabamiYumekoKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd JabamiYumekoRed
endif

" Signatures
hi! link perlSignature           JabamiYumekoParameterItalic
hi! link perlSubPrototype        JabamiYumekoParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName JabamiYumekoConstants
