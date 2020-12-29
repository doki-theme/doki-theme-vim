if makise_kurisu#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     MakiseKurisuRed
hi! link shParen      NONE
hi! link shParenError NONE
