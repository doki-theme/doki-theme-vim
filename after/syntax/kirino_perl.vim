if kirino#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       KirinoRed

" Builtin functions
hi! link perlOperator            KirinoKeyColor
hi! link perlStatementFiledesc   KirinoKeyColor
hi! link perlStatementFiles      KirinoKeyColor
hi! link perlStatementFlow       KirinoKeyColor
hi! link perlStatementHash       KirinoKeyColor
hi! link perlStatementIOfunc     KirinoKeyColor
hi! link perlStatementIPC        KirinoKeyColor
hi! link perlStatementList       KirinoKeyColor
hi! link perlStatementMisc       KirinoKeyColor
hi! link perlStatementNetwork    KirinoKeyColor
hi! link perlStatementNumeric    KirinoKeyColor
hi! link perlStatementProc       KirinoKeyColor
hi! link perlStatementPword      KirinoKeyColor
hi! link perlStatementRegexp     KirinoKeyColor
hi! link perlStatementScalar     KirinoKeyColor
hi! link perlStatementSocket     KirinoKeyColor
hi! link perlStatementTime       KirinoKeyColor
hi! link perlStatementVector     KirinoKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd KirinoRed
endif

" Signatures
hi! link perlSignature           KirinoParameterItalic
hi! link perlSubPrototype        KirinoParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName KirinoConstants
