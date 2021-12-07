if essex#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       EssexRed

" Builtin functions
hi! link perlOperator            EssexKeyColor
hi! link perlStatementFiledesc   EssexKeyColor
hi! link perlStatementFiles      EssexKeyColor
hi! link perlStatementFlow       EssexKeyColor
hi! link perlStatementHash       EssexKeyColor
hi! link perlStatementIOfunc     EssexKeyColor
hi! link perlStatementIPC        EssexKeyColor
hi! link perlStatementList       EssexKeyColor
hi! link perlStatementMisc       EssexKeyColor
hi! link perlStatementNetwork    EssexKeyColor
hi! link perlStatementNumeric    EssexKeyColor
hi! link perlStatementProc       EssexKeyColor
hi! link perlStatementPword      EssexKeyColor
hi! link perlStatementRegexp     EssexKeyColor
hi! link perlStatementScalar     EssexKeyColor
hi! link perlStatementSocket     EssexKeyColor
hi! link perlStatementTime       EssexKeyColor
hi! link perlStatementVector     EssexKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd EssexRed
endif

" Signatures
hi! link perlSignature           EssexParameterItalic
hi! link perlSubPrototype        EssexParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName EssexConstants
