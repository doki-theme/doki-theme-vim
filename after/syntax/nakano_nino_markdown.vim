if nakano_nino#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       NakanoNinoParameterBold
  hi! link htmlBoldItalic NakanoNinoParameterBoldItalic
  hi! link htmlH1         NakanoNinoConstantsBold
  hi! link htmlItalic     NakanoNinoStringColorItalic
  hi! link mkdBlockquote  NakanoNinoStringColorItalic
  hi! link mkdBold        NakanoNinoParameterBold
  hi! link mkdBoldItalic  NakanoNinoParameterBoldItalic
  hi! link mkdCode        NakanoNinoClassName
  hi! link mkdCodeEnd     NakanoNinoClassName
  hi! link mkdCodeStart   NakanoNinoClassName
  hi! link mkdHeading     NakanoNinoConstantsBold
  hi! link mkdInlineUrl   NakanoNinoLink
  hi! link mkdItalic      NakanoNinoStringColorItalic
  hi! link mkdLink        NakanoNinoKeyword
  hi! link mkdListItem    NakanoNinoKeyColor
  hi! link mkdRule        NakanoNinoComment
  hi! link mkdUrl         NakanoNinoLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        NakanoNinoKeyColor
  hi! link markdownBold              NakanoNinoParameterBold
  hi! link markdownBoldItalic        NakanoNinoParameterBoldItalic
  hi! link markdownCodeBlock         NakanoNinoClassName
  hi! link markdownCode              NakanoNinoClassName
  hi! link markdownCodeDelimiter     NakanoNinoClassName
  hi! link markdownH1                NakanoNinoConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            NakanoNinoStringColorItalic
  hi! link markdownLinkText          NakanoNinoKeyword
  hi! link markdownListMarker        NakanoNinoKeyColor
  hi! link markdownOrderedListMarker NakanoNinoKeyColor
  hi! link markdownRule              NakanoNinoComment
  hi! link markdownUrl               NakanoNinoLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
