if nakano_nino#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     NakanoNinoRed
hi! link shParen      NONE
hi! link shParenError NONE
