if {{themeName}}#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown {{{1
  hi! link htmlBold       {{themeProperName}}ParameterBold
  hi! link htmlBoldItalic {{themeProperName}}ParameterBoldItalic
  hi! link htmlH1         {{themeProperName}}ConstantsBold
  hi! link htmlItalic     {{themeProperName}}StringColorItalic
  hi! link mkdBlockquote  {{themeProperName}}StringColorItalic
  hi! link mkdBold        {{themeProperName}}ParameterBold
  hi! link mkdBoldItalic  {{themeProperName}}ParameterBoldItalic
  hi! link mkdCode        {{themeProperName}}ClassName
  hi! link mkdCodeEnd     {{themeProperName}}ClassName
  hi! link mkdCodeStart   {{themeProperName}}ClassName
  hi! link mkdHeading     {{themeProperName}}ConstantsBold
  hi! link mkdInlineUrl   {{themeProperName}}Link
  hi! link mkdItalic      {{themeProperName}}StringColorItalic
  hi! link mkdLink        {{themeProperName}}Keyword
  hi! link mkdListItem    {{themeProperName}}KeyColor
  hi! link mkdRule        {{themeProperName}}Comment
  hi! link mkdUrl         {{themeProperName}}Link
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: {{{1
  hi! link markdownBlockquote        {{themeProperName}}KeyColor
  hi! link markdownBold              {{themeProperName}}ParameterBold
  hi! link markdownBoldItalic        {{themeProperName}}ParameterBoldItalic
  hi! link markdownCodeBlock         {{themeProperName}}ClassName
  hi! link markdownCode              {{themeProperName}}ClassName
  hi! link markdownCodeDelimiter     {{themeProperName}}ClassName
  hi! link markdownH1                {{themeProperName}}ConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            {{themeProperName}}StringColorItalic
  hi! link markdownLinkText          {{themeProperName}}Keyword
  hi! link markdownListMarker        {{themeProperName}}KeyColor
  hi! link markdownOrderedListMarker {{themeProperName}}KeyColor
  hi! link markdownRule              {{themeProperName}}Comment
  hi! link markdownUrl               {{themeProperName}}Link
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
