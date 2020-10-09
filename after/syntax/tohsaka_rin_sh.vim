if tohsaka_rin#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     TohsakaRinRed
hi! link shParen      NONE
hi! link shParenError NONE
