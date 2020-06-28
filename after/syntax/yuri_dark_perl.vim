if yuri_dark#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       YuriDarkRed

" Builtin functions
hi! link perlOperator            YuriDarkKeyColor
hi! link perlStatementFiledesc   YuriDarkKeyColor
hi! link perlStatementFiles      YuriDarkKeyColor
hi! link perlStatementFlow       YuriDarkKeyColor
hi! link perlStatementHash       YuriDarkKeyColor
hi! link perlStatementIOfunc     YuriDarkKeyColor
hi! link perlStatementIPC        YuriDarkKeyColor
hi! link perlStatementList       YuriDarkKeyColor
hi! link perlStatementMisc       YuriDarkKeyColor
hi! link perlStatementNetwork    YuriDarkKeyColor
hi! link perlStatementNumeric    YuriDarkKeyColor
hi! link perlStatementProc       YuriDarkKeyColor
hi! link perlStatementPword      YuriDarkKeyColor
hi! link perlStatementRegexp     YuriDarkKeyColor
hi! link perlStatementScalar     YuriDarkKeyColor
hi! link perlStatementSocket     YuriDarkKeyColor
hi! link perlStatementTime       YuriDarkKeyColor
hi! link perlStatementVector     YuriDarkKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd YuriDarkRed
endif

" Signatures
hi! link perlSignature           YuriDarkParameterItalic
hi! link perlSubPrototype        YuriDarkParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName YuriDarkConstants
