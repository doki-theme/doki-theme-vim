if vanilla#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     VanillaRed
hi! link shParen      NONE
hi! link shParenError NONE
