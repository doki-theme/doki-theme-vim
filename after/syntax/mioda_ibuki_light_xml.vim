if mioda_ibuki_light#should_abort('xml')
    finish
endif

hi! link xmlAttrib  MiodaIbukiLightClassNameItalic
hi! link xmlEqual   Operator
hi! link xmlTag     Delimiter
hi! link xmlTagName Statement

" Fixes missing highlight over end tags
syn region xmlTagName
	\ matchgroup=xmlTag start=+</[^ /!?<>"']\@=+
	\ matchgroup=xmlTag end=+>+
