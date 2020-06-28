if darkness_light#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCommandSub NONE
hi! link shEscape     DarknessLightRed
hi! link shParen      NONE
hi! link shParenError NONE
