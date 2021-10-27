if jahy#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       JahyParameterBold
  hi! link htmlBoldItalic JahyParameterBoldItalic
  hi! link htmlH1         JahyConstantsBold
  hi! link htmlItalic     JahyStringColorItalic
  hi! link mkdBlockquote  JahyStringColorItalic
  hi! link mkdBold        JahyParameterBold
  hi! link mkdBoldItalic  JahyParameterBoldItalic
  hi! link mkdCode        JahyClassName
  hi! link mkdCodeEnd     JahyClassName
  hi! link mkdCodeStart   JahyClassName
  hi! link mkdHeading     JahyConstantsBold
  hi! link mkdInlineUrl   JahyLink
  hi! link mkdItalic      JahyStringColorItalic
  hi! link mkdLink        JahyKeyword
  hi! link mkdListItem    JahyKeyColor
  hi! link mkdRule        JahyComment
  hi! link mkdUrl         JahyLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        JahyKeyColor
  hi! link markdownBold              JahyParameterBold
  hi! link markdownBoldItalic        JahyParameterBoldItalic
  hi! link markdownCodeBlock         JahyClassName
  hi! link markdownCode              JahyClassName
  hi! link markdownCodeDelimiter     JahyClassName
  hi! link markdownH1                JahyConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            JahyStringColorItalic
  hi! link markdownLinkText          JahyKeyword
  hi! link markdownListMarker        JahyKeyColor
  hi! link markdownOrderedListMarker JahyKeyColor
  hi! link markdownRule              JahyComment
  hi! link markdownUrl               JahyLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
