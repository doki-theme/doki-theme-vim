if {{themeName}}#should_abort('json')
    finish
endif

hi! link jsonKeyword      {{themeProperName}}KeyColor
hi! link jsonKeywordMatch {{themeProperName}}Keyword
