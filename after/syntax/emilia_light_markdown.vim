if emilia_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       EmiliaLightParameterBold
  hi! link htmlBoldItalic EmiliaLightParameterBoldItalic
  hi! link htmlH1         EmiliaLightConstantsBold
  hi! link htmlItalic     EmiliaLightStringColorItalic
  hi! link mkdBlockquote  EmiliaLightStringColorItalic
  hi! link mkdBold        EmiliaLightParameterBold
  hi! link mkdBoldItalic  EmiliaLightParameterBoldItalic
  hi! link mkdCode        EmiliaLightClassName
  hi! link mkdCodeEnd     EmiliaLightClassName
  hi! link mkdCodeStart   EmiliaLightClassName
  hi! link mkdHeading     EmiliaLightConstantsBold
  hi! link mkdInlineUrl   EmiliaLightLink
  hi! link mkdItalic      EmiliaLightStringColorItalic
  hi! link mkdLink        EmiliaLightKeyword
  hi! link mkdListItem    EmiliaLightKeyColor
  hi! link mkdRule        EmiliaLightComment
  hi! link mkdUrl         EmiliaLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        EmiliaLightKeyColor
  hi! link markdownBold              EmiliaLightParameterBold
  hi! link markdownBoldItalic        EmiliaLightParameterBoldItalic
  hi! link markdownCodeBlock         EmiliaLightClassName
  hi! link markdownCode              EmiliaLightClassName
  hi! link markdownCodeDelimiter     EmiliaLightClassName
  hi! link markdownH1                EmiliaLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            EmiliaLightStringColorItalic
  hi! link markdownLinkText          EmiliaLightKeyword
  hi! link markdownListMarker        EmiliaLightKeyColor
  hi! link markdownOrderedListMarker EmiliaLightKeyColor
  hi! link markdownRule              EmiliaLightComment
  hi! link markdownUrl               EmiliaLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
