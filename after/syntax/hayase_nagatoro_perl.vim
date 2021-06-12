if hayase_nagatoro#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       HayaseNagatoroRed

" Builtin functions
hi! link perlOperator            HayaseNagatoroKeyColor
hi! link perlStatementFiledesc   HayaseNagatoroKeyColor
hi! link perlStatementFiles      HayaseNagatoroKeyColor
hi! link perlStatementFlow       HayaseNagatoroKeyColor
hi! link perlStatementHash       HayaseNagatoroKeyColor
hi! link perlStatementIOfunc     HayaseNagatoroKeyColor
hi! link perlStatementIPC        HayaseNagatoroKeyColor
hi! link perlStatementList       HayaseNagatoroKeyColor
hi! link perlStatementMisc       HayaseNagatoroKeyColor
hi! link perlStatementNetwork    HayaseNagatoroKeyColor
hi! link perlStatementNumeric    HayaseNagatoroKeyColor
hi! link perlStatementProc       HayaseNagatoroKeyColor
hi! link perlStatementPword      HayaseNagatoroKeyColor
hi! link perlStatementRegexp     HayaseNagatoroKeyColor
hi! link perlStatementScalar     HayaseNagatoroKeyColor
hi! link perlStatementSocket     HayaseNagatoroKeyColor
hi! link perlStatementTime       HayaseNagatoroKeyColor
hi! link perlStatementVector     HayaseNagatoroKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd HayaseNagatoroRed
endif

" Signatures
hi! link perlSignature           HayaseNagatoroParameterItalic
hi! link perlSubPrototype        HayaseNagatoroParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName HayaseNagatoroConstants
