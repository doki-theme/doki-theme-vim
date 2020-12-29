if yukinoshita_yukino#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       YukinoshitaYukinoRed

" Builtin functions
hi! link perlOperator            YukinoshitaYukinoKeyColor
hi! link perlStatementFiledesc   YukinoshitaYukinoKeyColor
hi! link perlStatementFiles      YukinoshitaYukinoKeyColor
hi! link perlStatementFlow       YukinoshitaYukinoKeyColor
hi! link perlStatementHash       YukinoshitaYukinoKeyColor
hi! link perlStatementIOfunc     YukinoshitaYukinoKeyColor
hi! link perlStatementIPC        YukinoshitaYukinoKeyColor
hi! link perlStatementList       YukinoshitaYukinoKeyColor
hi! link perlStatementMisc       YukinoshitaYukinoKeyColor
hi! link perlStatementNetwork    YukinoshitaYukinoKeyColor
hi! link perlStatementNumeric    YukinoshitaYukinoKeyColor
hi! link perlStatementProc       YukinoshitaYukinoKeyColor
hi! link perlStatementPword      YukinoshitaYukinoKeyColor
hi! link perlStatementRegexp     YukinoshitaYukinoKeyColor
hi! link perlStatementScalar     YukinoshitaYukinoKeyColor
hi! link perlStatementSocket     YukinoshitaYukinoKeyColor
hi! link perlStatementTime       YukinoshitaYukinoKeyColor
hi! link perlStatementVector     YukinoshitaYukinoKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd YukinoshitaYukinoRed
endif

" Signatures
hi! link perlSignature           YukinoshitaYukinoParameterItalic
hi! link perlSubPrototype        YukinoshitaYukinoParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName YukinoshitaYukinoConstants
