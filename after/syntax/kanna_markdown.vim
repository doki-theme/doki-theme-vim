if kanna#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       KannaParameterBold
  hi! link htmlBoldItalic KannaParameterBoldItalic
  hi! link htmlH1         KannaConstantsBold
  hi! link htmlItalic     KannaStringColorItalic
  hi! link mkdBlockquote  KannaStringColorItalic
  hi! link mkdBold        KannaParameterBold
  hi! link mkdBoldItalic  KannaParameterBoldItalic
  hi! link mkdCode        KannaClassName
  hi! link mkdCodeEnd     KannaClassName
  hi! link mkdCodeStart   KannaClassName
  hi! link mkdHeading     KannaConstantsBold
  hi! link mkdInlineUrl   KannaLink
  hi! link mkdItalic      KannaStringColorItalic
  hi! link mkdLink        KannaKeyword
  hi! link mkdListItem    KannaKeyColor
  hi! link mkdRule        KannaComment
  hi! link mkdUrl         KannaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        KannaKeyColor
  hi! link markdownBold              KannaParameterBold
  hi! link markdownBoldItalic        KannaParameterBoldItalic
  hi! link markdownCodeBlock         KannaClassName
  hi! link markdownCode              KannaClassName
  hi! link markdownCodeDelimiter     KannaClassName
  hi! link markdownH1                KannaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            KannaStringColorItalic
  hi! link markdownLinkText          KannaKeyword
  hi! link markdownListMarker        KannaKeyColor
  hi! link markdownOrderedListMarker KannaKeyColor
  hi! link markdownRule              KannaComment
  hi! link markdownUrl               KannaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
