if beatrice#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       BeatriceRed

" Builtin functions
hi! link perlOperator            BeatriceKeyColor
hi! link perlStatementFiledesc   BeatriceKeyColor
hi! link perlStatementFiles      BeatriceKeyColor
hi! link perlStatementFlow       BeatriceKeyColor
hi! link perlStatementHash       BeatriceKeyColor
hi! link perlStatementIOfunc     BeatriceKeyColor
hi! link perlStatementIPC        BeatriceKeyColor
hi! link perlStatementList       BeatriceKeyColor
hi! link perlStatementMisc       BeatriceKeyColor
hi! link perlStatementNetwork    BeatriceKeyColor
hi! link perlStatementNumeric    BeatriceKeyColor
hi! link perlStatementProc       BeatriceKeyColor
hi! link perlStatementPword      BeatriceKeyColor
hi! link perlStatementRegexp     BeatriceKeyColor
hi! link perlStatementScalar     BeatriceKeyColor
hi! link perlStatementSocket     BeatriceKeyColor
hi! link perlStatementTime       BeatriceKeyColor
hi! link perlStatementVector     BeatriceKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd BeatriceRed
endif

" Signatures
hi! link perlSignature           BeatriceParameterItalic
hi! link perlSubPrototype        BeatriceParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName BeatriceConstants
