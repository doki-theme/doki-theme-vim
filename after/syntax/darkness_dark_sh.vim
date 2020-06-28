if darkness_dark#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     DarknessDarkRed
hi! link shParen      NONE
hi! link shParenError NONE
