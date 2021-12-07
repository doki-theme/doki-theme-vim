if christmas_chocola#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       ChristmasChocolaRed

" Builtin functions
hi! link perlOperator            ChristmasChocolaKeyColor
hi! link perlStatementFiledesc   ChristmasChocolaKeyColor
hi! link perlStatementFiles      ChristmasChocolaKeyColor
hi! link perlStatementFlow       ChristmasChocolaKeyColor
hi! link perlStatementHash       ChristmasChocolaKeyColor
hi! link perlStatementIOfunc     ChristmasChocolaKeyColor
hi! link perlStatementIPC        ChristmasChocolaKeyColor
hi! link perlStatementList       ChristmasChocolaKeyColor
hi! link perlStatementMisc       ChristmasChocolaKeyColor
hi! link perlStatementNetwork    ChristmasChocolaKeyColor
hi! link perlStatementNumeric    ChristmasChocolaKeyColor
hi! link perlStatementProc       ChristmasChocolaKeyColor
hi! link perlStatementPword      ChristmasChocolaKeyColor
hi! link perlStatementRegexp     ChristmasChocolaKeyColor
hi! link perlStatementScalar     ChristmasChocolaKeyColor
hi! link perlStatementSocket     ChristmasChocolaKeyColor
hi! link perlStatementTime       ChristmasChocolaKeyColor
hi! link perlStatementVector     ChristmasChocolaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd ChristmasChocolaRed
endif

" Signatures
hi! link perlSignature           ChristmasChocolaParameterItalic
hi! link perlSubPrototype        ChristmasChocolaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName ChristmasChocolaConstants
