if sayori_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       SayoriDarkRed

" Builtin functions
hi! link perlOperator            SayoriDarkKeyColor
hi! link perlStatementFiledesc   SayoriDarkKeyColor
hi! link perlStatementFiles      SayoriDarkKeyColor
hi! link perlStatementFlow       SayoriDarkKeyColor
hi! link perlStatementHash       SayoriDarkKeyColor
hi! link perlStatementIOfunc     SayoriDarkKeyColor
hi! link perlStatementIPC        SayoriDarkKeyColor
hi! link perlStatementList       SayoriDarkKeyColor
hi! link perlStatementMisc       SayoriDarkKeyColor
hi! link perlStatementNetwork    SayoriDarkKeyColor
hi! link perlStatementNumeric    SayoriDarkKeyColor
hi! link perlStatementProc       SayoriDarkKeyColor
hi! link perlStatementPword      SayoriDarkKeyColor
hi! link perlStatementRegexp     SayoriDarkKeyColor
hi! link perlStatementScalar     SayoriDarkKeyColor
hi! link perlStatementSocket     SayoriDarkKeyColor
hi! link perlStatementTime       SayoriDarkKeyColor
hi! link perlStatementVector     SayoriDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd SayoriDarkRed
endif

" Signatures
hi! link perlSignature           SayoriDarkParameterItalic
hi! link perlSubPrototype        SayoriDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName SayoriDarkConstants
