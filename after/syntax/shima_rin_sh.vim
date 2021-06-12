if shima_rin#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     ShimaRinRed
hi! link shParen      NONE
hi! link shParenError NONE
