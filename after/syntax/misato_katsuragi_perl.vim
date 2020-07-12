if misato_katsuragi#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MisatoKatsuragiRed

" Builtin functions
hi! link perlOperator            MisatoKatsuragiKeyColor
hi! link perlStatementFiledesc   MisatoKatsuragiKeyColor
hi! link perlStatementFiles      MisatoKatsuragiKeyColor
hi! link perlStatementFlow       MisatoKatsuragiKeyColor
hi! link perlStatementHash       MisatoKatsuragiKeyColor
hi! link perlStatementIOfunc     MisatoKatsuragiKeyColor
hi! link perlStatementIPC        MisatoKatsuragiKeyColor
hi! link perlStatementList       MisatoKatsuragiKeyColor
hi! link perlStatementMisc       MisatoKatsuragiKeyColor
hi! link perlStatementNetwork    MisatoKatsuragiKeyColor
hi! link perlStatementNumeric    MisatoKatsuragiKeyColor
hi! link perlStatementProc       MisatoKatsuragiKeyColor
hi! link perlStatementPword      MisatoKatsuragiKeyColor
hi! link perlStatementRegexp     MisatoKatsuragiKeyColor
hi! link perlStatementScalar     MisatoKatsuragiKeyColor
hi! link perlStatementSocket     MisatoKatsuragiKeyColor
hi! link perlStatementTime       MisatoKatsuragiKeyColor
hi! link perlStatementVector     MisatoKatsuragiKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MisatoKatsuragiRed
endif

" Signatures
hi! link perlSignature           MisatoKatsuragiParameterItalic
hi! link perlSubPrototype        MisatoKatsuragiParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MisatoKatsuragiConstants
