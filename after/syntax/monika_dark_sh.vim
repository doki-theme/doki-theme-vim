if monika_dark#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     MonikaDarkRed
hi! link shParen      NONE
hi! link shParenError NONE
