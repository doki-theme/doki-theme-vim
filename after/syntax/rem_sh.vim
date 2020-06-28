if rem#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     RemRed
hi! link shParen      NONE
hi! link shParenError NONE
