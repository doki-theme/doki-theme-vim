if nakano_miku#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     NakanoMikuRed
hi! link shParen      NONE
hi! link shParenError NONE
