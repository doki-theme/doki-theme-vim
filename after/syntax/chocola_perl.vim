if chocola#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       ChocolaRed

" Builtin functions
hi! link perlOperator            ChocolaKeyColor
hi! link perlStatementFiledesc   ChocolaKeyColor
hi! link perlStatementFiles      ChocolaKeyColor
hi! link perlStatementFlow       ChocolaKeyColor
hi! link perlStatementHash       ChocolaKeyColor
hi! link perlStatementIOfunc     ChocolaKeyColor
hi! link perlStatementIPC        ChocolaKeyColor
hi! link perlStatementList       ChocolaKeyColor
hi! link perlStatementMisc       ChocolaKeyColor
hi! link perlStatementNetwork    ChocolaKeyColor
hi! link perlStatementNumeric    ChocolaKeyColor
hi! link perlStatementProc       ChocolaKeyColor
hi! link perlStatementPword      ChocolaKeyColor
hi! link perlStatementRegexp     ChocolaKeyColor
hi! link perlStatementScalar     ChocolaKeyColor
hi! link perlStatementSocket     ChocolaKeyColor
hi! link perlStatementTime       ChocolaKeyColor
hi! link perlStatementVector     ChocolaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd ChocolaRed
endif

" Signatures
hi! link perlSignature           ChocolaParameterItalic
hi! link perlSubPrototype        ChocolaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName ChocolaConstants
