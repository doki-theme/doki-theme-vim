if miia#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MiiaRed

" Builtin functions
hi! link perlOperator            MiiaKeyColor
hi! link perlStatementFiledesc   MiiaKeyColor
hi! link perlStatementFiles      MiiaKeyColor
hi! link perlStatementFlow       MiiaKeyColor
hi! link perlStatementHash       MiiaKeyColor
hi! link perlStatementIOfunc     MiiaKeyColor
hi! link perlStatementIPC        MiiaKeyColor
hi! link perlStatementList       MiiaKeyColor
hi! link perlStatementMisc       MiiaKeyColor
hi! link perlStatementNetwork    MiiaKeyColor
hi! link perlStatementNumeric    MiiaKeyColor
hi! link perlStatementProc       MiiaKeyColor
hi! link perlStatementPword      MiiaKeyColor
hi! link perlStatementRegexp     MiiaKeyColor
hi! link perlStatementScalar     MiiaKeyColor
hi! link perlStatementSocket     MiiaKeyColor
hi! link perlStatementTime       MiiaKeyColor
hi! link perlStatementVector     MiiaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MiiaRed
endif

" Signatures
hi! link perlSignature           MiiaParameterItalic
hi! link perlSubPrototype        MiiaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MiiaConstants
