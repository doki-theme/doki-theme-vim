if {{themeName}}#should_abort('ocaml')
    finish
endif

hi! link ocamlModule  Type
hi! link ocamlModPath Normal
hi! link ocamlLabel   {{themeProperName}}ParameterItalic
