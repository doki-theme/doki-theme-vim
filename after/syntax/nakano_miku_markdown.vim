if nakano_miku#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       NakanoMikuParameterBold
  hi! link htmlBoldItalic NakanoMikuParameterBoldItalic
  hi! link htmlH1         NakanoMikuConstantsBold
  hi! link htmlItalic     NakanoMikuStringColorItalic
  hi! link mkdBlockquote  NakanoMikuStringColorItalic
  hi! link mkdBold        NakanoMikuParameterBold
  hi! link mkdBoldItalic  NakanoMikuParameterBoldItalic
  hi! link mkdCode        NakanoMikuClassName
  hi! link mkdCodeEnd     NakanoMikuClassName
  hi! link mkdCodeStart   NakanoMikuClassName
  hi! link mkdHeading     NakanoMikuConstantsBold
  hi! link mkdInlineUrl   NakanoMikuLink
  hi! link mkdItalic      NakanoMikuStringColorItalic
  hi! link mkdLink        NakanoMikuKeyword
  hi! link mkdListItem    NakanoMikuKeyColor
  hi! link mkdRule        NakanoMikuComment
  hi! link mkdUrl         NakanoMikuLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        NakanoMikuKeyColor
  hi! link markdownBold              NakanoMikuParameterBold
  hi! link markdownBoldItalic        NakanoMikuParameterBoldItalic
  hi! link markdownCodeBlock         NakanoMikuClassName
  hi! link markdownCode              NakanoMikuClassName
  hi! link markdownCodeDelimiter     NakanoMikuClassName
  hi! link markdownH1                NakanoMikuConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            NakanoMikuStringColorItalic
  hi! link markdownLinkText          NakanoMikuKeyword
  hi! link markdownListMarker        NakanoMikuKeyColor
  hi! link markdownOrderedListMarker NakanoMikuKeyColor
  hi! link markdownRule              NakanoMikuComment
  hi! link markdownUrl               NakanoMikuLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
