if vanilla#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       VanillaRed

" Builtin functions
hi! link perlOperator            VanillaKeyColor
hi! link perlStatementFiledesc   VanillaKeyColor
hi! link perlStatementFiles      VanillaKeyColor
hi! link perlStatementFlow       VanillaKeyColor
hi! link perlStatementHash       VanillaKeyColor
hi! link perlStatementIOfunc     VanillaKeyColor
hi! link perlStatementIPC        VanillaKeyColor
hi! link perlStatementList       VanillaKeyColor
hi! link perlStatementMisc       VanillaKeyColor
hi! link perlStatementNetwork    VanillaKeyColor
hi! link perlStatementNumeric    VanillaKeyColor
hi! link perlStatementProc       VanillaKeyColor
hi! link perlStatementPword      VanillaKeyColor
hi! link perlStatementRegexp     VanillaKeyColor
hi! link perlStatementScalar     VanillaKeyColor
hi! link perlStatementSocket     VanillaKeyColor
hi! link perlStatementTime       VanillaKeyColor
hi! link perlStatementVector     VanillaKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd VanillaRed
endif

" Signatures
hi! link perlSignature           VanillaParameterItalic
hi! link perlSubPrototype        VanillaParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName VanillaConstants
