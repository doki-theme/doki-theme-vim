if gasai_yuno#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     GasaiYunoRed
hi! link shParen      NONE
hi! link shParenError NONE
