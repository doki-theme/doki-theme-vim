if asuna_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       AsunaDarkRed

" Builtin functions
hi! link perlOperator            AsunaDarkKeyColor
hi! link perlStatementFiledesc   AsunaDarkKeyColor
hi! link perlStatementFiles      AsunaDarkKeyColor
hi! link perlStatementFlow       AsunaDarkKeyColor
hi! link perlStatementHash       AsunaDarkKeyColor
hi! link perlStatementIOfunc     AsunaDarkKeyColor
hi! link perlStatementIPC        AsunaDarkKeyColor
hi! link perlStatementList       AsunaDarkKeyColor
hi! link perlStatementMisc       AsunaDarkKeyColor
hi! link perlStatementNetwork    AsunaDarkKeyColor
hi! link perlStatementNumeric    AsunaDarkKeyColor
hi! link perlStatementProc       AsunaDarkKeyColor
hi! link perlStatementPword      AsunaDarkKeyColor
hi! link perlStatementRegexp     AsunaDarkKeyColor
hi! link perlStatementScalar     AsunaDarkKeyColor
hi! link perlStatementSocket     AsunaDarkKeyColor
hi! link perlStatementTime       AsunaDarkKeyColor
hi! link perlStatementVector     AsunaDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd AsunaDarkRed
endif

" Signatures
hi! link perlSignature           AsunaDarkParameterItalic
hi! link perlSubPrototype        AsunaDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName AsunaDarkConstants
