if emilia_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       EmiliaDarkParameterBold
  hi! link htmlBoldItalic EmiliaDarkParameterBoldItalic
  hi! link htmlH1         EmiliaDarkConstantsBold
  hi! link htmlItalic     EmiliaDarkStringColorItalic
  hi! link mkdBlockquote  EmiliaDarkStringColorItalic
  hi! link mkdBold        EmiliaDarkParameterBold
  hi! link mkdBoldItalic  EmiliaDarkParameterBoldItalic
  hi! link mkdCode        EmiliaDarkClassName
  hi! link mkdCodeEnd     EmiliaDarkClassName
  hi! link mkdCodeStart   EmiliaDarkClassName
  hi! link mkdHeading     EmiliaDarkConstantsBold
  hi! link mkdInlineUrl   EmiliaDarkLink
  hi! link mkdItalic      EmiliaDarkStringColorItalic
  hi! link mkdLink        EmiliaDarkKeyword
  hi! link mkdListItem    EmiliaDarkKeyColor
  hi! link mkdRule        EmiliaDarkComment
  hi! link mkdUrl         EmiliaDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        EmiliaDarkKeyColor
  hi! link markdownBold              EmiliaDarkParameterBold
  hi! link markdownBoldItalic        EmiliaDarkParameterBoldItalic
  hi! link markdownCodeBlock         EmiliaDarkClassName
  hi! link markdownCode              EmiliaDarkClassName
  hi! link markdownCodeDelimiter     EmiliaDarkClassName
  hi! link markdownH1                EmiliaDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            EmiliaDarkStringColorItalic
  hi! link markdownLinkText          EmiliaDarkKeyword
  hi! link markdownListMarker        EmiliaDarkKeyColor
  hi! link markdownOrderedListMarker EmiliaDarkKeyColor
  hi! link markdownRule              EmiliaDarkComment
  hi! link markdownUrl               EmiliaDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
