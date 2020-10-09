if rory_mercury#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     RoryMercuryRed
hi! link shParen      NONE
hi! link shParenError NONE
