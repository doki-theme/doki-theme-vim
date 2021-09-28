if shigure#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       ShigureRed

" Builtin functions
hi! link perlOperator            ShigureKeyColor
hi! link perlStatementFiledesc   ShigureKeyColor
hi! link perlStatementFiles      ShigureKeyColor
hi! link perlStatementFlow       ShigureKeyColor
hi! link perlStatementHash       ShigureKeyColor
hi! link perlStatementIOfunc     ShigureKeyColor
hi! link perlStatementIPC        ShigureKeyColor
hi! link perlStatementList       ShigureKeyColor
hi! link perlStatementMisc       ShigureKeyColor
hi! link perlStatementNetwork    ShigureKeyColor
hi! link perlStatementNumeric    ShigureKeyColor
hi! link perlStatementProc       ShigureKeyColor
hi! link perlStatementPword      ShigureKeyColor
hi! link perlStatementRegexp     ShigureKeyColor
hi! link perlStatementScalar     ShigureKeyColor
hi! link perlStatementSocket     ShigureKeyColor
hi! link perlStatementTime       ShigureKeyColor
hi! link perlStatementVector     ShigureKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd ShigureRed
endif

" Signatures
hi! link perlSignature           ShigureParameterItalic
hi! link perlSubPrototype        ShigureParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName ShigureConstants
