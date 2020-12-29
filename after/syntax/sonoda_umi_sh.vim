if sonoda_umi#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     SonodaUmiRed
hi! link shParen      NONE
hi! link shParenError NONE
