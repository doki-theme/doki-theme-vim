if essex#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     EssexRed
hi! link shParen      NONE
hi! link shParenError NONE
