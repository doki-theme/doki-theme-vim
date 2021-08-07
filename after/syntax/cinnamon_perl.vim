if cinnamon#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       CinnamonRed

" Builtin functions
hi! link perlOperator            CinnamonKeyColor
hi! link perlStatementFiledesc   CinnamonKeyColor
hi! link perlStatementFiles      CinnamonKeyColor
hi! link perlStatementFlow       CinnamonKeyColor
hi! link perlStatementHash       CinnamonKeyColor
hi! link perlStatementIOfunc     CinnamonKeyColor
hi! link perlStatementIPC        CinnamonKeyColor
hi! link perlStatementList       CinnamonKeyColor
hi! link perlStatementMisc       CinnamonKeyColor
hi! link perlStatementNetwork    CinnamonKeyColor
hi! link perlStatementNumeric    CinnamonKeyColor
hi! link perlStatementProc       CinnamonKeyColor
hi! link perlStatementPword      CinnamonKeyColor
hi! link perlStatementRegexp     CinnamonKeyColor
hi! link perlStatementScalar     CinnamonKeyColor
hi! link perlStatementSocket     CinnamonKeyColor
hi! link perlStatementTime       CinnamonKeyColor
hi! link perlStatementVector     CinnamonKeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd CinnamonRed
endif

" Signatures
hi! link perlSignature           CinnamonParameterItalic
hi! link perlSubPrototype        CinnamonParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName CinnamonConstants
