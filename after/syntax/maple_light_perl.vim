if maple_light#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       MapleLightRed

" Builtin functions
hi! link perlOperator            MapleLightKeyColor
hi! link perlStatementFiledesc   MapleLightKeyColor
hi! link perlStatementFiles      MapleLightKeyColor
hi! link perlStatementFlow       MapleLightKeyColor
hi! link perlStatementHash       MapleLightKeyColor
hi! link perlStatementIOfunc     MapleLightKeyColor
hi! link perlStatementIPC        MapleLightKeyColor
hi! link perlStatementList       MapleLightKeyColor
hi! link perlStatementMisc       MapleLightKeyColor
hi! link perlStatementNetwork    MapleLightKeyColor
hi! link perlStatementNumeric    MapleLightKeyColor
hi! link perlStatementProc       MapleLightKeyColor
hi! link perlStatementPword      MapleLightKeyColor
hi! link perlStatementRegexp     MapleLightKeyColor
hi! link perlStatementScalar     MapleLightKeyColor
hi! link perlStatementSocket     MapleLightKeyColor
hi! link perlStatementTime       MapleLightKeyColor
hi! link perlStatementVector     MapleLightKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd MapleLightRed
endif

" Signatures
hi! link perlSignature           MapleLightParameterItalic
hi! link perlSubPrototype        MapleLightParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName MapleLightConstants
