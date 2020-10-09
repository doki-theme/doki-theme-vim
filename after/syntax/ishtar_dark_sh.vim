if ishtar_dark#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     IshtarDarkRed
hi! link shParen      NONE
hi! link shParenError NONE
