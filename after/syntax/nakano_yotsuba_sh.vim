if nakano_yotsuba#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     NakanoYotsubaRed
hi! link shParen      NONE
hi! link shParenError NONE
