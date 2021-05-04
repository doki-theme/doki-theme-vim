if gray#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       GrayParameterBold
  hi! link htmlBoldItalic GrayParameterBoldItalic
  hi! link htmlH1         GrayConstantsBold
  hi! link htmlItalic     GrayStringColorItalic
  hi! link mkdBlockquote  GrayStringColorItalic
  hi! link mkdBold        GrayParameterBold
  hi! link mkdBoldItalic  GrayParameterBoldItalic
  hi! link mkdCode        GrayClassName
  hi! link mkdCodeEnd     GrayClassName
  hi! link mkdCodeStart   GrayClassName
  hi! link mkdHeading     GrayConstantsBold
  hi! link mkdInlineUrl   GrayLink
  hi! link mkdItalic      GrayStringColorItalic
  hi! link mkdLink        GrayKeyword
  hi! link mkdListItem    GrayKeyColor
  hi! link mkdRule        GrayComment
  hi! link mkdUrl         GrayLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        GrayKeyColor
  hi! link markdownBold              GrayParameterBold
  hi! link markdownBoldItalic        GrayParameterBoldItalic
  hi! link markdownCodeBlock         GrayClassName
  hi! link markdownCode              GrayClassName
  hi! link markdownCodeDelimiter     GrayClassName
  hi! link markdownH1                GrayConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            GrayStringColorItalic
  hi! link markdownLinkText          GrayKeyword
  hi! link markdownListMarker        GrayKeyColor
  hi! link markdownOrderedListMarker GrayKeyColor
  hi! link markdownRule              GrayComment
  hi! link markdownUrl               GrayLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
