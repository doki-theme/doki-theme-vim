if kirino#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     KirinoRed
hi! link shParen      NONE
hi! link shParenError NONE
