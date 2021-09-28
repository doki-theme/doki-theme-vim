if shigure#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     ShigureRed
hi! link shParen      NONE
hi! link shParenError NONE
