if {{themeName}}#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          {{themeProperName}}ParameterItalic
hi! link rubyBlockParameter         {{themeProperName}}ParameterItalic
hi! link rubyCurlyBlock             {{themeProperName}}Keyword
hi! link rubyGlobalVariable         {{themeProperName}}Constants
hi! link rubyInstanceVariable       {{themeProperName}}ConstantsItalic
hi! link rubyInterpolationDelimiter {{themeProperName}}Keyword
hi! link rubyRegexpDelimiter        {{themeProperName}}Red
hi! link rubyStringDelimiter        {{themeProperName}}StringColor
