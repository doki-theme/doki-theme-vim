if echidna#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       EchidnaRed

" Builtin functions
hi! link perlOperator            EchidnaKeyColor
hi! link perlStatementFiledesc   EchidnaKeyColor
hi! link perlStatementFiles      EchidnaKeyColor
hi! link perlStatementFlow       EchidnaKeyColor
hi! link perlStatementHash       EchidnaKeyColor
hi! link perlStatementIOfunc     EchidnaKeyColor
hi! link perlStatementIPC        EchidnaKeyColor
hi! link perlStatementList       EchidnaKeyColor
hi! link perlStatementMisc       EchidnaKeyColor
hi! link perlStatementNetwork    EchidnaKeyColor
hi! link perlStatementNumeric    EchidnaKeyColor
hi! link perlStatementProc       EchidnaKeyColor
hi! link perlStatementPword      EchidnaKeyColor
hi! link perlStatementRegexp     EchidnaKeyColor
hi! link perlStatementScalar     EchidnaKeyColor
hi! link perlStatementSocket     EchidnaKeyColor
hi! link perlStatementTime       EchidnaKeyColor
hi! link perlStatementVector     EchidnaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd EchidnaRed
endif

" Signatures
hi! link perlSignature           EchidnaParameterItalic
hi! link perlSubPrototype        EchidnaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName EchidnaConstants
