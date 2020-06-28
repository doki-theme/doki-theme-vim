if natsuki_dark#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     NatsukiDarkRed
hi! link shParen      NONE
hi! link shParenError NONE
