if {{themeName}}#should_abort('lua')
    finish
endif

hi! link luaFunc  {{themeProperName}}KeyColor
hi! link luaTable {{themeProperName}}Fg
