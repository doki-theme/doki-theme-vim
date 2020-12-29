if katsuragi_misato#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       KatsuragiMisatoRed

" Builtin functions
hi! link perlOperator            KatsuragiMisatoKeyColor
hi! link perlStatementFiledesc   KatsuragiMisatoKeyColor
hi! link perlStatementFiles      KatsuragiMisatoKeyColor
hi! link perlStatementFlow       KatsuragiMisatoKeyColor
hi! link perlStatementHash       KatsuragiMisatoKeyColor
hi! link perlStatementIOfunc     KatsuragiMisatoKeyColor
hi! link perlStatementIPC        KatsuragiMisatoKeyColor
hi! link perlStatementList       KatsuragiMisatoKeyColor
hi! link perlStatementMisc       KatsuragiMisatoKeyColor
hi! link perlStatementNetwork    KatsuragiMisatoKeyColor
hi! link perlStatementNumeric    KatsuragiMisatoKeyColor
hi! link perlStatementProc       KatsuragiMisatoKeyColor
hi! link perlStatementPword      KatsuragiMisatoKeyColor
hi! link perlStatementRegexp     KatsuragiMisatoKeyColor
hi! link perlStatementScalar     KatsuragiMisatoKeyColor
hi! link perlStatementSocket     KatsuragiMisatoKeyColor
hi! link perlStatementTime       KatsuragiMisatoKeyColor
hi! link perlStatementVector     KatsuragiMisatoKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd KatsuragiMisatoRed
endif

" Signatures
hi! link perlSignature           KatsuragiMisatoParameterItalic
hi! link perlSubPrototype        KatsuragiMisatoParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName KatsuragiMisatoConstants
