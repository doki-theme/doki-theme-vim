if hatsune_miku#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       HatsuneMikuRed

" Builtin functions
hi! link perlOperator            HatsuneMikuKeyColor
hi! link perlStatementFiledesc   HatsuneMikuKeyColor
hi! link perlStatementFiles      HatsuneMikuKeyColor
hi! link perlStatementFlow       HatsuneMikuKeyColor
hi! link perlStatementHash       HatsuneMikuKeyColor
hi! link perlStatementIOfunc     HatsuneMikuKeyColor
hi! link perlStatementIPC        HatsuneMikuKeyColor
hi! link perlStatementList       HatsuneMikuKeyColor
hi! link perlStatementMisc       HatsuneMikuKeyColor
hi! link perlStatementNetwork    HatsuneMikuKeyColor
hi! link perlStatementNumeric    HatsuneMikuKeyColor
hi! link perlStatementProc       HatsuneMikuKeyColor
hi! link perlStatementPword      HatsuneMikuKeyColor
hi! link perlStatementRegexp     HatsuneMikuKeyColor
hi! link perlStatementScalar     HatsuneMikuKeyColor
hi! link perlStatementSocket     HatsuneMikuKeyColor
hi! link perlStatementTime       HatsuneMikuKeyColor
hi! link perlStatementVector     HatsuneMikuKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd HatsuneMikuRed
endif

" Signatures
hi! link perlSignature           HatsuneMikuParameterItalic
hi! link perlSubPrototype        HatsuneMikuParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName HatsuneMikuConstants
