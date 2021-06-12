if shima_rin#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       ShimaRinRed

" Builtin functions
hi! link perlOperator            ShimaRinKeyColor
hi! link perlStatementFiledesc   ShimaRinKeyColor
hi! link perlStatementFiles      ShimaRinKeyColor
hi! link perlStatementFlow       ShimaRinKeyColor
hi! link perlStatementHash       ShimaRinKeyColor
hi! link perlStatementIOfunc     ShimaRinKeyColor
hi! link perlStatementIPC        ShimaRinKeyColor
hi! link perlStatementList       ShimaRinKeyColor
hi! link perlStatementMisc       ShimaRinKeyColor
hi! link perlStatementNetwork    ShimaRinKeyColor
hi! link perlStatementNumeric    ShimaRinKeyColor
hi! link perlStatementProc       ShimaRinKeyColor
hi! link perlStatementPword      ShimaRinKeyColor
hi! link perlStatementRegexp     ShimaRinKeyColor
hi! link perlStatementScalar     ShimaRinKeyColor
hi! link perlStatementSocket     ShimaRinKeyColor
hi! link perlStatementTime       ShimaRinKeyColor
hi! link perlStatementVector     ShimaRinKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd ShimaRinRed
endif

" Signatures
hi! link perlSignature           ShimaRinParameterItalic
hi! link perlSubPrototype        ShimaRinParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName ShimaRinConstants
