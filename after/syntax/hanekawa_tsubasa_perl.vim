if hanekawa_tsubasa#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       HanekawaTsubasaRed

" Builtin functions
hi! link perlOperator            HanekawaTsubasaKeyColor
hi! link perlStatementFiledesc   HanekawaTsubasaKeyColor
hi! link perlStatementFiles      HanekawaTsubasaKeyColor
hi! link perlStatementFlow       HanekawaTsubasaKeyColor
hi! link perlStatementHash       HanekawaTsubasaKeyColor
hi! link perlStatementIOfunc     HanekawaTsubasaKeyColor
hi! link perlStatementIPC        HanekawaTsubasaKeyColor
hi! link perlStatementList       HanekawaTsubasaKeyColor
hi! link perlStatementMisc       HanekawaTsubasaKeyColor
hi! link perlStatementNetwork    HanekawaTsubasaKeyColor
hi! link perlStatementNumeric    HanekawaTsubasaKeyColor
hi! link perlStatementProc       HanekawaTsubasaKeyColor
hi! link perlStatementPword      HanekawaTsubasaKeyColor
hi! link perlStatementRegexp     HanekawaTsubasaKeyColor
hi! link perlStatementScalar     HanekawaTsubasaKeyColor
hi! link perlStatementSocket     HanekawaTsubasaKeyColor
hi! link perlStatementTime       HanekawaTsubasaKeyColor
hi! link perlStatementVector     HanekawaTsubasaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd HanekawaTsubasaRed
endif

" Signatures
hi! link perlSignature           HanekawaTsubasaParameterItalic
hi! link perlSubPrototype        HanekawaTsubasaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName HanekawaTsubasaConstants
